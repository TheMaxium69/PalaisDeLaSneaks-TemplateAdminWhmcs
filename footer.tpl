        </div>
        <div class="clear"></div>
    </div>

    <div class="footerbar">
        <div class="copyright">
            <!-- Removal of the WHMCS copyright notice is strictly prohibited -->
            <!-- Branding removal entitlement does not permit this line to be removed -->
            Copyright &copy;
            <a href="https://www.whmcs.com/" target="_blank">WHMCS</a> {date('Y')}.
            All Rights Reserved.
        </div>
        <div class="links">
            <a href="https://www.whmcs.com/report-a-bug" target="_blank">Report a Bug</a>
            |
            <a href="https://docs.whmcs.com/" target="_blank">Documentation</a>
            |
            <a href="https://www.whmcs.com/contact" target="_blank">Contact Us</a>
        </div>
    </div>

{* STYLE GENERAL *}

        <style>
            #frmAddProductGroup {
                margin: 20px;
                padding: 20px;
                background-color: #f4f4f4;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .fieldlabel {
                width: 25%;
                text-align: right;
                padding-right: 10px;
                font-weight: bold;
            }

            .fieldarea {
                width: 75%;
                padding-left: 10px;
            }

            .form-control {
                width: 100%;
                padding: 10px;
                margin-bottom: 0px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                height: unset!important;
                max-width: unset!important;
            }

            .btn-primary{
                background-color: #bb2d3b;
                border-color: #bb2d3b;
            }

            .btn-primary:hover{
                background-color: #a70a1a;
                border-color: #a70a1a;
            }

            .btn-primary:active{
                background-color: #a70a1a;
                border-color: #a70a1a;
            }

            .btn-primary:focus{
                background-color: #a70a1a!important;
                border-color: #a70a1a!important;;
            }

            table.form td.fieldarea {
                background-color: #ffbdbd;
                border-radius: 5px;
            }

            table.form {
                background-color: #fff;
                border: 3px solid white;
            }

            table.datatable th {
                background-color: #bb2d3b;
            }

            #dismissPromos{
                display: none;
            }

            .product-mc-promos{
                display: none;
            }

        </style>

{* GESTION PAGE *}

        <script>
            //  document.getElementById("tabLink1").textContent = "Nouveau texte";
            var pContentArea = document.querySelector(".contentarea p");
            if (pContentArea){
                pContentArea.textContent = "Gestion des Chaussures";
            }

            var CreateGrouplink = document.querySelector("#Create-Group-link");
            CreateGrouplink.innerHTML = '<i class="fas fa-plus"></i> Créer une marque'
            var CreateProductlink = document.querySelector("#Create-Product-link");
            CreateProductlink.innerHTML = '<i class="fas fa-plus-circle"></i> Créer une chaussure'
            var DuplicateProductlink = document.querySelector("#Duplicate-Product-link");
            DuplicateProductlink.innerHTML = '<i class="fas fa-plus-square"></i> Dupliqué une chaussure'

        </script>

{* CREATE/EDITE GROUP *}

        <script>

            var isCreateGroupPage = document.querySelector('#frmAddProductGroup');
            if (isCreateGroupPage){
                console.log("page GroupCreate");

                var titleGroupCreate = document.querySelector("h2:first-of-type");
                titleGroupCreate.textContent = "Créer/Editer une marque";

                var nameFormTd = document.querySelector(".contentarea #frmAddProductGroup tr:first-child");
                nameFormTd.querySelector("td:first-child").textContent = "Nom de la marque";
                nameFormTd.querySelector("td:last-child input").placeholder = "exemple: Nike";
            }

        </script>

        <style>

            #frmAddProductGroup{
                background-color: white;
            }

            .contentarea #frmAddProductGroup tr:not(:first-child){
                display: none;
            }

            #translateProductGroupName{
                display: none;
            }
        </style>

{* CREATE-FIRST PRODUCT *}

        <script>

            var inputTypeProduct = document.querySelector('#frmAddProduct .form-group:first-child input');
            inputTypeProduct.value = "other";



        </script>

        <style>

            /*#frmAddProduct div.form-group:nth-child(2){*/

            /*    background-color: red;*/

            /*}*/

        </style>


