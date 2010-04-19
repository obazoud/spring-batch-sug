
<%@ page import="fr.sug.springbatch.binouze.domain.Hop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'hop.label', default: 'Hop')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'hop.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="recipeid" title="${message(code: 'hop.recipeid.label', default: 'Recipeid')}" />
                        
                            <g:sortableColumn property="alpha" title="${message(code: 'hop.alpha.label', default: 'Alpha')}" />
                        
                            <g:sortableColumn property="amount" title="${message(code: 'hop.amount.label', default: 'Amount')}" />
                        
                            <g:sortableColumn property="beta" title="${message(code: 'hop.beta.label', default: 'Beta')}" />
                        
                            <g:sortableColumn property="caryophyllene" title="${message(code: 'hop.caryophyllene.label', default: 'Caryophyllene')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${hopInstanceList}" status="i" var="hopInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${hopInstance.id}">${fieldValue(bean: hopInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: hopInstance, field: "recipeid")}</td>
                        
                            <td>${fieldValue(bean: hopInstance, field: "alpha")}</td>
                        
                            <td>${fieldValue(bean: hopInstance, field: "amount")}</td>
                        
                            <td>${fieldValue(bean: hopInstance, field: "beta")}</td>
                        
                            <td>${fieldValue(bean: hopInstance, field: "caryophyllene")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${hopInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
