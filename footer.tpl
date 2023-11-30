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

            .global-admin-warning{
                display: none!important;
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
            if(CreateGrouplink !== null){
                CreateGrouplink.innerHTML = '<i class="fas fa-plus"></i> Créer une marque'
            }
            var CreateProductlink = document.querySelector("#Create-Product-link");
            if(CreateProductlink !== null){
                CreateProductlink.innerHTML = '<i class="fas fa-plus-circle"></i> Créer une chaussure'
            }
            var DuplicateProductlink = document.querySelector("#Duplicate-Product-link");
            if(DuplicateProductlink !== null){
                DuplicateProductlink.innerHTML = '<i class="fas fa-plus-square"></i> Dupliqué une chaussure'
            }
        </script>

{* CREATE/EDITE GROUP *}

        <script>

            var isCreateGroupPage = document.querySelector('#frmAddProductGroup');
            if (isCreateGroupPage){
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

        </script>

        <style>

            /*#frmAddProduct div.form-group:nth-child(2){*/

            /*    background-color: red;*/

            /*}*/

        </style>


{* EDIT/CREATE-SECOND PRODUCT *}

        <script>

            var titlePageH1 = document.querySelector("#contentarea h1");
            if(titlePageH1 !== null){
                var titleChaussure = titlePageH1.innerHTML.replace("Produits/Services", "Chaussures");
                titlePageH1.innerHTML = titleChaussure;
            }

            var changeNameMarque = document.querySelectorAll("#tableBackground table tbody:nth-child(1) tr td:nth-child(1) strong");
            changeNameMarque.forEach((nameMarque) => {
                nameMarque.innerHTML = "Marque: ";
            });

            var thChaussure = document.querySelector("#tableBackground table tbody:nth-child(1) tr th:nth-child(1)");
            if(thChaussure!== null){
                thChaussure.innerHTML = 'Nom de la chaussure';
            }

            var addProdChaussure = document.querySelector("#frmAddProduct h2");
            if(addProdChaussure!== null){
                addProdChaussure.innerHTML = 'Créer une nouvelle paire de chaussure';
            }

            var groupeChaussure = document.querySelector("#frmAddProduct div.form-group:nth-child(4) label");
            if(groupeChaussure!== null){
                groupeChaussure.innerHTML = 'Marque de la chaussure<br><small><a href="configproducts.php?action=creategroup">Cliquez ici pour créer une nouvelle marque de chaussre</a></small>';
            }

            var nomChaussure = document.querySelector("#frmAddProduct div.form-group:nth-child(5) label");
            if(nomChaussure!== null){
                nomChaussure.innerHTML = 'Nom de la chaussure<br><small>Le nom d\'affichage par défaut de votre nouvelle chaussure</small>';
            }


            var titleModifierChaussure = document.querySelector("#contentarea div:nth-child(1) h2");
            if(titleModifierChaussure!== null){
                if(titleModifierChaussure.innerHTML == "Edit Product"){
                    titleModifierChaussure.innerHTML = "Modifier une chaussure";
                }
                if(titleModifierChaussure.innerHTML == "Dupliquer un produit"){
                    titleModifierChaussure.innerHTML = "Dupliquer une chaussure";
                }
            }


            var changeNameStatus = document.querySelector("#tableBackground table tr th:nth-child(3)");
            if(changeNameStatus!== null){
                changeNameStatus.innerHTML = 'Status';
            }
        

            var listeLigneMarque =  document.querySelectorAll("#tableBackground table tbody:nth-child(1) tr td:nth-child(1)");
            listeLigneMarque.forEach((ligneMarque) => {
                ligneMarque.colSpan = "4";
            });

            var changeStatusStype = document.querySelector("#tab2 table tr td:nth-child(1)");
            if(changeStatusStype!== null){
                var horLigneReplace = changeStatusStype.innerHTML.replace("Type de paiement", "Status");
                changeStatusStype.innerHTML = horLigneReplace;
            }

            var removeMensuel = document.querySelector("#pricingtbl tbody tr:nth-child(1) td:nth-child(3)");
            if(removeMensuel!== null){
                var noneReplace = removeMensuel.innerHTML.replace("Une fois/Mensuel", "");
                removeMensuel.innerHTML = noneReplace;
            }

            var changeStatusProd = document.querySelectorAll("#tableBackground table tr td:nth-child(3)");

            changeStatusProd.forEach((statusProd) => {
                if(statusProd.innerHTML == "Une fois") {
                    statusProd.innerHTML = "En ligne";
                }else if(statusProd.innerHTML == "Gratuit"){
                    statusProd.innerHTML = "Hors ligne";
                }
            });


            var asChecked = document.querySelector("#tab4 table tr:nth-child(6) td.fieldarea label:nth-child(3) input");
            if (asChecked){
                asChecked.checked = true;
            }

            var hiddenCheck = document.querySelector("#tab1 table tr:nth-child(10) input");
            if(hiddenCheck !== null){
                hiddenCheck.checked = false;
            }
            
            var stockCheck = document.querySelector("#tab1 table tr:nth-child(7) input[name='stockcontrol']");
            if(stockCheck !== null){
                stockCheck.checked = true;
            }

            var stockValueOne = document.querySelector("#tab1 table tr:nth-child(7) input[name='qty']");
            if(stockValueOne !== null){
                stockValueOne.value = "1";
            }

            var typeProductHeberg = document.querySelector("#tab1 table tr:nth-child(1) option:nth-child(1)");
            if(typeProductHeberg !== null){
                typeProductHeberg.setAttribute('selected', false);
            }

            var typeProductOther = document.querySelector("#tab1 table tr:nth-child(1) option:nth-child(4)");
            if(typeProductOther !== null){
                typeProductOther.setAttribute('selected', true);
            }

            var changeGratuit = document.querySelector("#tab2 table.form tbody tr:nth-child(1) label:nth-child(1)");
            if(changeGratuit !== null){
                var horLigneReplace = changeGratuit.innerHTML.replace("Gratuit", "Hors ligne");
                changeGratuit.innerHTML = horLigneReplace;
            }

            var changeUneFois = document.querySelector("#tab2 table.form tbody tr:nth-child(1) label:nth-child(2)");
            if(changeUneFois !== null){
                var enLigneReplace = changeUneFois.innerHTML.replace("Une fois", "En ligne");
                changeUneFois.innerHTML = enLigneReplace;
            }

            var changeEnableToActive = document.querySelector('#tab2 table.form tbody tr:nth-child(2) tr:nth-child(4) td:nth-child(1)');
            if(changeEnableToActive !== null){
                changeEnableToActive.innerHTML = "Activer"
            }

            var showImageCheck = document.querySelector("#tab4 table tr:nth-child(6) label:nth-child(3) input");
            if(showImageCheck !== null){
                showImageCheck.checked = true;
            }

            var domaineRequiert = document.querySelector("#tab1 table tr:nth-child(6) td:nth-child(2) input[name='showdomainops']");
            if(domaineRequiert !== null){
                domaineRequiert.checked = false;
            }

            var changeTitleImage = document.querySelector(".contentarea  #frmProductEdit ul.nav li:nth-child(5) a");
            if(changeTitleImage !== null){
                changeTitleImage.innerHTML = 'Image';
            }

            var changeTitleSize = document.querySelector(".contentarea  #frmProductEdit ul.nav li:nth-child(6) a");
            if(changeTitleSize !== null){
                changeTitleSize.innerHTML = 'Taille';
            }

            var changeNameTdImage = document.querySelector("#tab5 table tbody tr td:nth-child(1)");
            if(changeNameTdImage !== null){
                changeNameTdImage.innerHTML = 'Ajouter/Modifier les images';
            }

            var changeNameTdTaille = document.querySelector("#tab6 table tbody tr td:nth-child(1)");
            if(changeNameTdTaille !== null){
                changeNameTdTaille.innerHTML = 'Ajouter/Modifier les tailles';
            }

            var changeBaliseIframeImage = document.querySelector("#tab5 table tbody tr td:nth-child(2)");
            var iframAddImage = document.createElement('iframe');

            if(changeBaliseIframeImage !== null){
                iframAddImage.textContent = changeBaliseIframeImage.textContent;
                changeBaliseIframeImage.replaceWith(iframAddImage);
                iframAddImage.setAttribute('src', '../../api/more/add.php');
            }

            var changeBaliseIframeTaille = document.querySelector("#tab6 table tbody tr td:nth-child(2)");
            var iframAddTaille = document.createElement('iframe');

            if(changeBaliseIframeTaille !== null){
                iframAddImage.textContent = changeBaliseIframeTaille.textContent;
                changeBaliseIframeTaille.replaceWith(iframAddTaille);
                iframAddTaille.setAttribute('src', '../../api/size/add.php');
            }

            var nameChampPerso = document.querySelector("#tab4 table tr:nth-child(1) td:nth-child(2) input");
            if(nameChampPerso !== null){
                nameChampPerso.setAttribute('value', 'Taille');
            }


            var changeGroupProd = document.querySelector("#tab1 table tr:nth-child(2) td:nth-child(1)");
            if(changeGroupProd !== null){
                changeGroupProd.innerHTML = "Marque de la chaussure";
            }

            var changeNomProd = document.querySelector("#tab1 table tr:nth-child(3) td:nth-child(1)");
            if(changeNomProd !== null){
                changeNomProd.innerHTML = "Nom de la chaussure";
            }

            var changeDescProd = document.querySelector("#tab1 table tr:nth-child(4) td:nth-child(1)");
            if(changeDescProd !== null){
                changeDescProd.innerHTML = "Description de la chaussure";
            }

            var prodExistantChange = document.querySelectorAll("#contentarea form table tbody tr td:nth-child(1)");
            prodExistantChange.forEach((changeProd) => {
                if(changeProd.innerHTML == "Produit existant") {
                    changeProd.innerHTML = "Chaussure existant";
                }
                var nouveauReplace = changeProd.innerHTML.replace("Nom du nouveau produit", "Nom de la nouvelle chaussure");
                changeProd.innerHTML = nouveauReplace;
            });

            var addAnnonceChange = document.querySelector("#contentarea h2");
            if(addAnnonceChange !== null){
                var ajouterAnnonce = addAnnonceChange.innerHTML.replace("Add Annonce", "Ajouter une annonce");
                addAnnonceChange.innerHTML = ajouterAnnonce;
            }

        </script>

<style>

    {* Liste des éléments cacher dans le panel ADMIN *}

    {****************}
    {* Pages dans modification du produit *}
    {****************}
    .contentarea  #frmProductEdit ul.nav li:nth-child(4),
    .contentarea  #frmProductEdit ul.nav li:nth-child(5),
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
    #tab4 table tr:nth-child(4),
    #tab4 table tr:nth-child(5),
    #tab4 table tr:nth-child(6){
        display: none;
    }

    {****************}
    {* Champs dans la page ajout d'un produit *}
    {****************}
    #frmAddProduct .form-group:nth-child(3),
    #frmAddProduct .form-group:nth-child(6),
    #frmAddProduct .form-group:nth-child(7),
    #frmAddProduct .form-group:nth-child(8),
    #frmAddProduct .alert-grey{
        display: none;
    }


    #tab5 table tbody tr iframe,
    #tab6 table tbody tr iframe{
        width: 100%;
        height: 400px;
    }




    #tableBackground table tr th:nth-child(2),
    #tableBackground table tbody.list-group tr td:nth-child(2),
    #tableBackground table tr th:nth-child(5),
    #tableBackground table tbody.list-group tr td:nth-child(5){
        display: none;
    }


    #tab6 table tbody tr:nth-child(2),
    #tab6 table tbody tr:nth-child(3){
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

            var buttonAddAnnonce = document.querySelector("#contentarea div form p[align='center']");
            if(buttonAddAnnonce !== null) {
                buttonAddAnnonce.innerHTML = '<input type="submit" id="add_announcement" value="Ajouter une nouvelle annonce" class="btn btn-primary">';
            }

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