{* EDIT/CREATE-SECOND PRODUCT *}

        <script>

            var asChecked = document.querySelector("#tab4 table tr:nth-child(6) td.fieldarea label:nth-child(3) input");
            if (asChecked){
                asChecked.checked = true;
            }

            var hiddenCheck = document.querySelector("#tab1 table tr:nth-child(10) input");
            hiddenCheck.checked = false;
            
            var stockCheck = document.querySelector("#tab1 table tr:nth-child(7) input[name='stockcontrol']");
            stockCheck.checked = true;

            var stockValueOne = document.querySelector("#tab1 table tr:nth-child(7) input[name='qty']");
            stockValueOne.value = "1";

            var typeProductHeberg = document.querySelector("#tab1 table tr:nth-child(1) option:nth-child(1)");
            typeProductHeberg.setAttribute('selected', false);

            var typeProductOther = document.querySelector("#tab1 table tr:nth-child(1) option:nth-child(4)");
            typeProductOther.setAttribute('selected', true);

            var changeGratuit = document.querySelector("#tab2 table.form tbody tr:nth-child(1) label:nth-child(1)");
            changeGratuit.innerHTML  = "<input type='radio' name='paytype' id='PayType-Free' value='free' onclick='hidePricingTable()' checked=''> Hors ligne";

            var changeEnableToActive = document.querySelector('#tab2 table.form tbody tr:nth-child(2) tr:nth-child(4) td:nth-child(1)');
            changeEnableToActive.innerHTML = "Activer"

            var showImageCheck = document.querySelector("#tab4 table tr:nth-child(6) label:nth-child(3) input");
            showImageCheck.checked = true;

            var champOption = document.querySelector("#tab4 table tr:nth-child(2) option:nth-child(2)");
            champOption.setAttribute('selected', true);

            var domaineRequiert = document.querySelector("#tab1 table tr:nth-child(6) td:nth-child(2) input[name='showdomainops']");
            domaineRequiert.checked = false;
        </script>

<style>

    {* Liste des éléments cacher dans le panel ADMIN *}

    {****************}
    {* Pages dans modification du produit *}
    {****************}
    .contentarea  #frmProductEdit ul.nav li:nth-child(4),
    .contentarea  #frmProductEdit ul.nav li:nth-child(6),
    .contentarea  #frmProductEdit ul.nav li:nth-child(7),
    .contentarea  #frmProductEdit ul.nav li:nth-child(8),
    .contentarea  #frmProductEdit ul.nav li:nth-child(9),
    .contentarea  #frmProductEdit ul.nav li:nth-child(10){
        display: none!important;
    }

    {****************}
    {* Champs dans la page détails dans modification du produit *}
    {****************}
    #tab1 table tr:nth-child(1),
    #tab1 table tr:nth-child(5),
    #tab1 table tr:nth-child(6),
    #tab1 table tr:nth-child(7) label,
    #tab1 table tr:nth-child(8),
    #tab1 table tr:nth-child(9),
    #tab1 table tr:nth-child(10),
    #tab1 table tr:nth-child(11){
        display: none!important;
    }

    {****************}
    {* Champs dans la page prix dans modification du produit *}
    {****************}
    #tab2 table.form tbody tr:nth-child(1) label:nth-child(3),
    #tab2 table.form tbody tr:nth-child(4),
    #tab2 table.form tbody tr:nth-child(5),
    #tab2 table.form tbody tr:nth-child(6),
    #tab2 table.form tbody tr:nth-child(7),
    #tab2 table.form tbody tr:nth-child(8),
    #tab2 table.form tbody tr:nth-child(9){
        display: none;
    }

    #tab2 table tr:nth-child(3){
        visibility: hidden
    }

    {****************}
    {* Correction des champs de saisis prix dans la page prix dans modification du produit *}
    {****************}
    #pricingtbl tr:nth-child(2) td:nth-child(2),
    #pricingtbl tr:nth-child(2) td:nth-child(3){
        display:none;
    }
    #pricingtbl tr:nth-child(4){
        display: block!important;
    }
    #pricingtbl tr:nth-child(3){
        visibility: visible!important;
    }

    {****************}
    {* Champs dans la page champs personnalisés dans modification du produit *}
    {****************}
    #tab4 table tr:nth-child(2),
    #tab4 table tr:nth-child(4),
    #tab4 table tr:nth-child(5),
    #tab4 table tr:nth-child(6) label{
        display: none;
    }

    {****************}
    {* Champs dans la page ajout d'un produit *}
    {****************}
    #frmAddProduct .form-group:nth-child(3),
    #frmAddProduct .form-group:nth-child(6),
    #frmAddProduct .form-group:nth-child(7),
    #frmAddProduct .alert-grey{
        display: none;
    }

</style>
{* FOOTER *}

        <script>


            var footer = document.querySelector(".footerbar");
            var footerCop = footer.querySelector(".copyright");
            var footerLink = footer.querySelector(".links");

            footerCop.innerHTML = " Copyright © " + '<a href="https://tyrolium.fr/" target="_blank">Tyrolium</a> 2023.' + " All Rights Reserved.";
            footerLink.innerHTML = '<a href="https://tyrolium.fr" target="_blank">Web Site</a>  | <a href="../../about.php" target="_blank">Conditions & Terms</a>'


        </script>


        <style>

            .footerbar{
                background-color: #bb2d3b;
            }


        </style>


{* END *}

    {include file="$template/intellisearch-results.tpl"}
    {include file="$template/includes.tpl"}
    {$footeroutput}

</body>
</html>
