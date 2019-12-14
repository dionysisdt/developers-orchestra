<#import "/spring.ftl" as spring />

<hr id="about">

<div class="w3-container w3-padding-32 w3-center">
    <h3> <@spring.message "books.about"/> </h3><br>
    ${message!"Message missing in about us"}
    <img src="/images/about.png" alt="Me" class="w3-image" style="display:block;margin:auto" width="800"
         height="533">
    <div class="w3-padding-32">
        <h4><b><@spring.message "books.about.info"/> </b></h4>
        <h6><i> <@spring.message "books.about.block1"/> </i></h6>
        <p><@spring.message "books.about.block2"/></p>
    </div>
</div>
<hr>
