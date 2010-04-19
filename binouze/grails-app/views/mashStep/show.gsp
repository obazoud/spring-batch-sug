
<%@ page import="fr.sug.springbatch.binouze.domain.MashStep" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mashStep.label', default: 'MashStep')}" />
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
                            <td valign="top" class="name"><g:message code="mashStep.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.mashid.label" default="Mashid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "mashid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.decoctionamt.label" default="Decoctionamt" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "decoctionamt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.displayinfuseamt.label" default="Displayinfuseamt" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "displayinfuseamt")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.displaysteptemp.label" default="Displaysteptemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "displaysteptemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.endtemp.label" default="Endtemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "endtemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.infuseamount.label" default="Infuseamount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "infuseamount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.infusetemp.label" default="Infusetemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "infusetemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.ramptime.label" default="Ramptime" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "ramptime")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.steptemp.label" default="Steptemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "steptemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.steptime.label" default="Steptime" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "steptime")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "type")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mashStep.watergrainratio.label" default="Watergrainratio" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashStepInstance, field: "watergrainratio")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${mashStepInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
