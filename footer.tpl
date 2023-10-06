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


        <script>
          //  document.getElementById("tabLink1").textContent = "Nouveau texte";



          var contentArea = document.querySelector(".contentarea p");


          contentArea.textContent = "Gestion des Chaussures";


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



        </style>


    {include file="$template/intellisearch-results.tpl"}
    {include file="$template/includes.tpl"}
    {$footeroutput}

</body>
</html>
