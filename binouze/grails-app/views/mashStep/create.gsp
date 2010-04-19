
<%@ page import="fr.sug.springbatch.binouze.domain.MashStep" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mashStep.label', default: 'MashStep')}" />
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
            <g:hasErrors bean="${mashStepInstance}">
            <div class="errors">
                <g:renderErrors bean="${mashStepInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mashid"><g:message code="mashStep.mashid.label" default="Mashid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'mashid', 'errors')}">
                                    <g:textField name="mashid" maxlength="36" value="${mashStepInstance?.mashid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="decoctionamt"><g:message code="mashStep.decoctionamt.label" default="Decoctionamt" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'decoctionamt', 'errors')}">
                                    <g:textField name="decoctionamt" maxlength="50" value="${mashStepInstance?.decoctionamt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="mashStep.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" maxlength="50" value="${mashStepInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayinfuseamt"><g:message code="mashStep.displayinfuseamt.label" default="Displayinfuseamt" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'displayinfuseamt', 'errors')}">
                                    <g:textField name="displayinfuseamt" maxlength="50" value="${mashStepInstance?.displayinfuseamt}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displaysteptemp"><g:message code="mashStep.displaysteptemp.label" default="Displaysteptemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'displaysteptemp', 'errors')}">
                                    <g:textField name="displaysteptemp" maxlength="50" value="${mashStepInstance?.displaysteptemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="endtemp"><g:message code="mashStep.endtemp.label" default="Endtemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'endtemp', 'errors')}">
                                    <g:textField name="endtemp" maxlength="50" value="${mashStepInstance?.endtemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="infuseamount"><g:message code="mashStep.infuseamount.label" default="Infuseamount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'infuseamount', 'errors')}">
                                    <g:textField name="infuseamount" maxlength="50" value="${mashStepInstance?.infuseamount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="infusetemp"><g:message code="mashStep.infusetemp.label" default="Infusetemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'infusetemp', 'errors')}">
                                    <g:textField name="infusetemp" maxlength="50" value="${mashStepInstance?.infusetemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="mashStep.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${mashStepInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ramptime"><g:message code="mashStep.ramptime.label" default="Ramptime" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'ramptime', 'errors')}">
                                    <g:textField name="ramptime" maxlength="50" value="${mashStepInstance?.ramptime}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="steptemp"><g:message code="mashStep.steptemp.label" default="Steptemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'steptemp', 'errors')}">
                                    <g:textField name="steptemp" maxlength="50" value="${mashStepInstance?.steptemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="steptime"><g:message code="mashStep.steptime.label" default="Steptime" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'steptime', 'errors')}">
                                    <g:textField name="steptime" maxlength="50" value="${mashStepInstance?.steptime}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="mashStep.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'type', 'errors')}">
                                    <g:textField name="type" maxlength="50" value="${mashStepInstance?.type}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="watergrainratio"><g:message code="mashStep.watergrainratio.label" default="Watergrainratio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashStepInstance, field: 'watergrainratio', 'errors')}">
                                    <g:textField name="watergrainratio" maxlength="50" value="${mashStepInstance?.watergrainratio}" />
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
