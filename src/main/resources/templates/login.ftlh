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
<div class="container">
    <div class="card">
        <div class="card-title h2"> Зарегистрируйтесь :</div>
        <form method="post" action="<@spring.url '/signUp'/>">
            <#if signupError??>
                <div class="alert alert-danger alert-dismissible" role="alert">${alert}</div>
            </#if>
            <div class="form-group">
                <label for="login">Логин</label>
                <input autofocus="" class="form-control" id="login" name="login"
                       placeholder="Введите логин здесь..." required="">
            </div>
            <div class="form-group">
                <label for="password">Пароль</label>
                <input type="password" class="form-control" id="password" name="password"
                       placeholder="Введите пароль здесь..." required="">
            </div>
            <div class="form-group">
                <label for="firstName">Имя</label>
                <input id="firstName" class="form-control" name="firstName"
                       placeholder="Введите своё имя здесь..." required="">
            </div>
            <div class="form-group">
                <label for="lastName">Фамилия</label>
                <input id="lastName" class="form-control" name="lastName"
                       placeholder="Введите свою фамилию здесь..." required="">
            </div>
            <div class="form-group">
                <button class="btn-dark" type="submit">
                    Регистрация
                </button>
            </div>
        </form>
    </div>
</div>

<div class="container">
    <div class="card">
        <br>
        <div class="card-title h2"> Или войдите :</div>
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
            <div class="form-group">
                <label for="password">Пароль</label>
                <input type="password" class="form-control" id="password" name="password"
                       placeholder="Введите пароль здесь..." required="">
            </div>
            <div class="form-group">
                <input type="checkbox" class="form-check-label" id="remember-me" name="remember-me">
                <label for="remember-me">Запомните меня!</label>
            </div>
            <div class="form-group">
                <button class="btn-dark" type="submit">
                    Войти
                </button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
