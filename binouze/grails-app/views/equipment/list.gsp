
<%@ page import="fr.sug.springbatch.binouze.domain.Equipment" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'equipment.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="batchsize" title="${message(code: 'equipment.batchsize.label', default: 'Batchsize')}" />
                        
                            <g:sortableColumn property="boilsize" title="${message(code: 'equipment.boilsize.label', default: 'Boilsize')}" />
                        
                            <g:sortableColumn property="boiltime" title="${message(code: 'equipment.boiltime.label', default: 'Boiltime')}" />
                        
                            <g:sortableColumn property="calcboilvolume" title="${message(code: 'equipment.calcboilvolume.label', default: 'Calcboilvolume')}" />
                        
                            <g:sortableColumn property="displaybatchsize" title="${message(code: 'equipment.displaybatchsize.label', default: 'Displaybatchsize')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${equipmentInstanceList}" status="i" var="equipmentInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${equipmentInstance.id}">${fieldValue(bean: equipmentInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: equipmentInstance, field: "batchsize")}</td>
                        
                            <td>${fieldValue(bean: equipmentInstance, field: "boilsize")}</td>
                        
                            <td>${fieldValue(bean: equipmentInstance, field: "boiltime")}</td>
                        
                            <td>${fieldValue(bean: equipmentInstance, field: "calcboilvolume")}</td>
                        
                            <td>${fieldValue(bean: equipmentInstance, field: "displaybatchsize")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${equipmentInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
