<#import "/spring.ftl" as spring>
<nav class="navbar navbar-light navbar-expand-md navbar-green mb-3 sticky-top">
    <a class="navbar-brand" href="<@spring.url '/'/>">
        <img src="<@spring.url '/images/favicon.png'/>" width="56" height="56"
             class="d-inline-block align-top" alt="">Чё Куда</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar"
            aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbar">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="<@spring.url '/profile/'/>">
                    Профиль
                </a>
            </li>
        </ul>
        <form class="form-inline" method="get" action="/logout">
            <button class="btn btn-outline-dark myBtn" role="button" type="submit" id="login/logout">
                Выйти из аккаунта
            </button>
        </form>
    </div>
    <script type="text/javascript">
        var button = document.getElementById('login/logout');
        if (!(${isUserAuthenticated})) {
            button.innerHTML = "Зайти";
        }
    </script>
</nav>

