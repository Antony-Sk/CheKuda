<#ftl encoding='UTF-8'>
<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="ru">
<head>
    <#include "includes.ftlh"/>
    <title>Che Kuda</title>
</head>
<body>
<#include "navBar.ftlh"/>
<div class="container">
    <div class="card">
        <div class="card-header text-center">
            <div class="card-title h2">
                My friends
            </div>
        </div>
        <div class="card-body">
            <div class="card-text text-center">
                <table class="table table-bordered table-hover table-responsive-md">
                    <tr class="thead-dark">
                        <th>Name</th>
                        <th>Last name</th>
                    </tr>
                    <#list friends as user>
                        <tr>
                            <th>${user.firstName}</th>
                            <th>${user.lastName}</th>
                        </tr>
                    </#list>
                </table>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header text-center">
            <div class="card-title h2">
                Last friends rates
            </div>
        </div>
        <div class="card-body">
            <div class="card-text text-center">
                <table class="table table-bordered table-hover table-responsive-md">
                    <tr class="thead-dark">
                        <th>Place</th>
                        <th>Rate</th>
                        <th>Who</th>
                        <th>Time</th>
                    </tr>
                    <#list friendsRates as rate>
                        <tr>
                            <th>${rate.restaurant.description}</th>
                            <th>${rate.rating}</th>
                            <th>${rate.owner.firstName}</th>
                            <th>${rate.markTime}</th>
                        </tr>
                    </#list>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>