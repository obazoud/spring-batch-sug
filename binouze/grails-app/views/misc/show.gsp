
<%@ page import="fr.sug.springbatch.binouze.domain.Misc" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'misc.label', default: 'Misc')}" />
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
                            <td valign="top" class="name"><g:message code="misc.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.recipeid.label" default="Recipeid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "recipeid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.amount.label" default="Amount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "amount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.amountisweight.label" default="Amountisweight" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "amountisweight")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.batchsize.label" default="Batchsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "batchsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.displayamount.label" default="Displayamount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "displayamount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.displaytime.label" default="Displaytime" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "displaytime")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.inventory.label" default="Inventory" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "inventory")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.time.label" default="Time" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "time")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "type")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.use1.label" default="Use1" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "use1")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="misc.usefor.label" default="Usefor" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: miscInstance, field: "usefor")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${miscInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
