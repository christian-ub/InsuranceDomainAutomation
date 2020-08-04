*** Settings ***
Documentation  TestCase TC_03_06: Count of all clients with over 4 Units_Total
Resource    ../../Resources/TC_03_Scripts/TC_03_06_SQL.robot

*** Keywords ***
Set Variables
    TC_03_06_SQL.Set Variables

Retrieve Data
    TC_03_06_SQL.Count of all clients with over 4 Units_Total

Verify Retrieved Data
    TC_03_06_SQL.Verify Retrieved Data

Insert New Data
    TC_03_06_SQL.Save Current Row Count
    TC_03_06_SQL.Insert New Data
    TC_03_06_SQL.Verify New Data Added

Verify Insert Contains Correct Retrieved Data
    run keyword and continue on failure    TC_03_06_SQL.Verify Last Input

Update Newly Inserted Data
    TC_03_06_SQL.Update Newly Inserted Data

Log Updated Table
    TC_03_06_SQL.Log All Rows