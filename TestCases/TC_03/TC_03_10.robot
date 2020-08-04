*** Settings ***
Documentation  TestCase TC_03_10: Ensure only numerical figures are in the sum_insured_total field
Resource    ../../Resources/TC_03_Scripts/TC_03_10_SQL.robot

*** Keywords ***
Set Variables
    TC_03_10_SQL.Set Variables

Retrieve Data
    TC_03_10_SQL.Ensure only numerical figures are in the sum_insured_total field

Verify Retrieved Data
    TC_03_10_SQL.Verify Retrieved Data

Insert New Data
    TC_03_10_SQL.Save Current Row Count
    TC_03_10_SQL.Insert New Data
    TC_03_10_SQL.Verify New Data Added

Verify Insert Contains Correct Retrieved Data
    run keyword and continue on failure    TC_03_10_SQL.Verify Last Input

Update Newly Inserted Data
    TC_03_10_SQL.Update Newly Inserted Data

Log Updated Table
    TC_03_10_SQL.Log All Rows