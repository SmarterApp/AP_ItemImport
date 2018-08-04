
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
- ${info}
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
- ${error}
            </#items>
        </#list>
    </#items>
</#list>

==================================================
The following items were imported successfully
<#list report.importResults>
    <#items as result>
        <#if result.status == "Success">
- ${result.item.id?left_pad(4)},${result.item.type?left_pad(5)}
        </#if>
    </#items>
</#list>


==================================================