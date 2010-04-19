package fr.sug.springbatch.binouze.domain

class WaterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [waterInstanceList: Water.list(params), waterInstanceTotal: Water.count()]
    }

    def create = {
        def waterInstance = new Water()
        waterInstance.properties = params
        return [waterInstance: waterInstance]
    }

    def save = {
        def waterInstance = new Water(params)
        if (waterInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'water.label', default: 'Water'), waterInstance.id])}"
            redirect(action: "show", id: waterInstance.id)
        }
        else {
            render(view: "create", model: [waterInstance: waterInstance])
        }
    }

    def show = {
        def waterInstance = Water.get(params.id)
        if (!waterInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'water.label', default: 'Water'), params.id])}"
            redirect(action: "list")
        }
        else {
            [waterInstance: waterInstance]
        }
    }

    def edit = {
        def waterInstance = Water.get(params.id)
        if (!waterInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'water.label', default: 'Water'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [waterInstance: waterInstance]
        }
    }

    def update = {
        def waterInstance = Water.get(params.id)
        if (waterInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (waterInstance.version > version) {
                    
                    waterInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'water.label', default: 'Water')] as Object[], "Another user has updated this Water while you were editing")
                    render(view: "edit", model: [waterInstance: waterInstance])
                    return
                }
            }
            waterInstance.properties = params
            if (!waterInstance.hasErrors() && waterInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'water.label', default: 'Water'), waterInstance.id])}"
                redirect(action: "show", id: waterInstance.id)
            }
            else {
                render(view: "edit", model: [waterInstance: waterInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'water.label', default: 'Water'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def waterInstance = Water.get(params.id)
        if (waterInstance) {
            try {
                waterInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'water.label', default: 'Water'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'water.label', default: 'Water'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'water.label', default: 'Water'), params.id])}"
            redirect(action: "list")
        }
    }
}
