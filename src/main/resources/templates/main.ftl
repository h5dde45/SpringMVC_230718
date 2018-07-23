<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main</title>
</head>
<body>
<div>
    <form action="logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Sign Out"/>
    </form>
</div>

<div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter text...">
        <input type="text" name="tag" placeholder="Enter tag...">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
<div>
    <form action="filter" method="post">
        <input type="text" name="filter" placeholder="Search by tag...">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Search</button>
    </form>
</div>
<div>List messages</div>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
</div>
<#else >
No message
</#list>
</body>
</html>