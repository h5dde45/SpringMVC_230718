<#import "parts/common.ftl" as c>

<@c.page>

<div>List users</div>

<table>
    <thead>
    <tr>
        <th>Home</th>
        <th>Role</th>
        <th></th>
    </tr>
    </thead>
    <#list users as user>
        <tbody>
        <tr>
            <td>${user.username}</td>
            <td>
                <#list user.roles as role>
                ${role}<#sep >, </#sep>
                </#list>
            </td>
            <td><a href="/user/${user.id}">edit</a></td>
        </tr>
        </tbody>
    </#list>
</table>
</@c.page>