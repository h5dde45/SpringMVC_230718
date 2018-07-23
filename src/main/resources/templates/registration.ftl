<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main</title>
</head>
<body>
<h2>Add new user</h2>
<p>${message?if_exists}</p>
<div>
    <form action="registration" method="post">
        <div><label>Username: <input type="text" name="username"></label></div>
        <div><label>Password: <input type="password" name="password"></label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div>
            <button type="submit">Sing In</button>
        </div>
    </form>
</div>

</body>
</html>