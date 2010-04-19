
<%@ page import="fr.sug.springbatch.binouze.domain.Style" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'style.label', default: 'Style')}" />
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
            <g:hasErrors bean="${styleInstance}">
            <div class="errors">
                <g:renderErrors bean="${styleInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${styleInstance?.id}" />
                <g:hiddenField name="version" value="${styleInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="abvmax"><g:message code="style.abvmax.label" default="Abvmax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'abvmax', 'errors')}">
                                    <g:textField name="abvmax" maxlength="50" value="${styleInstance?.abvmax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="abvmin"><g:message code="style.abvmin.label" default="Abvmin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'abvmin', 'errors')}">
                                    <g:textField name="abvmin" maxlength="50" value="${styleInstance?.abvmin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="abvrange"><g:message code="style.abvrange.label" default="Abvrange" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'abvrange', 'errors')}">
                                    <g:textField name="abvrange" maxlength="50" value="${styleInstance?.abvrange}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="carbmax"><g:message code="style.carbmax.label" default="Carbmax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'carbmax', 'errors')}">
                                    <g:textField name="carbmax" maxlength="50" value="${styleInstance?.carbmax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="carbmin"><g:message code="style.carbmin.label" default="Carbmin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'carbmin', 'errors')}">
                                    <g:textField name="carbmin" maxlength="50" value="${styleInstance?.carbmin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="carbrange"><g:message code="style.carbrange.label" default="Carbrange" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'carbrange', 'errors')}">
                                    <g:textField name="carbrange" maxlength="50" value="${styleInstance?.carbrange}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="category"><g:message code="style.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'category', 'errors')}">
                                    <g:textField name="category" maxlength="50" value="${styleInstance?.category}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="categorynumber"><g:message code="style.categorynumber.label" default="Categorynumber" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'categorynumber', 'errors')}">
                                    <g:textField name="categorynumber" maxlength="50" value="${styleInstance?.categorynumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="colormax"><g:message code="style.colormax.label" default="Colormax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'colormax', 'errors')}">
                                    <g:textField name="colormax" maxlength="50" value="${styleInstance?.colormax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="colormin"><g:message code="style.colormin.label" default="Colormin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'colormin', 'errors')}">
                                    <g:textField name="colormin" maxlength="50" value="${styleInstance?.colormin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="colorrange"><g:message code="style.colorrange.label" default="Colorrange" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'colorrange', 'errors')}">
                                    <g:textField name="colorrange" maxlength="50" value="${styleInstance?.colorrange}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaycolormax"><g:message code="style.displaycolormax.label" default="Displaycolormax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'displaycolormax', 'errors')}">
                                    <g:textField name="displaycolormax" maxlength="50" value="${styleInstance?.displaycolormax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaycolormin"><g:message code="style.displaycolormin.label" default="Displaycolormin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'displaycolormin', 'errors')}">
                                    <g:textField name="displaycolormin" maxlength="50" value="${styleInstance?.displaycolormin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displayfgmax"><g:message code="style.displayfgmax.label" default="Displayfgmax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'displayfgmax', 'errors')}">
                                    <g:textField name="displayfgmax" maxlength="50" value="${styleInstance?.displayfgmax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displayfgmin"><g:message code="style.displayfgmin.label" default="Displayfgmin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'displayfgmin', 'errors')}">
                                    <g:textField name="displayfgmin" maxlength="50" value="${styleInstance?.displayfgmin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displayogmax"><g:message code="style.displayogmax.label" default="Displayogmax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'displayogmax', 'errors')}">
                                    <g:textField name="displayogmax" maxlength="50" value="${styleInstance?.displayogmax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displayogmin"><g:message code="style.displayogmin.label" default="Displayogmin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'displayogmin', 'errors')}">
                                    <g:textField name="displayogmin" maxlength="50" value="${styleInstance?.displayogmin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="examples"><g:message code="style.examples.label" default="Examples" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'examples', 'errors')}">
                                    <g:textField name="examples" maxlength="50" value="${styleInstance?.examples}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fgmax"><g:message code="style.fgmax.label" default="Fgmax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'fgmax', 'errors')}">
                                    <g:textField name="fgmax" maxlength="50" value="${styleInstance?.fgmax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fgmin"><g:message code="style.fgmin.label" default="Fgmin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'fgmin', 'errors')}">
                                    <g:textField name="fgmin" maxlength="50" value="${styleInstance?.fgmin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fgrange"><g:message code="style.fgrange.label" default="Fgrange" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'fgrange', 'errors')}">
                                    <g:textField name="fgrange" maxlength="50" value="${styleInstance?.fgrange}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ibumax"><g:message code="style.ibumax.label" default="Ibumax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'ibumax', 'errors')}">
                                    <g:textField name="ibumax" maxlength="50" value="${styleInstance?.ibumax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ibumin"><g:message code="style.ibumin.label" default="Ibumin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'ibumin', 'errors')}">
                                    <g:textField name="ibumin" maxlength="50" value="${styleInstance?.ibumin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="iburange"><g:message code="style.iburange.label" default="Iburange" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'iburange', 'errors')}">
                                    <g:textField name="iburange" maxlength="50" value="${styleInstance?.iburange}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ingredients"><g:message code="style.ingredients.label" default="Ingredients" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'ingredients', 'errors')}">
                                    <g:textField name="ingredients" maxlength="250" value="${styleInstance?.ingredients}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="style.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${styleInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="notes"><g:message code="style.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${styleInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ogmax"><g:message code="style.ogmax.label" default="Ogmax" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'ogmax', 'errors')}">
                                    <g:textField name="ogmax" maxlength="50" value="${styleInstance?.ogmax}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ogmin"><g:message code="style.ogmin.label" default="Ogmin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'ogmin', 'errors')}">
                                    <g:textField name="ogmin" maxlength="50" value="${styleInstance?.ogmin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ogrange"><g:message code="style.ogrange.label" default="Ogrange" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'ogrange', 'errors')}">
                                    <g:textField name="ogrange" maxlength="50" value="${styleInstance?.ogrange}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="profile"><g:message code="style.profile.label" default="Profile" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'profile', 'errors')}">
                                    <g:textField name="profile" maxlength="250" value="${styleInstance?.profile}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="styleguide"><g:message code="style.styleguide.label" default="Styleguide" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'styleguide', 'errors')}">
                                    <g:textField name="styleguide" maxlength="50" value="${styleInstance?.styleguide}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="styleletter"><g:message code="style.styleletter.label" default="Styleletter" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'styleletter', 'errors')}">
                                    <g:textField name="styleletter" maxlength="50" value="${styleInstance?.styleletter}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="style.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: styleInstance, field: 'type', 'errors')}">
                                    <g:textField name="type" maxlength="50" value="${styleInstance?.type}" />
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
