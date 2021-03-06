<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<ol class="breadcrumb">
    <li><g:link controller="mongoServer" action="show"
                id="${mongoDatabase.owner.id}">${mongoDatabase.owner.host}:${mongoDatabase.owner.port}</g:link></li>
    <li class="active">${mongoDatabase.name}</li>
</ol>
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                ${mongoDatabase.name}
            </div>
            <div class="panel-body">
                <ul class="list-group">
                    <g:each in="${mongoDatabase.collections}">
                        <g:link controller="mongoCollection" action="show" id="${it.id}"
                                class="list-group-item">${it.name}
                        </g:link>
                    </g:each>
                </ul>
            </div>
            <div class="panel-footer">

            </div>
        </div>
    </div>
</div>
</body>
</html>