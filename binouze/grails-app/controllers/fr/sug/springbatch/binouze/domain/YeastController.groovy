package fr.sug.springbatch.binouze.domain

class YeastController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [yeastInstanceList: Yeast.list(params), yeastInstanceTotal: Yeast.count()]
    }

    def create = {
        def yeastInstance = new Yeast()
        yeastInstance.properties = params
        return [yeastInstance: yeastInstance]
    }

    def save = {
        def yeastInstance = new Yeast(params)
        if (yeastInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'yeast.label', default: 'Yeast'), yeastInstance.id])}"
            redirect(action: "show", id: yeastInstance.id)
        }
        else {
            render(view: "create", model: [yeastInstance: yeastInstance])
        }
    }

    def show = {
        def yeastInstance = Yeast.get(params.id)
        if (!yeastInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'yeast.label', default: 'Yeast'), params.id])}"
            redirect(action: "list")
        }
        else {
            [yeastInstance: yeastInstance]
        }
    }

    def edit = {
        def yeastInstance = Yeast.get(params.id)
        if (!yeastInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'yeast.label', default: 'Yeast'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [yeastInstance: yeastInstance]
        }
    }

    def update = {
        def yeastInstance = Yeast.get(params.id)
        if (yeastInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (yeastInstance.version > version) {
                    
                    yeastInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'yeast.label', default: 'Yeast')] as Object[], "Another user has updated this Yeast while you were editing")
                    render(view: "edit", model: [yeastInstance: yeastInstance])
                    return
                }
            }
            yeastInstance.properties = params
            if (!yeastInstance.hasErrors() && yeastInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'yeast.label', default: 'Yeast'), yeastInstance.id])}"
                redirect(action: "show", id: yeastInstance.id)
            }
            else {
                render(view: "edit", model: [yeastInstance: yeastInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'yeast.label', default: 'Yeast'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def yeastInstance = Yeast.get(params.id)
        if (yeastInstance) {
            try {
                yeastInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'yeast.label', default: 'Yeast'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'yeast.label', default: 'Yeast'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'yeast.label', default: 'Yeast'), params.id])}"
            redirect(action: "list")
        }
    }
}
