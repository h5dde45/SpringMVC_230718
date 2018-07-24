<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<h2>Add new user</h2>
<p>${message?if_exists}</p>
    <@l.login "registration"/>
</@c.page>