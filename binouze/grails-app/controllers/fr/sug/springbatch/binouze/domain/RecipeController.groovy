package fr.sug.springbatch.binouze.domain

class RecipeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [recipeInstanceList: Recipe.list(params), recipeInstanceTotal: Recipe.count()]
    }

    def create = {
        def recipeInstance = new Recipe()
        recipeInstance.properties = params
        return [recipeInstance: recipeInstance]
    }

    def save = {
        def recipeInstance = new Recipe(params)
        if (recipeInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'recipe.label', default: 'Recipe'), recipeInstance.id])}"
            redirect(action: "show", id: recipeInstance.id)
        }
        else {
            render(view: "create", model: [recipeInstance: recipeInstance])
        }
    }

    def show = {
        def recipeInstance = Recipe.get(params.id)
        if (!recipeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'recipe.label', default: 'Recipe'), params.id])}"
            redirect(action: "list")
        }
        else {
            [recipeInstance: recipeInstance]
        }
    }

    def edit = {
        def recipeInstance = Recipe.get(params.id)
        if (!recipeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'recipe.label', default: 'Recipe'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [recipeInstance: recipeInstance]
        }
    }

    def update = {
        def recipeInstance = Recipe.get(params.id)
        if (recipeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (recipeInstance.version > version) {
                    
                    recipeInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'recipe.label', default: 'Recipe')] as Object[], "Another user has updated this Recipe while you were editing")
                    render(view: "edit", model: [recipeInstance: recipeInstance])
                    return
                }
            }
            recipeInstance.properties = params
            if (!recipeInstance.hasErrors() && recipeInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'recipe.label', default: 'Recipe'), recipeInstance.id])}"
                redirect(action: "show", id: recipeInstance.id)
            }
            else {
                render(view: "edit", model: [recipeInstance: recipeInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'recipe.label', default: 'Recipe'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def recipeInstance = Recipe.get(params.id)
        if (recipeInstance) {
            try {
                recipeInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'recipe.label', default: 'Recipe'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'recipe.label', default: 'Recipe'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'recipe.label', default: 'Recipe'), params.id])}"
            redirect(action: "list")
        }
    }
}
