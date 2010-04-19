package fr.sug.springbatch.binouze.domain

class MashStepController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [mashStepInstanceList: MashStep.list(params), mashStepInstanceTotal: MashStep.count()]
    }

    def create = {
        def mashStepInstance = new MashStep()
        mashStepInstance.properties = params
        return [mashStepInstance: mashStepInstance]
    }

    def save = {
        def mashStepInstance = new MashStep(params)
        if (mashStepInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'mashStep.label', default: 'MashStep'), mashStepInstance.id])}"
            redirect(action: "show", id: mashStepInstance.id)
        }
        else {
            render(view: "create", model: [mashStepInstance: mashStepInstance])
        }
    }

    def show = {
        def mashStepInstance = MashStep.get(params.id)
        if (!mashStepInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mashStep.label', default: 'MashStep'), params.id])}"
            redirect(action: "list")
        }
        else {
            [mashStepInstance: mashStepInstance]
        }
    }

    def edit = {
        def mashStepInstance = MashStep.get(params.id)
        if (!mashStepInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mashStep.label', default: 'MashStep'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [mashStepInstance: mashStepInstance]
        }
    }

    def update = {
        def mashStepInstance = MashStep.get(params.id)
        if (mashStepInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (mashStepInstance.version > version) {
                    
                    mashStepInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'mashStep.label', default: 'MashStep')] as Object[], "Another user has updated this MashStep while you were editing")
                    render(view: "edit", model: [mashStepInstance: mashStepInstance])
                    return
                }
            }
            mashStepInstance.properties = params
            if (!mashStepInstance.hasErrors() && mashStepInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'mashStep.label', default: 'MashStep'), mashStepInstance.id])}"
                redirect(action: "show", id: mashStepInstance.id)
            }
            else {
                render(view: "edit", model: [mashStepInstance: mashStepInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mashStep.label', default: 'MashStep'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def mashStepInstance = MashStep.get(params.id)
        if (mashStepInstance) {
            try {
                mashStepInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'mashStep.label', default: 'MashStep'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'mashStep.label', default: 'MashStep'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mashStep.label', default: 'MashStep'), params.id])}"
            redirect(action: "list")
        }
    }
}
