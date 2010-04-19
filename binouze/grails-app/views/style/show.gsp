
<%@ page import="fr.sug.springbatch.binouze.domain.Style" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'style.label', default: 'Style')}" />
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
                            <td valign="top" class="name"><g:message code="style.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.abvmax.label" default="Abvmax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "abvmax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.abvmin.label" default="Abvmin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "abvmin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.abvrange.label" default="Abvrange" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "abvrange")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.carbmax.label" default="Carbmax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "carbmax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.carbmin.label" default="Carbmin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "carbmin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.carbrange.label" default="Carbrange" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "carbrange")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.category.label" default="Category" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "category")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.categorynumber.label" default="Categorynumber" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "categorynumber")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.colormax.label" default="Colormax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "colormax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.colormin.label" default="Colormin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "colormin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.colorrange.label" default="Colorrange" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "colorrange")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.displaycolormax.label" default="Displaycolormax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "displaycolormax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.displaycolormin.label" default="Displaycolormin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "displaycolormin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.displayfgmax.label" default="Displayfgmax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "displayfgmax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.displayfgmin.label" default="Displayfgmin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "displayfgmin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.displayogmax.label" default="Displayogmax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "displayogmax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.displayogmin.label" default="Displayogmin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "displayogmin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.examples.label" default="Examples" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "examples")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.fgmax.label" default="Fgmax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "fgmax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.fgmin.label" default="Fgmin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "fgmin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.fgrange.label" default="Fgrange" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "fgrange")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.ibumax.label" default="Ibumax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "ibumax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.ibumin.label" default="Ibumin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "ibumin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.iburange.label" default="Iburange" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "iburange")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.ingredients.label" default="Ingredients" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "ingredients")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.ogmax.label" default="Ogmax" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "ogmax")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.ogmin.label" default="Ogmin" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "ogmin")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.ogrange.label" default="Ogrange" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "ogrange")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.profile.label" default="Profile" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "profile")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.styleguide.label" default="Styleguide" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "styleguide")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.styleletter.label" default="Styleletter" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "styleletter")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="style.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: styleInstance, field: "type")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${styleInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
