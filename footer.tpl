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
                background-color: #a70a1a;
                border-color: #a70a1a;
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

        </style>

{* GESTION PAGE *}

        <script>
            //  document.getElementById("tabLink1").textContent = "Nouveau texte";
            var contentArea = document.querySelector(".contentarea p");
            if (contentArea){
                contentArea.textContent = "Gestion des Chaussures";
            }

        </script>

{* CREATE GROUP *}

        <script>

            var isCreateGroupPage = document.querySelector('#frmAddProductGroup');
            if (isCreateGroupPage){
                console.log("page GroupCreate");

                var titleGroupCreate = document.querySelector("h2:first-of-type");
                titleGroupCreate.textContent = "Créer une marque";

                var nameFormTd = document.querySelector(".contentarea #frmAddProductGroup tr:first-child");
                nameFormTd.querySelector("td:first-child").textContent = "Nom de la marque";
                nameFormTd.querySelector("td:last-child input").placeholder = "exemple: Nike";
            }

        </script>

        <style>

            .contentarea #frmAddProductGroup tr:not(:first-child){
                display: none;
            }

            #translateProductGroupName{
                display: none;
            }
        </style>

{* EDITE GROUP *}


{* CREATE PRODUCT *}


{* EDIT PRODUCT *}

        <script>

            var asChecked = document.querySelector("#tab4 table tr:nth-child(6) td.fieldarea label:nth-child(3) input");
            if (asChecked){
                asChecked.checked = true;
            }

        </script>

        <style>
            .contentarea  #frmProductEdit ul.nav li:nth-child(4),
            .contentarea  #frmProductEdit ul.nav li:nth-child(6),
            .contentarea  #frmProductEdit ul.nav li:nth-child(7),
            .contentarea  #frmProductEdit ul.nav li:nth-child(8),
            .contentarea  #frmProductEdit ul.nav li:nth-child(9),
            .contentarea  #frmProductEdit ul.nav li:nth-child(10){
                display: none!important;
            }

            #tab1 table tr:nth-child(5),
            #tab1 table tr:nth-child(6),
            #tab1 table tr:nth-child(8),
            #tab1 table tr:nth-child(9),
            #tab1 table tr:nth-child(10),
            #tab1 table tr:nth-child(11){
                display: none!important;
            }

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

            #tab4 table tr:nth-child(4),
            #tab4 table tr:nth-child(5){
                display: none;
            }

            #tab4 table tr:nth-child(6) td.fieldarea label{
                /*display: none;*/
            }

        </style>
{* END *}

    {include file="$template/intellisearch-results.tpl"}
    {include file="$template/includes.tpl"}
    {$footeroutput}

</body>
</html>
