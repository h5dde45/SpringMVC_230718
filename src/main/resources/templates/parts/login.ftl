<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Username: </label>
        <div class="col-sm-6">
            <input type="text" name="username" class="form-control"
                   placeholder="User name...">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control"
                   placeholder="Password...">
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    <#if !isRegisterForm>
        <a href="registration">Add user</a>
    </#if>

    <button type="submit" class="btn btn-primary m-2  ">
        <#if isRegisterForm>Cteate<#else >   Sing In</#if>
    </button>
</form>
</#macro>

<#macro logout>
<form action="logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" class="btn btn-primary ">Sign Out</button>
</form>
</#macro>

