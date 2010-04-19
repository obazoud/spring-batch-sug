
<%@ page import="fr.sug.springbatch.binouze.domain.Hop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'hop.label', default: 'Hop')}" />
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
            <g:hasErrors bean="${hopInstance}">
            <div class="errors">
                <g:renderErrors bean="${hopInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${hopInstance?.id}" />
                <g:hiddenField name="version" value="${hopInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="recipeid"><g:message code="hop.recipeid.label" default="Recipeid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'recipeid', 'errors')}">
                                    <g:textField name="recipeid" maxlength="36" value="${hopInstance?.recipeid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="alpha"><g:message code="hop.alpha.label" default="Alpha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'alpha', 'errors')}">
                                    <g:textField name="alpha" maxlength="50" value="${hopInstance?.alpha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="amount"><g:message code="hop.amount.label" default="Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'amount', 'errors')}">
                                    <g:textField name="amount" maxlength="50" value="${hopInstance?.amount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="beta"><g:message code="hop.beta.label" default="Beta" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'beta', 'errors')}">
                                    <g:textField name="beta" maxlength="50" value="${hopInstance?.beta}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="caryophyllene"><g:message code="hop.caryophyllene.label" default="Caryophyllene" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'caryophyllene', 'errors')}">
                                    <g:textField name="caryophyllene" maxlength="50" value="${hopInstance?.caryophyllene}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cohumulone"><g:message code="hop.cohumulone.label" default="Cohumulone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'cohumulone', 'errors')}">
                                    <g:textField name="cohumulone" maxlength="50" value="${hopInstance?.cohumulone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displayamount"><g:message code="hop.displayamount.label" default="Displayamount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'displayamount', 'errors')}">
                                    <g:textField name="displayamount" maxlength="50" value="${hopInstance?.displayamount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaytime"><g:message code="hop.displaytime.label" default="Displaytime" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'displaytime', 'errors')}">
                                    <g:textField name="displaytime" maxlength="50" value="${hopInstance?.displaytime}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="form"><g:message code="hop.form.label" default="Form" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'form', 'errors')}">
                                    <g:textField name="form" maxlength="50" value="${hopInstance?.form}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hsi"><g:message code="hop.hsi.label" default="Hsi" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'hsi', 'errors')}">
                                    <g:textField name="hsi" maxlength="50" value="${hopInstance?.hsi}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="humulene"><g:message code="hop.humulene.label" default="Humulene" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'humulene', 'errors')}">
                                    <g:textField name="humulene" maxlength="50" value="${hopInstance?.humulene}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="inventory"><g:message code="hop.inventory.label" default="Inventory" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'inventory', 'errors')}">
                                    <g:textField name="inventory" maxlength="50" value="${hopInstance?.inventory}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="myrcene"><g:message code="hop.myrcene.label" default="Myrcene" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'myrcene', 'errors')}">
                                    <g:textField name="myrcene" maxlength="50" value="${hopInstance?.myrcene}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="hop.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${hopInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="notes"><g:message code="hop.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${hopInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="origin"><g:message code="hop.origin.label" default="Origin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'origin', 'errors')}">
                                    <g:textField name="origin" maxlength="50" value="${hopInstance?.origin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="substitutes"><g:message code="hop.substitutes.label" default="Substitutes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'substitutes', 'errors')}">
                                    <g:textField name="substitutes" maxlength="50" value="${hopInstance?.substitutes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="time"><g:message code="hop.time.label" default="Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'time', 'errors')}">
                                    <g:textField name="time" maxlength="50" value="${hopInstance?.time}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="hop.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'type', 'errors')}">
                                    <g:textField name="type" maxlength="50" value="${hopInstance?.type}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="use1"><g:message code="hop.use1.label" default="Use1" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hopInstance, field: 'use1', 'errors')}">
                                    <g:textField name="use1" maxlength="50" value="${hopInstance?.use1}" />
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
