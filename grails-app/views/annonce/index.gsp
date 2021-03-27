<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div id="list-user" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Price</th>
            <th>Illustrations</th>
            <th>Author</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${annonceList}" var="annonce">
            <tr class="even">
                <td><a href="/projet/annonce/show/${annonce.id}">${annonce.title}</a></td>
                <td>${annonce.description}</td>
                <td>${annonce.price}</td>
                <td>
                    <g:each in="${annonce.illustrations}" var="illustration">
                        <img src="${baseUrl + illustration.filename}"/>
                    </g:each>
                </td>
                <td>${annonce.author.username}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${annonceCount ?: 0}" />
    </div>
</div>
</body>
</html>
