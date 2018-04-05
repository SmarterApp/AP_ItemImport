=======================
Import Report Summary
=======================

    Start Time: ${report.startTime?datetime}
      End Time: ${report.endTime?datetime}
Execution Time: ${report.executionTime?long} seconds

==============================================
The following items were imported successfully
==============================================
<#list report.importResults>
    <#items as result>
        <#if result.status == "Success">
            ${result.item.id?left_pad(4)}
        </#if>
    </#items>
</#list>


==================================================
The following errors were reported while importing
==================================================
<#list report.importResults>
    <#items as result>
        <#if result.status == "Error">
            <#list result.errorMessages>
                <#items as error>
                    ${error}
                </#items>
            </#list>

        </#if>
    </#items>
</#list>
