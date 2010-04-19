package fr.sug.springbatch.binouze.domain

class FermentableController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [fermentableInstanceList: Fermentable.list(params), fermentableInstanceTotal: Fermentable.count()]
    }

    def create = {
        def fermentableInstance = new Fermentable()
        fermentableInstance.properties = params
        return [fermentableInstance: fermentableInstance]
    }

    def save = {
        def fermentableInstance = new Fermentable(params)
        if (fermentableInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'fermentable.label', default: 'Fermentable'), fermentableInstance.id])}"
            redirect(action: "show", id: fermentableInstance.id)
        }
        else {
            render(view: "create", model: [fermentableInstance: fermentableInstance])
        }
    }

    def show = {
        def fermentableInstance = Fermentable.get(params.id)
        if (!fermentableInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'fermentable.label', default: 'Fermentable'), params.id])}"
            redirect(action: "list")
        }
        else {
            [fermentableInstance: fermentableInstance]
        }
    }

    def edit = {
        def fermentableInstance = Fermentable.get(params.id)
        if (!fermentableInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'fermentable.label', default: 'Fermentable'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [fermentableInstance: fermentableInstance]
        }
    }

    def update = {
        def fermentableInstance = Fermentable.get(params.id)
        if (fermentableInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (fermentableInstance.version > version) {
                    
                    fermentableInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'fermentable.label', default: 'Fermentable')] as Object[], "Another user has updated this Fermentable while you were editing")
                    render(view: "edit", model: [fermentableInstance: fermentableInstance])
                    return
                }
            }
            fermentableInstance.properties = params
            if (!fermentableInstance.hasErrors() && fermentableInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'fermentable.label', default: 'Fermentable'), fermentableInstance.id])}"
                redirect(action: "show", id: fermentableInstance.id)
            }
            else {
                render(view: "edit", model: [fermentableInstance: fermentableInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'fermentable.label', default: 'Fermentable'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def fermentableInstance = Fermentable.get(params.id)
        if (fermentableInstance) {
            try {
                fermentableInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'fermentable.label', default: 'Fermentable'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'fermentable.label', default: 'Fermentable'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'fermentable.label', default: 'Fermentable'), params.id])}"
            redirect(action: "list")
        }
    }
}
