
<%@ page import="fr.sug.springbatch.binouze.domain.Yeast" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'yeast.label', default: 'Yeast')}" />
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
                            <td valign="top" class="name"><g:message code="yeast.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.recipeid.label" default="Recipeid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "recipeid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.addtosecondary.label" default="Addtosecondary" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "addtosecondary")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.amount.label" default="Amount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "amount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.amountisweight.label" default="Amountisweight" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "amountisweight")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.attenuation.label" default="Attenuation" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "attenuation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.bestfor.label" default="Bestfor" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "bestfor")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.culturedate.label" default="Culturedate" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "culturedate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.displayamount.label" default="Displayamount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "displayamount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.dispmaxtemp.label" default="Dispmaxtemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "dispmaxtemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.dispmintemp.label" default="Dispmintemp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "dispmintemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.flocculation.label" default="Flocculation" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "flocculation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.form.label" default="Form" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "form")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.inventory.label" default="Inventory" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "inventory")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.laboratory.label" default="Laboratory" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "laboratory")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.maxreuse.label" default="Maxreuse" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "maxreuse")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.maxtemperature.label" default="Maxtemperature" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "maxtemperature")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.mintemperature.label" default="Mintemperature" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "mintemperature")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.productid.label" default="Productid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "productid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.timescultured.label" default="Timescultured" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "timescultured")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="yeast.type.label" default="Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: yeastInstance, field: "type")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${yeastInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
