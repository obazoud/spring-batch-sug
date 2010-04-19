
<%@ page import="fr.sug.springbatch.binouze.domain.Fermentable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'fermentable.label', default: 'Fermentable')}" />
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
                            <td valign="top" class="name"><g:message code="fermentable.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.recipeid.label" default="Recipeid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "recipeid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.addafterboil.label" default="Addafterboil" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "addafterboil")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.amount.label" default="Amount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "amount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.coarsefinediff.label" default="Coarsefinediff" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "coarsefinediff")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.color.label" default="Color" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "color")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.diastaticpower.label" default="Diastaticpower" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "diastaticpower")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.displayamount.label" default="Displayamount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "displayamount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.displaycolor.label" default="Displaycolor" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "displaycolor")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.ibugalperlb.label" default="Ibugalperlb" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "ibugalperlb")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.inventory.label" default="Inventory" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "inventory")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.maxinbatch.label" default="Maxinbatch" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "maxinbatch")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.moisture.label" default="Moisture" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "moisture")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.origin.label" default="Origin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "origin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.potential.label" default="Potential" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "potential")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.protein.label" default="Protein" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "protein")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.recommendmash.label" default="Recommendmash" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "recommendmash")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.supplier.label" default="Supplier" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "supplier")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "type")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="fermentable.yield.label" default="Yield" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: fermentableInstance, field: "yield")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${fermentableInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
