
==================================================
Import Report Summary
==================================================

    Start Time: ${report.startTime?datetime}
      End Time: ${report.endTime?datetime}
Execution Time: ${report.executionTime}

==================================================
The following events occurred while importing
<#list report.importResults>
    <#items as result>
        <#list result.infoMessages>
            <#items as info>
"${result.item.id}","${info}"
            </#items>
        </#list>
    </#items>
</#list>

==================================================
The following errors were reported while importing
<#list report.importResults>
    <#items as result>
        <#list result.errorMessages>
            <#items as error>
"${result.item.id}","${error}"
            </#items>
        </#list>
    </#items>
</#list>

==================================================
The following items were imported successfully
<#list report.importResults>
    <#items as result>
        <#if result.status == "SUCCESS">
"${result.item.id}","${result.item.type}"
        </#if>
    </#items>
</#list>


==================================================