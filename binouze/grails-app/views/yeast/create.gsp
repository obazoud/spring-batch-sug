
<%@ page import="fr.sug.springbatch.binouze.domain.Yeast" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'yeast.label', default: 'Yeast')}" />
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
            <g:hasErrors bean="${yeastInstance}">
            <div class="errors">
                <g:renderErrors bean="${yeastInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="recipeid"><g:message code="yeast.recipeid.label" default="Recipeid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'recipeid', 'errors')}">
                                    <g:textField name="recipeid" maxlength="36" value="${yeastInstance?.recipeid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="addtosecondary"><g:message code="yeast.addtosecondary.label" default="Addtosecondary" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'addtosecondary', 'errors')}">
                                    <g:textField name="addtosecondary" maxlength="50" value="${yeastInstance?.addtosecondary}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="amount"><g:message code="yeast.amount.label" default="Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'amount', 'errors')}">
                                    <g:textField name="amount" maxlength="50" value="${yeastInstance?.amount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="amountisweight"><g:message code="yeast.amountisweight.label" default="Amountisweight" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'amountisweight', 'errors')}">
                                    <g:textField name="amountisweight" maxlength="50" value="${yeastInstance?.amountisweight}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="attenuation"><g:message code="yeast.attenuation.label" default="Attenuation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'attenuation', 'errors')}">
                                    <g:textField name="attenuation" maxlength="50" value="${yeastInstance?.attenuation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bestfor"><g:message code="yeast.bestfor.label" default="Bestfor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'bestfor', 'errors')}">
                                    <g:textField name="bestfor" maxlength="250" value="${yeastInstance?.bestfor}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="culturedate"><g:message code="yeast.culturedate.label" default="Culturedate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'culturedate', 'errors')}">
                                    <g:textField name="culturedate" maxlength="50" value="${yeastInstance?.culturedate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayamount"><g:message code="yeast.displayamount.label" default="Displayamount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'displayamount', 'errors')}">
                                    <g:textField name="displayamount" maxlength="50" value="${yeastInstance?.displayamount}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dispmaxtemp"><g:message code="yeast.dispmaxtemp.label" default="Dispmaxtemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'dispmaxtemp', 'errors')}">
                                    <g:textField name="dispmaxtemp" maxlength="50" value="${yeastInstance?.dispmaxtemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dispmintemp"><g:message code="yeast.dispmintemp.label" default="Dispmintemp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'dispmintemp', 'errors')}">
                                    <g:textField name="dispmintemp" maxlength="50" value="${yeastInstance?.dispmintemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="flocculation"><g:message code="yeast.flocculation.label" default="Flocculation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'flocculation', 'errors')}">
                                    <g:textField name="flocculation" maxlength="50" value="${yeastInstance?.flocculation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="form"><g:message code="yeast.form.label" default="Form" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'form', 'errors')}">
                                    <g:textField name="form" maxlength="50" value="${yeastInstance?.form}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="inventory"><g:message code="yeast.inventory.label" default="Inventory" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'inventory', 'errors')}">
                                    <g:textField name="inventory" maxlength="50" value="${yeastInstance?.inventory}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="laboratory"><g:message code="yeast.laboratory.label" default="Laboratory" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'laboratory', 'errors')}">
                                    <g:textField name="laboratory" maxlength="50" value="${yeastInstance?.laboratory}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="maxreuse"><g:message code="yeast.maxreuse.label" default="Maxreuse" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'maxreuse', 'errors')}">
                                    <g:textField name="maxreuse" maxlength="50" value="${yeastInstance?.maxreuse}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="maxtemperature"><g:message code="yeast.maxtemperature.label" default="Maxtemperature" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'maxtemperature', 'errors')}">
                                    <g:textField name="maxtemperature" maxlength="50" value="${yeastInstance?.maxtemperature}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mintemperature"><g:message code="yeast.mintemperature.label" default="Mintemperature" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'mintemperature', 'errors')}">
                                    <g:textField name="mintemperature" maxlength="50" value="${yeastInstance?.mintemperature}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="yeast.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${yeastInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="yeast.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" maxlength="250" value="${yeastInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="productid"><g:message code="yeast.productid.label" default="Productid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'productid', 'errors')}">
                                    <g:textField name="productid" maxlength="50" value="${yeastInstance?.productid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="timescultured"><g:message code="yeast.timescultured.label" default="Timescultured" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'timescultured', 'errors')}">
                                    <g:textField name="timescultured" maxlength="50" value="${yeastInstance?.timescultured}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="yeast.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: yeastInstance, field: 'type', 'errors')}">
                                    <g:textField name="type" maxlength="50" value="${yeastInstance?.type}" />
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
