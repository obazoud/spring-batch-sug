
<%@ page import="fr.sug.springbatch.binouze.domain.Water" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'water.label', default: 'Water')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'water.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="recipeid" title="${message(code: 'water.recipeid.label', default: 'Recipeid')}" />
                        
                            <g:sortableColumn property="amount" title="${message(code: 'water.amount.label', default: 'Amount')}" />
                        
                            <g:sortableColumn property="bicarbonate" title="${message(code: 'water.bicarbonate.label', default: 'Bicarbonate')}" />
                        
                            <g:sortableColumn property="calcium" title="${message(code: 'water.calcium.label', default: 'Calcium')}" />
                        
                            <g:sortableColumn property="chloride" title="${message(code: 'water.chloride.label', default: 'Chloride')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${waterInstanceList}" status="i" var="waterInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${waterInstance.id}">${fieldValue(bean: waterInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: waterInstance, field: "recipeid")}</td>
                        
                            <td>${fieldValue(bean: waterInstance, field: "amount")}</td>
                        
                            <td>${fieldValue(bean: waterInstance, field: "bicarbonate")}</td>
                        
                            <td>${fieldValue(bean: waterInstance, field: "calcium")}</td>
                        
                            <td>${fieldValue(bean: waterInstance, field: "chloride")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${waterInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
