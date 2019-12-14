<#import "/forms/repairEditForm.ftl" as spring />

<h4 class="mb-3">Edit Repairs</h4>
<form action="/repairs/edit" method="post">

<input type="hidden" name="repair" value="${repair.repairID}">


    <div class="mb-3">
        <label for="date">Date</label>
        <div class="input-group">
            <input type="date" class="form-control" id="date" name="date" value="${repair.date}">
        </div>
    </div>

    <div class="mb-3">
        <label for="repairStatus">Repair Status</label>
        <div class="input-group">
            <select class="custom-select d-block w-100" id="repairStatus" name="repair status">
                <#if repairStatus??>
                    <#list repairStatus as category>
                        <option value="${category}"<#if repairStatus.repairstatus == category> selected</#if>>${category}</option>
                    </#list>
                </#if>
            </select>
        </div>
    </div>

    <div class="mb-3">
        <label for="repair-address">Repair Address</label>
        <div class="input-group">
            <input type="text" class="form-control" id="repair-address" name="repairAddress" value="${repair.repairAddress}">
        </div>
    </div>

    <div class="mb-3">
        <label for="cost">Cost</label>
        <div class="input-group">
            <input type="text" class="form-control" id="cost" name="cost"  value="${repair.cost}">
        </div>
    </div>


</form>