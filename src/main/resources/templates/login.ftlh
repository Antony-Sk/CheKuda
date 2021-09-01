<#ftl encoding='UTF-8'>
<#import "/spring.ftl" as spring/>
<!doctype html>
<html lang="ru">
<head>
    <#include "includes.ftlh"/>
    <title>Che Kuda</title>
</head>
<body>
<#include "navBar.ftlh"/>
<div> Зарегистрируйтесь :</div>
<form method="post" action="<@spring.url '/signUp'/>">
    <#if signupError??>
        <div class="alert alert-danger alert-dismissible" role="alert">${alert}</div>
    </#if>
    <div class="form-group">
        <label for="login">Логин</label>
        <input autofocus="" class="form-control" id="login" name="login"
               placeholder="Введите логин здесь..." required="">
    </div>
    <div>
        <label for="password">Пароль</label>
        <input type="password" id="password" name="password"
               placeholder="Введите пароль здесь..." required="">
    </div>
    <div>
        <label for="firstName">Имя</label>
        <input id="firstName" name="firstName"
               placeholder="Введите своё имя здесь..." required="">
    </div>
    <div>
        <label for="lastName">Фамилия</label>
        <input id="lastName" name="lastName"
               placeholder="Введите свою фамилию здесь..." required="">
    </div>
    <button type="submit">
        Регистрация
    </button>

</form>
<br>
<div> Или войдите :</div>
<br>
<form method="post" action="<@spring.url '/login'/>">
    <#if error??>
        <div class="alert alert-danger alert-dismissible" role="alert">
            Имя пользователя или пароль введены неправильно
        </div>
    </#if>
    <div class="form-group">
        <label for="login">Логин</label>
        <input autofocus="" class="form-control" id="login" name="login"
               placeholder="Введите логин здесь..." required="">
    </div>
    <div>
        <label for="password">Пароль</label>
        <input type="password" id="password" name="password"
               placeholder="Введите пароль здесь..." required="">
    </div>
    <div>
        <input type="checkbox" id="remember-me" name="remember-me">
        <label for="remember-me">Запомните меня!</label>
    </div>
    <button type="submit">
        Войти
    </button>
</form>
</body>
</html>
