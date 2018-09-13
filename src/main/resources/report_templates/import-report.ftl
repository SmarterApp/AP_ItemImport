
==================================================
Import Report Summary
==================================================

    Start Time: ${report.startTime?datetime}
      End Time: ${report.endTime?datetime}
Execution Time: ${report.executionTime}

==================================================
The following events occurred while importing
"source id","status","info message"
<#list report.importResults>
    <#items as result>
        <#list result.infoMessages>
            <#items as info>
"${result.itemId}","info","${info}"
            </#items>
        </#list>
    </#items>
</#list>

==================================================
The following errors were reported while importing
"source id","status","error message"
<#list report.importResults>
    <#items as result>
        <#list result.errorMessages>
            <#items as error>
"${result.itemId}","error","${error}"
            </#items>
        </#list>
    </#items>
</#list>

==================================================
The following items were imported successfully
"source id","imported id","status","item type"
<#list report.importResults>
    <#items as result>
        <#if result.status == "SUCCESS">
"${result.itemId}","${result.importedItemId}","success","${result.itemType}"
        </#if>
    </#items>
</#list>

==================================================