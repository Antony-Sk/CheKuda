<#ftl encoding='UTF-8'>
<#import "/spring.ftl" as spring/>
<!doctype html>
<html lang="ru">
<head>
    <title>Che Kuda</title>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header text-center">
            <div class="card-title h2">
                Активные users
            </div>
        </div>
        <div class="card-body">
            <div class="card-text text-center">
                <table class="table table-bordered table-hover table-responsive-md">
                    <tr class="thead-dark">
                        <th>Name</th>
                        <th>-</th>
                        <th>-</th>
                    </tr>
                    <#list users as user>
                        <tr>
                            <th><a href="/contest/${user.id}">${user.firstName}</a></th>
                            <th>${user.lastName}</th>
                            <th>${user.login}</th>
                        </tr>
                    </#list>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
