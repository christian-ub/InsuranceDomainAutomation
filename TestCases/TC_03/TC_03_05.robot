*** Settings ***
Documentation  TestCase TC_03_05: Total Sum_Insured_Total Queensland clients over $250000
Resource    ../../Resources/TC_03_Scripts/TC_03_05_SQL.robot

*** Keywords ***
Set Variables
    TC_03_05_SQL.Set Variables

Retrieve Data
    TC_03_05_SQL.Total Sum_Insured_Total Queensland clients over $250000

Verify Retrieved Data
    TC_03_05_SQL.Verify Retrieved Data

Insert New Data
    TC_03_05_SQL.Save Current Row Count
    TC_03_05_SQL.Insert New Data
    TC_03_05_SQL.Verify New Data Added

Verify Insert Contains Correct Retrieved Data
    run keyword and continue on failure    TC_03_05_SQL.Verify Last Input

Update Newly Inserted Data
    TC_03_05_SQL.Update Newly Inserted Data

Log Updated Table
    TC_03_05_SQL.Log All Rows