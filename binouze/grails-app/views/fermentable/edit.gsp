
<%@ page import="fr.sug.springbatch.binouze.domain.Fermentable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'fermentable.label', default: 'Fermentable')}" />
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
            <g:hasErrors bean="${fermentableInstance}">
            <div class="errors">
                <g:renderErrors bean="${fermentableInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${fermentableInstance?.id}" />
                <g:hiddenField name="version" value="${fermentableInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="recipeid"><g:message code="fermentable.recipeid.label" default="Recipeid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'recipeid', 'errors')}">
                                    <g:textField name="recipeid" maxlength="36" value="${fermentableInstance?.recipeid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="addafterboil"><g:message code="fermentable.addafterboil.label" default="Addafterboil" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'addafterboil', 'errors')}">
                                    <g:textField name="addafterboil" maxlength="50" value="${fermentableInstance?.addafterboil}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="amount"><g:message code="fermentable.amount.label" default="Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'amount', 'errors')}">
                                    <g:textField name="amount" maxlength="50" value="${fermentableInstance?.amount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="coarsefinediff"><g:message code="fermentable.coarsefinediff.label" default="Coarsefinediff" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'coarsefinediff', 'errors')}">
                                    <g:textField name="coarsefinediff" maxlength="50" value="${fermentableInstance?.coarsefinediff}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="color"><g:message code="fermentable.color.label" default="Color" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'color', 'errors')}">
                                    <g:textField name="color" maxlength="50" value="${fermentableInstance?.color}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="diastaticpower"><g:message code="fermentable.diastaticpower.label" default="Diastaticpower" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'diastaticpower', 'errors')}">
                                    <g:textField name="diastaticpower" maxlength="50" value="${fermentableInstance?.diastaticpower}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displayamount"><g:message code="fermentable.displayamount.label" default="Displayamount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'displayamount', 'errors')}">
                                    <g:textField name="displayamount" maxlength="50" value="${fermentableInstance?.displayamount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="displaycolor"><g:message code="fermentable.displaycolor.label" default="Displaycolor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'displaycolor', 'errors')}">
                                    <g:textField name="displaycolor" maxlength="50" value="${fermentableInstance?.displaycolor}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ibugalperlb"><g:message code="fermentable.ibugalperlb.label" default="Ibugalperlb" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'ibugalperlb', 'errors')}">
                                    <g:textField name="ibugalperlb" maxlength="50" value="${fermentableInstance?.ibugalperlb}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="inventory"><g:message code="fermentable.inventory.label" default="Inventory" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'inventory', 'errors')}">
                                    <g:textField name="inventory" maxlength="50" value="${fermentableInstance?.inventory}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="maxinbatch"><g:message code="fermentable.maxinbatch.label" default="Maxinbatch" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'maxinbatch', 'errors')}">
                                    <g:textField name="maxinbatch" maxlength="50" value="${fermentableInstance?.maxinbatch}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="moisture"><g:message code="fermentable.moisture.label" default="Moisture" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'moisture', 'errors')}">
                                    <g:textField name="moisture" maxlength="50" value="${fermentableInstance?.moisture}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="fermentable.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${fermentableInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="notes"><g:message code="fermentable.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${fermentableInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="origin"><g:message code="fermentable.origin.label" default="Origin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'origin', 'errors')}">
                                    <g:textField name="origin" maxlength="50" value="${fermentableInstance?.origin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="potential"><g:message code="fermentable.potential.label" default="Potential" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'potential', 'errors')}">
                                    <g:textField name="potential" maxlength="50" value="${fermentableInstance?.potential}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="protein"><g:message code="fermentable.protein.label" default="Protein" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'protein', 'errors')}">
                                    <g:textField name="protein" maxlength="50" value="${fermentableInstance?.protein}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="recommendmash"><g:message code="fermentable.recommendmash.label" default="Recommendmash" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'recommendmash', 'errors')}">
                                    <g:textField name="recommendmash" maxlength="50" value="${fermentableInstance?.recommendmash}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="supplier"><g:message code="fermentable.supplier.label" default="Supplier" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'supplier', 'errors')}">
                                    <g:textField name="supplier" maxlength="50" value="${fermentableInstance?.supplier}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="fermentable.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'type', 'errors')}">
                                    <g:textField name="type" maxlength="50" value="${fermentableInstance?.type}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="yield"><g:message code="fermentable.yield.label" default="Yield" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: fermentableInstance, field: 'yield', 'errors')}">
                                    <g:textField name="yield" maxlength="50" value="${fermentableInstance?.yield}" />
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
