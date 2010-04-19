
<%@ page import="fr.sug.springbatch.binouze.domain.Mash" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mash.label', default: 'Mash')}" />
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
                            <td valign="top" class="name"><g:message code="mash.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.displaygraintemp.label" default="Displaygraintemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "displaygraintemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.displayspargetemp.label" default="Displayspargetemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "displayspargetemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.displaytuntemp.label" default="Displaytuntemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "displaytuntemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.displaytunweight.label" default="Displaytunweight" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "displaytunweight")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.equipadjust.label" default="Equipadjust" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "equipadjust")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.graintemp.label" default="Graintemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "graintemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.ph.label" default="Ph" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "ph")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.spargetemp.label" default="Spargetemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "spargetemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.tunspecificheat.label" default="Tunspecificheat" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "tunspecificheat")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.tuntemp.label" default="Tuntemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "tuntemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.tunweight.label" default="Tunweight" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "tunweight")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mashInstance, field: "type")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mash.mashSteps.label" default="Mash Steps" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${mashInstance.mashSteps}" var="m">
                                    <li><g:link controller="mashStep" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${mashInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
