
<%@ page import="fr.sug.springbatch.binouze.domain.Misc" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'misc.label', default: 'Misc')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'misc.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="recipeid" title="${message(code: 'misc.recipeid.label', default: 'Recipeid')}" />
                        
                            <g:sortableColumn property="amount" title="${message(code: 'misc.amount.label', default: 'Amount')}" />
                        
                            <g:sortableColumn property="amountisweight" title="${message(code: 'misc.amountisweight.label', default: 'Amountisweight')}" />
                        
                            <g:sortableColumn property="batchsize" title="${message(code: 'misc.batchsize.label', default: 'Batchsize')}" />
                        
                            <g:sortableColumn property="displayamount" title="${message(code: 'misc.displayamount.label', default: 'Displayamount')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${miscInstanceList}" status="i" var="miscInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${miscInstance.id}">${fieldValue(bean: miscInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: miscInstance, field: "recipeid")}</td>
                        
                            <td>${fieldValue(bean: miscInstance, field: "amount")}</td>
                        
                            <td>${fieldValue(bean: miscInstance, field: "amountisweight")}</td>
                        
                            <td>${fieldValue(bean: miscInstance, field: "batchsize")}</td>
                        
                            <td>${fieldValue(bean: miscInstance, field: "displayamount")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${miscInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
