<!-- Top menu -->
<div class="w3-top">
    <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
        <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
        <#assign menuItems=["books","mail","about"]>

        <#list menuItems as item>
            <div class="w3-right w3-padding-16"> <@spring.message "books.menu.${item}"/></div>
        </#list>
    </div>
</div>