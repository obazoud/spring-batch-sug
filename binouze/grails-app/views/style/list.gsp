
<%@ page import="fr.sug.springbatch.binouze.domain.Style" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'style.label', default: 'Style')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'style.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="abvmax" title="${message(code: 'style.abvmax.label', default: 'Abvmax')}" />
                        
                            <g:sortableColumn property="abvmin" title="${message(code: 'style.abvmin.label', default: 'Abvmin')}" />
                        
                            <g:sortableColumn property="abvrange" title="${message(code: 'style.abvrange.label', default: 'Abvrange')}" />
                        
                            <g:sortableColumn property="carbmax" title="${message(code: 'style.carbmax.label', default: 'Carbmax')}" />
                        
                            <g:sortableColumn property="carbmin" title="${message(code: 'style.carbmin.label', default: 'Carbmin')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${styleInstanceList}" status="i" var="styleInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${styleInstance.id}">${fieldValue(bean: styleInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: styleInstance, field: "abvmax")}</td>
                        
                            <td>${fieldValue(bean: styleInstance, field: "abvmin")}</td>
                        
                            <td>${fieldValue(bean: styleInstance, field: "abvrange")}</td>
                        
                            <td>${fieldValue(bean: styleInstance, field: "carbmax")}</td>
                        
                            <td>${fieldValue(bean: styleInstance, field: "carbmin")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${styleInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
