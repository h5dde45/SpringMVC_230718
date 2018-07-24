<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div class="mb-4">
    <h2>Add new user</h2>
</div>
<p>${message?if_exists}</p>
    <@l.login "registration" true/>
</@c.page>