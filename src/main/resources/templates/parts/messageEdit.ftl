<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample"
   role="button" aria-expanded="false" aria-controls="collapseExample">
<#if !message??>
    Add new message
<#elseif message.id??>
        Message edit
    <#else >
        Add new message
</#if >
</a>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="text" class="form-control ${(textError??)?string('is-invalid','')}"
                       placeholder="Enter text..." value="<#if message??>${message.text}</#if>">
            <#if textError??>
                <div class="invalid-feedback">
                ${textError}
                </div>
            </#if>
            </div>
            <div class="form-group">
                <input type="text" name="tag" class="form-control ${(tagError??)?string('is-invalid','')}"
                       placeholder="Enter tag..."
                       value="<#if message??>${message.tag}</#if>">
            <#if tagError??>
                <div class="invalid-feedback">
                ${tagError}
                </div>
            </#if>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="customFile" name="file">
                    <label class="custom-file-label" for="customFile">Choose file </label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if message??><#if message.id??>${message.id}</#if></#if>"/>
            <div class="form-group">
                <button type="submit" class="btn btn-primary ">Save message</button>
            </div>
        </form>
    </div>
</div>
