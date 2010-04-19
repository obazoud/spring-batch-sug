
<%@ page import="fr.sug.springbatch.binouze.domain.Misc" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'misc.label', default: 'Misc')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${miscInstance}">
            <div class="errors">
                <g:renderErrors bean="${miscInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${miscInstance?.id}" />
                <g:hiddenField name="version" value="${miscInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="recipeid"><g:message code="misc.recipeid.label" default="Recipeid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'recipeid', 'errors')}">
                                    <g:textField name="recipeid" maxlength="36" value="${miscInstance?.recipeid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="amount"><g:message code="misc.amount.label" default="Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'amount', 'errors')}">
                                    <g:textField name="amount" maxlength="50" value="${miscInstance?.amount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="amountisweight"><g:message code="misc.amountisweight.label" default="Amountisweight" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'amountisweight', 'errors')}">
                                    <g:textField name="amountisweight" maxlength="50" value="${miscInstance?.amountisweight}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="batchsize"><g:message code="misc.batchsize.label" default="Batchsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'batchsize', 'errors')}">
                                    <g:textField name="batchsize" maxlength="50" value="${miscInstance?.batchsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displayamount"><g:message code="misc.displayamount.label" default="Displayamount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'displayamount', 'errors')}">
                                    <g:textField name="displayamount" maxlength="50" value="${miscInstance?.displayamount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaytime"><g:message code="misc.displaytime.label" default="Displaytime" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'displaytime', 'errors')}">
                                    <g:textField name="displaytime" maxlength="50" value="${miscInstance?.displaytime}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="inventory"><g:message code="misc.inventory.label" default="Inventory" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'inventory', 'errors')}">
                                    <g:textField name="inventory" maxlength="50" value="${miscInstance?.inventory}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="misc.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${miscInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="notes"><g:message code="misc.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${miscInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="time"><g:message code="misc.time.label" default="Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'time', 'errors')}">
                                    <g:textField name="time" maxlength="50" value="${miscInstance?.time}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="misc.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'type', 'errors')}">
                                    <g:textField name="type" maxlength="50" value="${miscInstance?.type}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="use1"><g:message code="misc.use1.label" default="Use1" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'use1', 'errors')}">
                                    <g:textField name="use1" maxlength="50" value="${miscInstance?.use1}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="usefor"><g:message code="misc.usefor.label" default="Usefor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: miscInstance, field: 'usefor', 'errors')}">
                                    <g:textField name="usefor" maxlength="50" value="${miscInstance?.usefor}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
