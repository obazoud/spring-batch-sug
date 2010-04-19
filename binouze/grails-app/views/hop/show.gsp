
<%@ page import="fr.sug.springbatch.binouze.domain.Hop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'hop.label', default: 'Hop')}" />
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
                            <td valign="top" class="name"><g:message code="hop.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.recipeid.label" default="Recipeid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "recipeid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.alpha.label" default="Alpha" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "alpha")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.amount.label" default="Amount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "amount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.beta.label" default="Beta" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "beta")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.caryophyllene.label" default="Caryophyllene" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "caryophyllene")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.cohumulone.label" default="Cohumulone" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "cohumulone")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.displayamount.label" default="Displayamount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "displayamount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.displaytime.label" default="Displaytime" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "displaytime")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.form.label" default="Form" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "form")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.hsi.label" default="Hsi" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "hsi")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.humulene.label" default="Humulene" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "humulene")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.inventory.label" default="Inventory" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "inventory")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.myrcene.label" default="Myrcene" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "myrcene")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.origin.label" default="Origin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "origin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.substitutes.label" default="Substitutes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "substitutes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.time.label" default="Time" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "time")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "type")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="hop.use1.label" default="Use1" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: hopInstance, field: "use1")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${hopInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
