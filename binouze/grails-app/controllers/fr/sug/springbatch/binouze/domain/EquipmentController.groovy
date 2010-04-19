package fr.sug.springbatch.binouze.domain

class EquipmentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [equipmentInstanceList: Equipment.list(params), equipmentInstanceTotal: Equipment.count()]
    }

    def create = {
        def equipmentInstance = new Equipment()
        equipmentInstance.properties = params
        return [equipmentInstance: equipmentInstance]
    }

    def save = {
        def equipmentInstance = new Equipment(params)
        if (equipmentInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'equipment.label', default: 'Equipment'), equipmentInstance.id])}"
            redirect(action: "show", id: equipmentInstance.id)
        }
        else {
            render(view: "create", model: [equipmentInstance: equipmentInstance])
        }
    }

    def show = {
        def equipmentInstance = Equipment.get(params.id)
        if (!equipmentInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'equipment.label', default: 'Equipment'), params.id])}"
            redirect(action: "list")
        }
        else {
            [equipmentInstance: equipmentInstance]
        }
    }

    def edit = {
        def equipmentInstance = Equipment.get(params.id)
        if (!equipmentInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'equipment.label', default: 'Equipment'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [equipmentInstance: equipmentInstance]
        }
    }

    def update = {
        def equipmentInstance = Equipment.get(params.id)
        if (equipmentInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (equipmentInstance.version > version) {
                    
                    equipmentInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'equipment.label', default: 'Equipment')] as Object[], "Another user has updated this Equipment while you were editing")
                    render(view: "edit", model: [equipmentInstance: equipmentInstance])
                    return
                }
            }
            equipmentInstance.properties = params
            if (!equipmentInstance.hasErrors() && equipmentInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'equipment.label', default: 'Equipment'), equipmentInstance.id])}"
                redirect(action: "show", id: equipmentInstance.id)
            }
            else {
                render(view: "edit", model: [equipmentInstance: equipmentInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'equipment.label', default: 'Equipment'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def equipmentInstance = Equipment.get(params.id)
        if (equipmentInstance) {
            try {
                equipmentInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'equipment.label', default: 'Equipment'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'equipment.label', default: 'Equipment'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'equipment.label', default: 'Equipment'), params.id])}"
            redirect(action: "list")
        }
    }
}
