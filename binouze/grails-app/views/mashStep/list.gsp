
<%@ page import="fr.sug.springbatch.binouze.domain.MashStep" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mashStep.label', default: 'MashStep')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'mashStep.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="mashid" title="${message(code: 'mashStep.mashid.label', default: 'Mashid')}" />
                        
                            <g:sortableColumn property="decoctionamt" title="${message(code: 'mashStep.decoctionamt.label', default: 'Decoctionamt')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'mashStep.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="displayinfuseamt" title="${message(code: 'mashStep.displayinfuseamt.label', default: 'Displayinfuseamt')}" />
                        
                            <g:sortableColumn property="displaysteptemp" title="${message(code: 'mashStep.displaysteptemp.label', default: 'Displaysteptemp')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${mashStepInstanceList}" status="i" var="mashStepInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${mashStepInstance.id}">${fieldValue(bean: mashStepInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: mashStepInstance, field: "mashid")}</td>
                        
                            <td>${fieldValue(bean: mashStepInstance, field: "decoctionamt")}</td>
                        
                            <td>${fieldValue(bean: mashStepInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: mashStepInstance, field: "displayinfuseamt")}</td>
                        
                            <td>${fieldValue(bean: mashStepInstance, field: "displaysteptemp")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${mashStepInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
