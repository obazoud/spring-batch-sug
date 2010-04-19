
<%@ page import="fr.sug.springbatch.binouze.domain.Equipment" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
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
                            <td valign="top" class="name"><g:message code="equipment.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.batchsize.label" default="Batchsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "batchsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.boilsize.label" default="Boilsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "boilsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.boiltime.label" default="Boiltime" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "boiltime")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.calcboilvolume.label" default="Calcboilvolume" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "calcboilvolume")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.displaybatchsize.label" default="Displaybatchsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "displaybatchsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.displayboilsize.label" default="Displayboilsize" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "displayboilsize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.displaylauterdeadspace.label" default="Displaylauterdeadspace" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "displaylauterdeadspace")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.displaytopupkettle.label" default="Displaytopupkettle" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "displaytopupkettle")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.displaytopupwater.label" default="Displaytopupwater" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "displaytopupwater")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.displaytrubchillerloss.label" default="Displaytrubchillerloss" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "displaytrubchillerloss")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.displaytunvolume.label" default="Displaytunvolume" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "displaytunvolume")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.displaytunweight.label" default="Displaytunweight" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "displaytunweight")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.evaprate.label" default="Evaprate" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "evaprate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.hoputilization.label" default="Hoputilization" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "hoputilization")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.lauterdeadspace.label" default="Lauterdeadspace" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "lauterdeadspace")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.topupkettle.label" default="Topupkettle" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "topupkettle")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.topupwater.label" default="Topupwater" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "topupwater")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.trubchillerloss.label" default="Trubchillerloss" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "trubchillerloss")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.tunspecificheat.label" default="Tunspecificheat" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "tunspecificheat")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.tunvolume.label" default="Tunvolume" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "tunvolume")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.tunweight.label" default="Tunweight" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "tunweight")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${equipmentInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
