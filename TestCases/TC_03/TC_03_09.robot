*** Settings ***
Documentation  TestCase TC_03_09: Check if any units are negative
Resource    ../../Resources/TC_03_Scripts/TC_03_09_SQL.robot

*** Keywords ***
Set Variables
    TC_03_09_SQL.Set Variables

Retrieve Data
    TC_03_09_SQL.Check if any units are negative

Verify Retrieved Data
    TC_03_09_SQL.Verify Retrieved Data

Insert New Data
    TC_03_09_SQL.Save Current Row Count
    TC_03_09_SQL.Insert New Data
    TC_03_09_SQL.Verify New Data Added

Verify Insert Contains Correct Retrieved Data
    run keyword and continue on failure    TC_03_09_SQL.Verify Last Input

Update Newly Inserted Data
    TC_03_09_SQL.Update Newly Inserted Data

Log Updated Table
    TC_03_09_SQL.Log All Rows