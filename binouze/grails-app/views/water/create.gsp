
<%@ page import="fr.sug.springbatch.binouze.domain.Water" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'water.label', default: 'Water')}" />
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
            <g:hasErrors bean="${waterInstance}">
            <div class="errors">
                <g:renderErrors bean="${waterInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="recipeid"><g:message code="water.recipeid.label" default="Recipeid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'recipeid', 'errors')}">
                                    <g:textField name="recipeid" maxlength="36" value="${waterInstance?.recipeid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="amount"><g:message code="water.amount.label" default="Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'amount', 'errors')}">
                                    <g:textField name="amount" maxlength="50" value="${waterInstance?.amount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bicarbonate"><g:message code="water.bicarbonate.label" default="Bicarbonate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'bicarbonate', 'errors')}">
                                    <g:textField name="bicarbonate" maxlength="50" value="${waterInstance?.bicarbonate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="calcium"><g:message code="water.calcium.label" default="Calcium" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'calcium', 'errors')}">
                                    <g:textField name="calcium" maxlength="50" value="${waterInstance?.calcium}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="chloride"><g:message code="water.chloride.label" default="Chloride" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'chloride', 'errors')}">
                                    <g:textField name="chloride" maxlength="50" value="${waterInstance?.chloride}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayamount"><g:message code="water.displayamount.label" default="Displayamount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'displayamount', 'errors')}">
                                    <g:textField name="displayamount" maxlength="50" value="${waterInstance?.displayamount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="magnesium"><g:message code="water.magnesium.label" default="Magnesium" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'magnesium', 'errors')}">
                                    <g:textField name="magnesium" maxlength="50" value="${waterInstance?.magnesium}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="water.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${waterInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="water.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${waterInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ph"><g:message code="water.ph.label" default="Ph" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'ph', 'errors')}">
                                    <g:textField name="ph" maxlength="50" value="${waterInstance?.ph}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sodium"><g:message code="water.sodium.label" default="Sodium" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'sodium', 'errors')}">
                                    <g:textField name="sodium" maxlength="50" value="${waterInstance?.sodium}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sulfate"><g:message code="water.sulfate.label" default="Sulfate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: waterInstance, field: 'sulfate', 'errors')}">
                                    <g:textField name="sulfate" maxlength="50" value="${waterInstance?.sulfate}" />
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
