
<%@ page import="fr.sug.springbatch.binouze.domain.Recipe" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.abv.label" default="Abv" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "abv")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.actualefficiency.label" default="Actualefficiency" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "actualefficiency")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.age.label" default="Age" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "age")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.agetemp.label" default="Agetemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "agetemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.asstbrewer.label" default="Asstbrewer" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "asstbrewer")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.batchsize.label" default="Batchsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "batchsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.boilsize.label" default="Boilsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "boilsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.boiltime.label" default="Boiltime" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "boiltime")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.brewer.label" default="Brewer" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "brewer")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.calories.label" default="Calories" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "calories")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.carbonation.label" default="Carbonation" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "carbonation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.carbonationtemp.label" default="Carbonationtemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "carbonationtemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.carbonationused.label" default="Carbonationused" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "carbonationused")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.date.label" default="Date" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "date")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displayagetemp.label" default="Displayagetemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displayagetemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displaybatchsize.label" default="Displaybatchsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displaybatchsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displayboilsize.label" default="Displayboilsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displayboilsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displaycarbtemp.label" default="Displaycarbtemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displaycarbtemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displayfg.label" default="Displayfg" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displayfg")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displayog.label" default="Displayog" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displayog")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displayprimarytemp.label" default="Displayprimarytemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displayprimarytemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displaysecondarytemp.label" default="Displaysecondarytemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displaysecondarytemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.displaytertiarytemp.label" default="Displaytertiarytemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "displaytertiarytemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.efficiency.label" default="Efficiency" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "efficiency")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.estabv.label" default="Estabv" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "estabv")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.estcolor.label" default="Estcolor" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "estcolor")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.estfg.label" default="Estfg" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "estfg")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.estog.label" default="Estog" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "estog")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.fermentationstages.label" default="Fermentationstages" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "fermentationstages")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.fg.label" default="Fg" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "fg")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.forcecarbonation.label" default="Forcecarbonation" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "forcecarbonation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.ibu.label" default="Ibu" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "ibu")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.ibumethod.label" default="Ibumethod" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "ibumethod")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.kegprimingfactor.label" default="Kegprimingfactor" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "kegprimingfactor")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.og.label" default="Og" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "og")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.primaryage.label" default="Primaryage" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "primaryage")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.primarytemp.label" default="Primarytemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "primarytemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.primingsugarequiv.label" default="Primingsugarequiv" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "primingsugarequiv")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.primingsugarname.label" default="Primingsugarname" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "primingsugarname")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.secondaryage.label" default="Secondaryage" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "secondaryage")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.secondarytemp.label" default="Secondarytemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "secondarytemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.tastenotes.label" default="Tastenotes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "tastenotes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.tasterating.label" default="Tasterating" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "tasterating")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.tertiaryage.label" default="Tertiaryage" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "tertiaryage")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.tertiarytmp.label" default="Tertiarytmp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "tertiarytmp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: recipeInstance, field: "type")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.equipment.label" default="Equipment" /></td>
                            
                            <td valign="top" class="value"><g:link controller="equipment" action="show" id="${recipeInstance?.equipment?.id}">${recipeInstance?.equipment?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.mash.label" default="Mash" /></td>
                            
                            <td valign="top" class="value"><g:link controller="mash" action="show" id="${recipeInstance?.mash?.id}">${recipeInstance?.mash?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.fermentables.label" default="Fermentables" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${recipeInstance.fermentables}" var="f">
                                    <li><g:link controller="fermentable" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.hops.label" default="Hops" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${recipeInstance.hops}" var="h">
                                    <li><g:link controller="hop" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.style.label" default="Style" /></td>
                            
                            <td valign="top" class="value"><g:link controller="style" action="show" id="${recipeInstance?.style?.id}">${recipeInstance?.style?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.miscs.label" default="Miscs" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${recipeInstance.miscs}" var="m">
                                    <li><g:link controller="misc" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.waters.label" default="Waters" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${recipeInstance.waters}" var="w">
                                    <li><g:link controller="water" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="recipe.yeasts.label" default="Yeasts" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${recipeInstance.yeasts}" var="y">
                                    <li><g:link controller="yeast" action="show" id="${y.id}">${y?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${recipeInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
