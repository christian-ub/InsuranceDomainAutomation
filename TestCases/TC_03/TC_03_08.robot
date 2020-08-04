*** Settings ***
Documentation  TestCase TC_03_08: Check if any Units_Total are 0
Resource    ../../Resources/TC_03_Scripts/TC_03_08_SQL.robot

*** Keywords ***
Set Variables
    TC_03_08_SQL.Set Variables

Retrieve Data
    TC_03_08_SQL.Check if any Units_Total are 0

Verify Retrieved Data
    TC_03_08_SQL.Verify Retrieved Data

Insert New Data
    TC_03_08_SQL.Save Current Row Count
    TC_03_08_SQL.Insert New Data
    TC_03_08_SQL.Verify New Data Added

Verify Insert Contains Correct Retrieved Data
    run keyword and continue on failure    TC_03_08_SQL.Verify Last Input

Update Newly Inserted Data
    TC_03_08_SQL.Update Newly Inserted Data

Log Updated Table
    TC_03_08_SQL.Log All Rows