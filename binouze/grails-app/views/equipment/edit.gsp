
<%@ page import="fr.sug.springbatch.binouze.domain.Equipment" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
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
            <g:hasErrors bean="${equipmentInstance}">
            <div class="errors">
                <g:renderErrors bean="${equipmentInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${equipmentInstance?.id}" />
                <g:hiddenField name="version" value="${equipmentInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="batchsize"><g:message code="equipment.batchsize.label" default="Batchsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'batchsize', 'errors')}">
                                    <g:textField name="batchsize" maxlength="50" value="${equipmentInstance?.batchsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="boilsize"><g:message code="equipment.boilsize.label" default="Boilsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'boilsize', 'errors')}">
                                    <g:textField name="boilsize" maxlength="50" value="${equipmentInstance?.boilsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="boiltime"><g:message code="equipment.boiltime.label" default="Boiltime" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'boiltime', 'errors')}">
                                    <g:textField name="boiltime" maxlength="50" value="${equipmentInstance?.boiltime}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="calcboilvolume"><g:message code="equipment.calcboilvolume.label" default="Calcboilvolume" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'calcboilvolume', 'errors')}">
                                    <g:textField name="calcboilvolume" maxlength="50" value="${equipmentInstance?.calcboilvolume}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaybatchsize"><g:message code="equipment.displaybatchsize.label" default="Displaybatchsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'displaybatchsize', 'errors')}">
                                    <g:textField name="displaybatchsize" maxlength="50" value="${equipmentInstance?.displaybatchsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displayboilsize"><g:message code="equipment.displayboilsize.label" default="Displayboilsize" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'displayboilsize', 'errors')}">
                                    <g:textField name="displayboilsize" maxlength="50" value="${equipmentInstance?.displayboilsize}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaylauterdeadspace"><g:message code="equipment.displaylauterdeadspace.label" default="Displaylauterdeadspace" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'displaylauterdeadspace', 'errors')}">
                                    <g:textField name="displaylauterdeadspace" maxlength="50" value="${equipmentInstance?.displaylauterdeadspace}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaytopupkettle"><g:message code="equipment.displaytopupkettle.label" default="Displaytopupkettle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'displaytopupkettle', 'errors')}">
                                    <g:textField name="displaytopupkettle" maxlength="50" value="${equipmentInstance?.displaytopupkettle}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaytopupwater"><g:message code="equipment.displaytopupwater.label" default="Displaytopupwater" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'displaytopupwater', 'errors')}">
                                    <g:textField name="displaytopupwater" maxlength="50" value="${equipmentInstance?.displaytopupwater}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaytrubchillerloss"><g:message code="equipment.displaytrubchillerloss.label" default="Displaytrubchillerloss" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'displaytrubchillerloss', 'errors')}">
                                    <g:textField name="displaytrubchillerloss" maxlength="50" value="${equipmentInstance?.displaytrubchillerloss}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaytunvolume"><g:message code="equipment.displaytunvolume.label" default="Displaytunvolume" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'displaytunvolume', 'errors')}">
                                    <g:textField name="displaytunvolume" maxlength="50" value="${equipmentInstance?.displaytunvolume}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaytunweight"><g:message code="equipment.displaytunweight.label" default="Displaytunweight" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'displaytunweight', 'errors')}">
                                    <g:textField name="displaytunweight" maxlength="50" value="${equipmentInstance?.displaytunweight}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="evaprate"><g:message code="equipment.evaprate.label" default="Evaprate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'evaprate', 'errors')}">
                                    <g:textField name="evaprate" maxlength="50" value="${equipmentInstance?.evaprate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hoputilization"><g:message code="equipment.hoputilization.label" default="Hoputilization" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'hoputilization', 'errors')}">
                                    <g:textField name="hoputilization" maxlength="50" value="${equipmentInstance?.hoputilization}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lauterdeadspace"><g:message code="equipment.lauterdeadspace.label" default="Lauterdeadspace" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'lauterdeadspace', 'errors')}">
                                    <g:textField name="lauterdeadspace" maxlength="50" value="${equipmentInstance?.lauterdeadspace}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="equipment.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${equipmentInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="notes"><g:message code="equipment.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${equipmentInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="topupkettle"><g:message code="equipment.topupkettle.label" default="Topupkettle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'topupkettle', 'errors')}">
                                    <g:textField name="topupkettle" maxlength="50" value="${equipmentInstance?.topupkettle}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="topupwater"><g:message code="equipment.topupwater.label" default="Topupwater" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'topupwater', 'errors')}">
                                    <g:textField name="topupwater" maxlength="50" value="${equipmentInstance?.topupwater}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="trubchillerloss"><g:message code="equipment.trubchillerloss.label" default="Trubchillerloss" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'trubchillerloss', 'errors')}">
                                    <g:textField name="trubchillerloss" maxlength="50" value="${equipmentInstance?.trubchillerloss}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tunspecificheat"><g:message code="equipment.tunspecificheat.label" default="Tunspecificheat" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'tunspecificheat', 'errors')}">
                                    <g:textField name="tunspecificheat" maxlength="50" value="${equipmentInstance?.tunspecificheat}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tunvolume"><g:message code="equipment.tunvolume.label" default="Tunvolume" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'tunvolume', 'errors')}">
                                    <g:textField name="tunvolume" maxlength="50" value="${equipmentInstance?.tunvolume}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tunweight"><g:message code="equipment.tunweight.label" default="Tunweight" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'tunweight', 'errors')}">
                                    <g:textField name="tunweight" maxlength="50" value="${equipmentInstance?.tunweight}" />
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
