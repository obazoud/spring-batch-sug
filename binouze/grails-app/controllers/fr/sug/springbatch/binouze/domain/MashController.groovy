package fr.sug.springbatch.binouze.domain

class MashController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [mashInstanceList: Mash.list(params), mashInstanceTotal: Mash.count()]
    }

    def create = {
        def mashInstance = new Mash()
        mashInstance.properties = params
        return [mashInstance: mashInstance]
    }

    def save = {
        def mashInstance = new Mash(params)
        if (mashInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'mash.label', default: 'Mash'), mashInstance.id])}"
            redirect(action: "show", id: mashInstance.id)
        }
        else {
            render(view: "create", model: [mashInstance: mashInstance])
        }
    }

    def show = {
        def mashInstance = Mash.get(params.id)
        if (!mashInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mash.label', default: 'Mash'), params.id])}"
            redirect(action: "list")
        }
        else {
            [mashInstance: mashInstance]
        }
    }

    def edit = {
        def mashInstance = Mash.get(params.id)
        if (!mashInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mash.label', default: 'Mash'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [mashInstance: mashInstance]
        }
    }

    def update = {
        def mashInstance = Mash.get(params.id)
        if (mashInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (mashInstance.version > version) {
                    
                    mashInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'mash.label', default: 'Mash')] as Object[], "Another user has updated this Mash while you were editing")
                    render(view: "edit", model: [mashInstance: mashInstance])
                    return
                }
            }
            mashInstance.properties = params
            if (!mashInstance.hasErrors() && mashInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'mash.label', default: 'Mash'), mashInstance.id])}"
                redirect(action: "show", id: mashInstance.id)
            }
            else {
                render(view: "edit", model: [mashInstance: mashInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mash.label', default: 'Mash'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def mashInstance = Mash.get(params.id)
        if (mashInstance) {
            try {
                mashInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'mash.label', default: 'Mash'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'mash.label', default: 'Mash'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mash.label', default: 'Mash'), params.id])}"
            redirect(action: "list")
        }
    }
}
