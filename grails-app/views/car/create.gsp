

<%@ page import="com.intelligrape.Car" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${carInstance}">
            <div class="errors">
                <g:renderErrors bean="${carInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="engine"><g:message code="car.engine.label" default="Engine" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: carInstance, field: 'engine', 'errors')}">
                                    <g:select name="engine.id" from="${com.intelligrape.Engine.list()}" optionKey="id" value="${carInstance?.engine?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="model"><g:message code="car.model.label" default="Model" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: carInstance, field: 'model', 'errors')}">
                                    <g:textField name="model" value="${carInstance?.model}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="car.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: carInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${carInstance?.name}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
