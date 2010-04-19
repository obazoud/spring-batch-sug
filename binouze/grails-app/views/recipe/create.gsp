
<%@ page import="fr.sug.springbatch.binouze.domain.Recipe" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${recipeInstance}">
            <div class="errors">
                <g:renderErrors bean="${recipeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="abv"><g:message code="recipe.abv.label" default="Abv" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'abv', 'errors')}">
                                    <g:textField name="abv" maxlength="50" value="${recipeInstance?.abv}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="actualefficiency"><g:message code="recipe.actualefficiency.label" default="Actualefficiency" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'actualefficiency', 'errors')}">
                                    <g:textField name="actualefficiency" maxlength="50" value="${recipeInstance?.actualefficiency}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="age"><g:message code="recipe.age.label" default="Age" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'age', 'errors')}">
                                    <g:textField name="age" maxlength="50" value="${recipeInstance?.age}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="agetemp"><g:message code="recipe.agetemp.label" default="Agetemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'agetemp', 'errors')}">
                                    <g:textField name="agetemp" maxlength="50" value="${recipeInstance?.agetemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="asstbrewer"><g:message code="recipe.asstbrewer.label" default="Asstbrewer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'asstbrewer', 'errors')}">
                                    <g:textField name="asstbrewer" maxlength="50" value="${recipeInstance?.asstbrewer}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="batchsize"><g:message code="recipe.batchsize.label" default="Batchsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'batchsize', 'errors')}">
                                    <g:textField name="batchsize" maxlength="50" value="${recipeInstance?.batchsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="boilsize"><g:message code="recipe.boilsize.label" default="Boilsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'boilsize', 'errors')}">
                                    <g:textField name="boilsize" maxlength="50" value="${recipeInstance?.boilsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="boiltime"><g:message code="recipe.boiltime.label" default="Boiltime" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'boiltime', 'errors')}">
                                    <g:textField name="boiltime" maxlength="50" value="${recipeInstance?.boiltime}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="brewer"><g:message code="recipe.brewer.label" default="Brewer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'brewer', 'errors')}">
                                    <g:textField name="brewer" maxlength="50" value="${recipeInstance?.brewer}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="calories"><g:message code="recipe.calories.label" default="Calories" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'calories', 'errors')}">
                                    <g:textField name="calories" maxlength="50" value="${recipeInstance?.calories}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="carbonation"><g:message code="recipe.carbonation.label" default="Carbonation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'carbonation', 'errors')}">
                                    <g:textField name="carbonation" maxlength="50" value="${recipeInstance?.carbonation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="carbonationtemp"><g:message code="recipe.carbonationtemp.label" default="Carbonationtemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'carbonationtemp', 'errors')}">
                                    <g:textField name="carbonationtemp" maxlength="50" value="${recipeInstance?.carbonationtemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="carbonationused"><g:message code="recipe.carbonationused.label" default="Carbonationused" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'carbonationused', 'errors')}">
                                    <g:textField name="carbonationused" maxlength="50" value="${recipeInstance?.carbonationused}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="date"><g:message code="recipe.date.label" default="Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'date', 'errors')}">
                                    <g:textField name="date" maxlength="50" value="${recipeInstance?.date}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayagetemp"><g:message code="recipe.displayagetemp.label" default="Displayagetemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displayagetemp', 'errors')}">
                                    <g:textField name="displayagetemp" maxlength="50" value="${recipeInstance?.displayagetemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displaybatchsize"><g:message code="recipe.displaybatchsize.label" default="Displaybatchsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displaybatchsize', 'errors')}">
                                    <g:textField name="displaybatchsize" maxlength="50" value="${recipeInstance?.displaybatchsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayboilsize"><g:message code="recipe.displayboilsize.label" default="Displayboilsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displayboilsize', 'errors')}">
                                    <g:textField name="displayboilsize" maxlength="50" value="${recipeInstance?.displayboilsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displaycarbtemp"><g:message code="recipe.displaycarbtemp.label" default="Displaycarbtemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displaycarbtemp', 'errors')}">
                                    <g:textField name="displaycarbtemp" maxlength="50" value="${recipeInstance?.displaycarbtemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayfg"><g:message code="recipe.displayfg.label" default="Displayfg" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displayfg', 'errors')}">
                                    <g:textField name="displayfg" maxlength="50" value="${recipeInstance?.displayfg}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayog"><g:message code="recipe.displayog.label" default="Displayog" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displayog', 'errors')}">
                                    <g:textField name="displayog" maxlength="50" value="${recipeInstance?.displayog}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayprimarytemp"><g:message code="recipe.displayprimarytemp.label" default="Displayprimarytemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displayprimarytemp', 'errors')}">
                                    <g:textField name="displayprimarytemp" maxlength="50" value="${recipeInstance?.displayprimarytemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displaysecondarytemp"><g:message code="recipe.displaysecondarytemp.label" default="Displaysecondarytemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displaysecondarytemp', 'errors')}">
                                    <g:textField name="displaysecondarytemp" maxlength="50" value="${recipeInstance?.displaysecondarytemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displaytertiarytemp"><g:message code="recipe.displaytertiarytemp.label" default="Displaytertiarytemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'displaytertiarytemp', 'errors')}">
                                    <g:textField name="displaytertiarytemp" maxlength="50" value="${recipeInstance?.displaytertiarytemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="efficiency"><g:message code="recipe.efficiency.label" default="Efficiency" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'efficiency', 'errors')}">
                                    <g:textField name="efficiency" maxlength="50" value="${recipeInstance?.efficiency}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estabv"><g:message code="recipe.estabv.label" default="Estabv" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'estabv', 'errors')}">
                                    <g:textField name="estabv" maxlength="50" value="${recipeInstance?.estabv}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estcolor"><g:message code="recipe.estcolor.label" default="Estcolor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'estcolor', 'errors')}">
                                    <g:textField name="estcolor" maxlength="50" value="${recipeInstance?.estcolor}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estfg"><g:message code="recipe.estfg.label" default="Estfg" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'estfg', 'errors')}">
                                    <g:textField name="estfg" maxlength="50" value="${recipeInstance?.estfg}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estog"><g:message code="recipe.estog.label" default="Estog" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'estog', 'errors')}">
                                    <g:textField name="estog" maxlength="50" value="${recipeInstance?.estog}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fermentationstages"><g:message code="recipe.fermentationstages.label" default="Fermentationstages" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'fermentationstages', 'errors')}">
                                    <g:textField name="fermentationstages" maxlength="50" value="${recipeInstance?.fermentationstages}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fg"><g:message code="recipe.fg.label" default="Fg" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'fg', 'errors')}">
                                    <g:textField name="fg" maxlength="50" value="${recipeInstance?.fg}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="forcecarbonation"><g:message code="recipe.forcecarbonation.label" default="Forcecarbonation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'forcecarbonation', 'errors')}">
                                    <g:textField name="forcecarbonation" maxlength="50" value="${recipeInstance?.forcecarbonation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ibu"><g:message code="recipe.ibu.label" default="Ibu" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'ibu', 'errors')}">
                                    <g:textField name="ibu" maxlength="50" value="${recipeInstance?.ibu}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ibumethod"><g:message code="recipe.ibumethod.label" default="Ibumethod" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'ibumethod', 'errors')}">
                                    <g:textField name="ibumethod" maxlength="50" value="${recipeInstance?.ibumethod}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="kegprimingfactor"><g:message code="recipe.kegprimingfactor.label" default="Kegprimingfactor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'kegprimingfactor', 'errors')}">
                                    <g:textField name="kegprimingfactor" maxlength="50" value="${recipeInstance?.kegprimingfactor}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="recipe.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${recipeInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="recipe.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${recipeInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="og"><g:message code="recipe.og.label" default="Og" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'og', 'errors')}">
                                    <g:textField name="og" maxlength="50" value="${recipeInstance?.og}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="primaryage"><g:message code="recipe.primaryage.label" default="Primaryage" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'primaryage', 'errors')}">
                                    <g:textField name="primaryage" maxlength="50" value="${recipeInstance?.primaryage}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="primarytemp"><g:message code="recipe.primarytemp.label" default="Primarytemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'primarytemp', 'errors')}">
                                    <g:textField name="primarytemp" maxlength="50" value="${recipeInstance?.primarytemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="primingsugarequiv"><g:message code="recipe.primingsugarequiv.label" default="Primingsugarequiv" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'primingsugarequiv', 'errors')}">
                                    <g:textField name="primingsugarequiv" maxlength="50" value="${recipeInstance?.primingsugarequiv}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="primingsugarname"><g:message code="recipe.primingsugarname.label" default="Primingsugarname" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'primingsugarname', 'errors')}">
                                    <g:textField name="primingsugarname" maxlength="50" value="${recipeInstance?.primingsugarname}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="secondaryage"><g:message code="recipe.secondaryage.label" default="Secondaryage" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'secondaryage', 'errors')}">
                                    <g:textField name="secondaryage" maxlength="50" value="${recipeInstance?.secondaryage}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="secondarytemp"><g:message code="recipe.secondarytemp.label" default="Secondarytemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'secondarytemp', 'errors')}">
                                    <g:textField name="secondarytemp" maxlength="50" value="${recipeInstance?.secondarytemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tastenotes"><g:message code="recipe.tastenotes.label" default="Tastenotes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'tastenotes', 'errors')}">
                                    <g:textField name="tastenotes" maxlength="250" value="${recipeInstance?.tastenotes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tasterating"><g:message code="recipe.tasterating.label" default="Tasterating" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'tasterating', 'errors')}">
                                    <g:textField name="tasterating" maxlength="50" value="${recipeInstance?.tasterating}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tertiaryage"><g:message code="recipe.tertiaryage.label" default="Tertiaryage" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'tertiaryage', 'errors')}">
                                    <g:textField name="tertiaryage" maxlength="50" value="${recipeInstance?.tertiaryage}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tertiarytmp"><g:message code="recipe.tertiarytmp.label" default="Tertiarytmp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'tertiarytmp', 'errors')}">
                                    <g:textField name="tertiarytmp" maxlength="50" value="${recipeInstance?.tertiarytmp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="recipe.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'type', 'errors')}">
                                    <g:textField name="type" maxlength="50" value="${recipeInstance?.type}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="equipment"><g:message code="recipe.equipment.label" default="Equipment" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'equipment', 'errors')}">
                                    <g:select name="equipment.id" from="${fr.sug.springbatch.binouze.domain.Equipment.list()}" optionKey="id" value="${recipeInstance?.equipment?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mash"><g:message code="recipe.mash.label" default="Mash" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'mash', 'errors')}">
                                    <g:select name="mash.id" from="${fr.sug.springbatch.binouze.domain.Mash.list()}" optionKey="id" value="${recipeInstance?.mash?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="style"><g:message code="recipe.style.label" default="Style" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: recipeInstance, field: 'style', 'errors')}">
                                    <g:select name="style.id" from="${fr.sug.springbatch.binouze.domain.Style.list()}" optionKey="id" value="${recipeInstance?.style?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
