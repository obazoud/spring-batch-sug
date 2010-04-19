package fr.sug.springbatch.binouze.domain

class HopController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [hopInstanceList: Hop.list(params), hopInstanceTotal: Hop.count()]
    }

    def create = {
        def hopInstance = new Hop()
        hopInstance.properties = params
        return [hopInstance: hopInstance]
    }

    def save = {
        def hopInstance = new Hop(params)
        if (hopInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'hop.label', default: 'Hop'), hopInstance.id])}"
            redirect(action: "show", id: hopInstance.id)
        }
        else {
            render(view: "create", model: [hopInstance: hopInstance])
        }
    }

    def show = {
        def hopInstance = Hop.get(params.id)
        if (!hopInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'hop.label', default: 'Hop'), params.id])}"
            redirect(action: "list")
        }
        else {
            [hopInstance: hopInstance]
        }
    }

    def edit = {
        def hopInstance = Hop.get(params.id)
        if (!hopInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'hop.label', default: 'Hop'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [hopInstance: hopInstance]
        }
    }

    def update = {
        def hopInstance = Hop.get(params.id)
        if (hopInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (hopInstance.version > version) {
                    
                    hopInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'hop.label', default: 'Hop')] as Object[], "Another user has updated this Hop while you were editing")
                    render(view: "edit", model: [hopInstance: hopInstance])
                    return
                }
            }
            hopInstance.properties = params
            if (!hopInstance.hasErrors() && hopInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'hop.label', default: 'Hop'), hopInstance.id])}"
                redirect(action: "show", id: hopInstance.id)
            }
            else {
                render(view: "edit", model: [hopInstance: hopInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'hop.label', default: 'Hop'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def hopInstance = Hop.get(params.id)
        if (hopInstance) {
            try {
                hopInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'hop.label', default: 'Hop'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'hop.label', default: 'Hop'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'hop.label', default: 'Hop'), params.id])}"
            redirect(action: "list")
        }
    }
}
