package fr.sug.springbatch.binouze.domain

class MiscController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [miscInstanceList: Misc.list(params), miscInstanceTotal: Misc.count()]
    }

    def create = {
        def miscInstance = new Misc()
        miscInstance.properties = params
        return [miscInstance: miscInstance]
    }

    def save = {
        def miscInstance = new Misc(params)
        if (miscInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'misc.label', default: 'Misc'), miscInstance.id])}"
            redirect(action: "show", id: miscInstance.id)
        }
        else {
            render(view: "create", model: [miscInstance: miscInstance])
        }
    }

    def show = {
        def miscInstance = Misc.get(params.id)
        if (!miscInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'misc.label', default: 'Misc'), params.id])}"
            redirect(action: "list")
        }
        else {
            [miscInstance: miscInstance]
        }
    }

    def edit = {
        def miscInstance = Misc.get(params.id)
        if (!miscInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'misc.label', default: 'Misc'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [miscInstance: miscInstance]
        }
    }

    def update = {
        def miscInstance = Misc.get(params.id)
        if (miscInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (miscInstance.version > version) {
                    
                    miscInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'misc.label', default: 'Misc')] as Object[], "Another user has updated this Misc while you were editing")
                    render(view: "edit", model: [miscInstance: miscInstance])
                    return
                }
            }
            miscInstance.properties = params
            if (!miscInstance.hasErrors() && miscInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'misc.label', default: 'Misc'), miscInstance.id])}"
                redirect(action: "show", id: miscInstance.id)
            }
            else {
                render(view: "edit", model: [miscInstance: miscInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'misc.label', default: 'Misc'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def miscInstance = Misc.get(params.id)
        if (miscInstance) {
            try {
                miscInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'misc.label', default: 'Misc'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'misc.label', default: 'Misc'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'misc.label', default: 'Misc'), params.id])}"
            redirect(action: "list")
        }
    }
}
