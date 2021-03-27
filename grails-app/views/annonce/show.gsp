<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-annonce" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div id="show-annonce" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="col-xl-6 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Title</h6>
                        </div>
                        <div class="card-body">
                            ${annonce.title}
                        </div>
                    </div>
                </div>
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Description</h6>
                        </div>
                        <div class="card-body">
                            ${annonce.description}
                        </div>
                    </div>
                </div>
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Price</h6>
                        </div>
                        <div class="card-body">
                            ${annonce.price}
                        </div>
                    </div>
                </div>
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                        </div>
                        <div class="card-body">
                            <g:each in="${annonce.illustrations}" var="illustration">
                                <asset:image src="${illustration.filename}"></asset:image>
                            </g:each>
                        </div>
                    </div>
                </div>
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        By <a href="/projet/user/show/${annonce.id}">${annonce.author.username}</a>
                    </div>
                </div>
            </div>
        </div>
        <g:form resource="${this.annonce}" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${this.annonce}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
