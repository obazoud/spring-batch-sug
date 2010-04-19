
<%@ page import="fr.sug.springbatch.binouze.domain.Fermentable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'fermentable.label', default: 'Fermentable')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'fermentable.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="recipeid" title="${message(code: 'fermentable.recipeid.label', default: 'Recipeid')}" />
                        
                            <g:sortableColumn property="addafterboil" title="${message(code: 'fermentable.addafterboil.label', default: 'Addafterboil')}" />
                        
                            <g:sortableColumn property="amount" title="${message(code: 'fermentable.amount.label', default: 'Amount')}" />
                        
                            <g:sortableColumn property="coarsefinediff" title="${message(code: 'fermentable.coarsefinediff.label', default: 'Coarsefinediff')}" />
                        
                            <g:sortableColumn property="color" title="${message(code: 'fermentable.color.label', default: 'Color')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${fermentableInstanceList}" status="i" var="fermentableInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${fermentableInstance.id}">${fieldValue(bean: fermentableInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: fermentableInstance, field: "recipeid")}</td>
                        
                            <td>${fieldValue(bean: fermentableInstance, field: "addafterboil")}</td>
                        
                            <td>${fieldValue(bean: fermentableInstance, field: "amount")}</td>
                        
                            <td>${fieldValue(bean: fermentableInstance, field: "coarsefinediff")}</td>
                        
                            <td>${fieldValue(bean: fermentableInstance, field: "color")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${fermentableInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
