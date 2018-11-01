
==================================================
Import Report Summary
==================================================
Import Id File: ${report.appProps.importIdFile}
    Is Dry Run: ${report.appProps.dryRun?c}
   Environment: ${report.appProps.environment}
    Start Time: ${report.startTime?datetime}
      End Time: ${report.endTime?datetime}
Execution Time: ${report.executionTime}

The following items were imported successfully
--------------------------------------------------
"its id","tims id","status","item type","commit message"
<#list report.importResults>
    <#items as result>
        <#if result.status == "SUCCESS">
"${result.itemId}","${result.importedItemId}","success","${result.itemType}","${result.commitMessage}"
        </#if>
    </#items>
</#list>
--------------------------------------------------
Successful count: ${report.successCount}

The following errors were reported while importing
--------------------------------------------------
"its id","status","error message"
<#list report.importResults>
    <#items as result>
        <#list result.errorMessages>
            <#items as error>
"${result.itemId}","error","${error}"
            </#items>
        </#list>
    </#items>
</#list>


Additional information
--------------------------------------------------
"its id","status","info message"
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