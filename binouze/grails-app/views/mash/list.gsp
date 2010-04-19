
<%@ page import="fr.sug.springbatch.binouze.domain.Mash" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mash.label', default: 'Mash')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'mash.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="displaygraintemp" title="${message(code: 'mash.displaygraintemp.label', default: 'Displaygraintemp')}" />
                        
                            <g:sortableColumn property="displayspargetemp" title="${message(code: 'mash.displayspargetemp.label', default: 'Displayspargetemp')}" />
                        
                            <g:sortableColumn property="displaytuntemp" title="${message(code: 'mash.displaytuntemp.label', default: 'Displaytuntemp')}" />
                        
                            <g:sortableColumn property="displaytunweight" title="${message(code: 'mash.displaytunweight.label', default: 'Displaytunweight')}" />
                        
                            <g:sortableColumn property="equipadjust" title="${message(code: 'mash.equipadjust.label', default: 'Equipadjust')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${mashInstanceList}" status="i" var="mashInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${mashInstance.id}">${fieldValue(bean: mashInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: mashInstance, field: "displaygraintemp")}</td>
                        
                            <td>${fieldValue(bean: mashInstance, field: "displayspargetemp")}</td>
                        
                            <td>${fieldValue(bean: mashInstance, field: "displaytuntemp")}</td>
                        
                            <td>${fieldValue(bean: mashInstance, field: "displaytunweight")}</td>
                        
                            <td>${fieldValue(bean: mashInstance, field: "equipadjust")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${mashInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
