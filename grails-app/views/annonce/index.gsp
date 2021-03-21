<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-annonce" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800"><g:message code="default.list.label" args="[entityName]"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th class="sortable"><a href="/projet/annonce/index?sort=title&amp;max=10&amp;order=asc">Title</a>
                    </th>
                    <th class="sortable"><a
                            href="/projet/annonce/index?sort=description&amp;max=10&amp;order=asc">Description</a></th>
                    <th class="sortable"><a href="/projet/annonce/index?sort=price&amp;max=10&amp;order=asc">Price</a>
                    </th>
                    <th class="sortable"><a
                            href="/projet/annonce/index?sort=illustrations&amp;max=10&amp;order=asc">Illustrations</a>
                    </th>
                    <th class="sortable"><a href="/projet/annonce/index?sort=author&amp;max=10&amp;order=asc">Author</a>
                    </th>
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
                        <td>
                            ${annonce.author.username}
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12 col-md-5"></div>

        <div id="list-annonce" class="content scaffold-list" role="main">
            <div class="pagination">
                <g:paginate total="${annonceCount ?: 0}"/>
            </div>
        </div>
        <div class="col-sm-12 col-md-7">
            <div class="dataTables_paginate paging_simple_numbers"
                 id="dataTable_paginate">
                <ul class="pagination">
                    <li class="paginate_button page-item previous disabled" id="dataTable_previous">
                        <a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">
                            Previous
                        </a>
                    </li>
                    <li class="paginate_button page-item active">
                        <a href="#" aria-controls="dataTable" data-dt-idx="1"
                           tabindex="0" class="page-link">
                            1
                        </a>
                    </li>
                    <li class="paginate_button page-item next" id="dataTable_next">
                        <a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">
                            Next
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
