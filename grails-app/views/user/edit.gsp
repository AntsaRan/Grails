<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<a href="#edit-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="edit-user" class="content scaffold-edit" role="main">
    <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.user}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-8">
                            <g:form resource="${this.user}" method="PUT">
                                <g:hiddenField name="version" value="${this.user?.version}"/>
                                <!--<fieldset class="form">
                                <f:all bean="user" except="annonces ,userRoles"/>
                                </fieldset>-->
                                <fieldset class="form">
                                    <div class="fieldcontain required">
                                        <label for="password">Password
                                            <span class="required-indicator">*</span>
                                        </label>
                                        <input type="password" name="password" required="" value="" id="password">
                                    </div>

                                    <div class="fieldcontain required">
                                        <label for="username">Username
                                            <span class="required-indicator">*</span>
                                        </label>
                                        <input type="text" name="username" value="" required="" id="username">
                                    </div>

                                    <div class="required labelflex">
                                        <div for="passwordExpired" class="labeltext">
                                            Password Expired lolo
                                        </div>

                                        <div>
                                            <input class="checkflex" type="checkbox" name="passwordExpired"
                                                   id="passwordExpired">
                                        </div>
                                        <input type="hidden" name="_passwordExpired">
                                    </div>

                                    <div class="labelflex">
                                        <div for="accountLocked" class="labeltext">
                                            Account Locked
                                        </div>

                                        <div>
                                            <input class="checkflex" type="checkbox" name="accountLocked"
                                                   id="accountLocked">
                                            <input type="hidden" name="_accountLocked">
                                        </div>
                                    </div>

                                    <div class="labelflex">
                                        <div for="accountExpired" class="labeltext">Account Expired
                                        </div>

                                        <div>
                                            <input class="checkflex" type="checkbox" name="accountExpired"
                                                   id="accountExpired">
                                            <input type="hidden" name="_accountExpired">
                                        </div>
                                    </div>

                                    <div class="labelflex">
                                        <div for="enabled" class="labeltext">Enabled
                                        </div>

                                        <div>
                                            <input class="checkflex" type="checkbox" name="enabled" checked="checked"
                                                   id="enabled">
                                            <input type="hidden" name="_enabled">
                                        </div>
                                    </div>

                                </fieldset>
                                </br>
                                <fieldset class="">
                                    <input style="width: 100%; height: 50px; margin-top: 20px;"
                                           class="btn btn-success btn-icon-split" type="submit"
                                           value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                                </fieldset>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
