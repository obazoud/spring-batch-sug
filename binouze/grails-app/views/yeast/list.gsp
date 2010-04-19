
<%@ page import="fr.sug.springbatch.binouze.domain.Yeast" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'yeast.label', default: 'Yeast')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'yeast.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="recipeid" title="${message(code: 'yeast.recipeid.label', default: 'Recipeid')}" />
                        
                            <g:sortableColumn property="addtosecondary" title="${message(code: 'yeast.addtosecondary.label', default: 'Addtosecondary')}" />
                        
                            <g:sortableColumn property="amount" title="${message(code: 'yeast.amount.label', default: 'Amount')}" />
                        
                            <g:sortableColumn property="amountisweight" title="${message(code: 'yeast.amountisweight.label', default: 'Amountisweight')}" />
                        
                            <g:sortableColumn property="attenuation" title="${message(code: 'yeast.attenuation.label', default: 'Attenuation')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${yeastInstanceList}" status="i" var="yeastInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${yeastInstance.id}">${fieldValue(bean: yeastInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: yeastInstance, field: "recipeid")}</td>
                        
                            <td>${fieldValue(bean: yeastInstance, field: "addtosecondary")}</td>
                        
                            <td>${fieldValue(bean: yeastInstance, field: "amount")}</td>
                        
                            <td>${fieldValue(bean: yeastInstance, field: "amountisweight")}</td>
                        
                            <td>${fieldValue(bean: yeastInstance, field: "attenuation")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${yeastInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
