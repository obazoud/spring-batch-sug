
<%@ page import="fr.sug.springbatch.binouze.domain.Water" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'water.label', default: 'Water')}" />
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
                            <td valign="top" class="name"><g:message code="water.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.recipeid.label" default="Recipeid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "recipeid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.amount.label" default="Amount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "amount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.bicarbonate.label" default="Bicarbonate" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "bicarbonate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.calcium.label" default="Calcium" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "calcium")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.chloride.label" default="Chloride" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "chloride")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.displayamount.label" default="Displayamount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "displayamount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.magnesium.label" default="Magnesium" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "magnesium")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.ph.label" default="Ph" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "ph")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.sodium.label" default="Sodium" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "sodium")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="water.sulfate.label" default="Sulfate" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: waterInstance, field: "sulfate")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${waterInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
