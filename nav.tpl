<a href="index.php" class="logo" title="{$_ADMINLANG.home.title}">
    <img src="../../assets/logo.png" style="max-width: 35px!important;">
</a>

<ul class="left-nav">
    <li class="bt visible-sidebar">
        <a href="#" class="nav-toggle" id="btnNavbarToggle">
            <i class="fas fa-bars always"></i>
        </a>
    </li>
</ul>

<div class="navbar-collapse">
    <ul>
        <li class="">
            <a id="Menu-Clients" href="configproducts.php" onclick="">
                <i class="fas fa-user"></i>
                Créer une chaussure
            </a>
        </li>
    </ul>

    <ul class="right-nav">

        <li class="bt account has-dropdown">
            <a id="Menu-Account" href="#" onclick="return false;">
                <img src="https://www.gravatar.com/avatar/{md5(\WHMCS\User\Admin::getAuthenticatedUser()->email)}?s=25&d=mp" class="profile-icon" alt="Gravatar">
                <span class="visible-sidebar">{$_ADMINLANG.account}</span>
            </a>
            <ul class="slim drop-left">
                <li><a href="myaccount.php">{$_ADMINLANG.global.myaccount}</a></li>
                <li><a href="#" data-toggle="modal" data-target="#modalMyNotes">{$_ADMINLANG.global.mynotes}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="../">{$_ADMINLANG.global.clientarea}</a></li>
                <li role="separator" class="divider"></li>
                <li><a id="Menu-Account-Logout" href="logout.php">{$_ADMINLANG.global.logout}</a></li>
            </ul>
        </li>






    </ul>
</div>