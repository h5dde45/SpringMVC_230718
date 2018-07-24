<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <@l.logout/>
    <span>  <a href="/user">List users</a></span>
</div>

<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Enter text...">
        <input type="text" name="tag" placeholder="Enter tag...">
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
<div>
    <form action="main" method="get">
        <input type="text" name="filter"
               placeholder="Search by tag..." value="${filter?if_exists}">
        <button type="submit">Search</button>
    </form>
</div>
<div>List messages</div>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
    <div>
        <#if message.filename??>
            <img src="/img/${message.filename}" alt="ok">
        </#if>
    </div>
    <#else >
    No message
    </#list>
</@c.page>