<#import "parts/common.ftl" as c>

<@c.page>
<h4>${username}</h4>
<p>${message?if_exists}</p>

<form  method="post">

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control"
                   placeholder="Password...">
        </div>
    </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Email:</label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control"
                       placeholder="text@text.com..." value="${email!''}">
            </div>
        </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" class="btn btn-primary m-2">Save </button>
</form>

</@c.page>