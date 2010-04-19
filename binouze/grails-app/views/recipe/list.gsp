
<%@ page import="fr.sug.springbatch.binouze.domain.Recipe" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'recipe.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="abv" title="${message(code: 'recipe.abv.label', default: 'Abv')}" />
                        
                            <g:sortableColumn property="actualefficiency" title="${message(code: 'recipe.actualefficiency.label', default: 'Actualefficiency')}" />
                        
                            <g:sortableColumn property="age" title="${message(code: 'recipe.age.label', default: 'Age')}" />
                        
                            <g:sortableColumn property="agetemp" title="${message(code: 'recipe.agetemp.label', default: 'Agetemp')}" />
                        
                            <g:sortableColumn property="asstbrewer" title="${message(code: 'recipe.asstbrewer.label', default: 'Asstbrewer')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${recipeInstanceList}" status="i" var="recipeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${recipeInstance.id}">${fieldValue(bean: recipeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: recipeInstance, field: "abv")}</td>
                        
                            <td>${fieldValue(bean: recipeInstance, field: "actualefficiency")}</td>
                        
                            <td>${fieldValue(bean: recipeInstance, field: "age")}</td>
                        
                            <td>${fieldValue(bean: recipeInstance, field: "agetemp")}</td>
                        
                            <td>${fieldValue(bean: recipeInstance, field: "asstbrewer")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${recipeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
