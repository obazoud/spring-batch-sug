
<%@ page import="fr.sug.springbatch.binouze.domain.Mash" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mash.label', default: 'Mash')}" />
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
            <g:hasErrors bean="${mashInstance}">
            <div class="errors">
                <g:renderErrors bean="${mashInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displaygraintemp"><g:message code="mash.displaygraintemp.label" default="Displaygraintemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'displaygraintemp', 'errors')}">
                                    <g:textField name="displaygraintemp" maxlength="50" value="${mashInstance?.displaygraintemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayspargetemp"><g:message code="mash.displayspargetemp.label" default="Displayspargetemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'displayspargetemp', 'errors')}">
                                    <g:textField name="displayspargetemp" maxlength="50" value="${mashInstance?.displayspargetemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displaytuntemp"><g:message code="mash.displaytuntemp.label" default="Displaytuntemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'displaytuntemp', 'errors')}">
                                    <g:textField name="displaytuntemp" maxlength="50" value="${mashInstance?.displaytuntemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displaytunweight"><g:message code="mash.displaytunweight.label" default="Displaytunweight" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'displaytunweight', 'errors')}">
                                    <g:textField name="displaytunweight" maxlength="50" value="${mashInstance?.displaytunweight}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="equipadjust"><g:message code="mash.equipadjust.label" default="Equipadjust" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'equipadjust', 'errors')}">
                                    <g:textField name="equipadjust" maxlength="50" value="${mashInstance?.equipadjust}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="graintemp"><g:message code="mash.graintemp.label" default="Graintemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'graintemp', 'errors')}">
                                    <g:textField name="graintemp" maxlength="50" value="${mashInstance?.graintemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="mash.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${mashInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="mash.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${mashInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ph"><g:message code="mash.ph.label" default="Ph" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'ph', 'errors')}">
                                    <g:textField name="ph" maxlength="50" value="${mashInstance?.ph}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="spargetemp"><g:message code="mash.spargetemp.label" default="Spargetemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'spargetemp', 'errors')}">
                                    <g:textField name="spargetemp" maxlength="50" value="${mashInstance?.spargetemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tunspecificheat"><g:message code="mash.tunspecificheat.label" default="Tunspecificheat" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'tunspecificheat', 'errors')}">
                                    <g:textField name="tunspecificheat" maxlength="50" value="${mashInstance?.tunspecificheat}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tuntemp"><g:message code="mash.tuntemp.label" default="Tuntemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'tuntemp', 'errors')}">
                                    <g:textField name="tuntemp" maxlength="50" value="${mashInstance?.tuntemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tunweight"><g:message code="mash.tunweight.label" default="Tunweight" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'tunweight', 'errors')}">
                                    <g:textField name="tunweight" maxlength="50" value="${mashInstance?.tunweight}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="mash.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mashInstance, field: 'type', 'errors')}">
                                    <g:textField name="type" maxlength="50" value="${mashInstance?.type}" />
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
