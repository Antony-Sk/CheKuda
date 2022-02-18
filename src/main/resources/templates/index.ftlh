<#ftl encoding='UTF-8'>
<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="ru">
<head>
    <script src="https://maps.api.2gis.ru/2.0/loader.js"/>
    <#include "includes.ftlh"/>
    <title>Che Kuda</title>
    <script id="scrmap" type="text/javascript">
        var map;
        DG.then(function () {
            map = DG.map('map', {
                'center': [55.752, 48.745],
                'zoom': 14
            });
            let popups = [];
            <#list restaurants as res>
            var x = parseFloat('${res.XCoordinate}'.replace(',', '.'));
            var y = parseFloat('${res.YCoordinate}'.replace(',', '.'));
            let p = DG.marker([x, y]).addTo(map).bindPopup('${res.description}', {
                'minWidth': 80,
            });
            popups.add(p);
            </#list>
        });

    </script>
</head>
<body>
<#include "navBar.ftlh"/>
<aside style="float: right">
    <div class="card">
        <table class="table table-striped table-bordered table-sm" id="res-list" hidden>
            <thead>
            <tr>
                <th>Название</th>
                <th>Оценка друзей</th>
                <th>Место</th>
            </tr>
            </thead>
            <tbody>
            <#list restaurants as res>
                <tr>
                    <td>${res.description}</td>
                    <td>4.1/5.0</td>
                    <td id="show-res-${res.id}">показать на карте</td>
                </tr>
                <script type="text/javascript">
                    document.getElementById("show-res-${res.id}").onclick = function () {
                        var x = parseFloat('${res.XCoordinate}'.replace(',', '.'));
                        var y = parseFloat('${res.YCoordinate}'.replace(',', '.'));

                        map.setView([x, y], 20);
                    }
                </script>
            </#list>
            </tbody>
        </table>
        <input type="button" id="show-list-of-restaurants" value="Заведения поблизости"
               class="btn-dark">
        <script type="text/javascript">
            document.getElementById('show-list-of-restaurants').onclick = function () {
                document.getElementById('res-list').hidden = document.getElementById('res-list').hidden === false;
            }
        </script>
    </div>
</aside>
<div class="container">
    <div class="card" style="height: 800px">
        <div class="card-title">
            <div class="h6" style="text-align: center; font-weight: bold">
                Доступные места
            </div>
        </div>
        <div class="card-body">
            <div id="map" style="width: 80%; height: 70%; margin-left: auto;margin-right: auto;"></div>
        </div>


    </div>
</div>
</body>
</html>