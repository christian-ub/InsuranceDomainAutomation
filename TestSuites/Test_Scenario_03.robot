*** Settings ***
Documentation  Test Suite for Test Scenario 03: Define how many clients living in Queensland have Sum_Insured_Total over $250000
Resource    ../TestCases/TC_03/TC_03_01.robot
Resource    ../TestCases/TC_03/TC_03_02.robot
Resource    ../TestCases/TC_03/TC_03_03.robot
Resource    ../TestCases/TC_03/TC_03_04.robot
Resource    ../TestCases/TC_03/TC_03_05.robot
Resource    ../TestCases/TC_03/TC_03_06.robot
Resource    ../TestCases/TC_03/TC_03_07.robot
Resource    ../TestCases/TC_03/TC_03_08.robot
Resource    ../TestCases/TC_03/TC_03_09.robot
Resource    ../TestCases/TC_03/TC_03_10.robot
Resource    ../Resources/DB_Connection/DB_Connection.robot
Test Setup  DB_Connection.Connect
Test Teardown  DB_Connection.Disconnect

#  robot -d results TestSuites/Test_Scenario_03.robot

*** Test Cases ***
TC_03_01: Total count of clients
    [Tags]  TestCase TC_03_01: Total count of clients
    TC_03_01.Set Variables
    TC_03_01.Retrieve Data
    TC_03_01.Verify Retrieved Data
    TC_03_01.Insert New Data
    TC_03_01.Verify Insert Contains Correct Retrieved Data
    TC_03_01.Update Newly Inserted Data
    TC_03_01.Log Updated Table
TC_03_02: Count of Queensland clients
    [Tags]  TestCase TC_03_02: Count of Queensland clients
    TC_03_02.Set Variables
    TC_03_02.Retrieve Data
    TC_03_02.Verify Retrieved Data
    TC_03_02.Insert New Data
    TC_03_02.Verify Insert Contains Correct Retrieved Data
    TC_03_02.Update Newly Inserted Data
    TC_03_02.Log Updated Table
TC_03_03: Total Sum_Insured_Total all clients
    [Tags]  TestCase TC_03_03: Total Sum_Insured_Total all clients
    TC_03_03.Set Variables
    TC_03_03.Retrieve Data
    TC_03_03.Verify Retrieved Data
    TC_03_03.Insert New Data
    TC_03_03.Verify Insert Contains Correct Retrieved Data
    TC_03_03.Update Newly Inserted Data
    TC_03_03.Log Updated Table
TC_03_04: Total Sum_Insured_Total Queensland clients
    [Tags]  TestCase TC_03_04: Total Sum_Insured_Total Queensland clients
    TC_03_04.Set Variables
    TC_03_04.Retrieve Data
    TC_03_04.Verify Retrieved Data
    TC_03_04.Insert New Data
    TC_03_04.Verify Insert Contains Correct Retrieved Data
    TC_03_04.Update Newly Inserted Data
    TC_03_04.Log Updated Table
TC_03_05: Total Sum_Insured_Total Queensland clients over $250000
    [Tags]  TestCase TC_03_05: Total Sum_Insured_Total Queensland clients over $250000
    TC_03_05.Set Variables
    TC_03_05.Retrieve Data
    TC_03_05.Verify Retrieved Data
    TC_03_05.Insert New Data
    TC_03_05.Verify Insert Contains Correct Retrieved Data
    TC_03_05.Update Newly Inserted Data
    TC_03_05.Log Updated Table
TC_03_06: Count of all clients with over 4 units_total
    [Tags]  TestCase TC_03_06: Count of all clients with over 4 units_total
    TC_03_06.Set Variables
    TC_03_06.Retrieve Data
    TC_03_06.Verify Retrieved Data
    TC_03_06.Insert New Data
    TC_03_06.Verify Insert Contains Correct Retrieved Data
    TC_03_06.Update Newly Inserted Data
    TC_03_06.Log Updated Table
TC_03_07: Count of Queensland clients with over 4 units_total
    [Tags]  TestCase TC_03_07: Count of Queensland clients with over 4 units_total
    TC_03_07.Set Variables
    TC_03_07.Retrieve Data
    TC_03_07.Verify Retrieved Data
    TC_03_07.Insert New Data
    TC_03_07.Verify Insert Contains Correct Retrieved Data
    TC_03_07.Update Newly Inserted Data
    TC_03_07.Log Updated Table
TC_03_08: Check if any units are 0
    [Tags]  TestCase TC_03_08: Check if any units are 0
    TC_03_08.Set Variables
    TC_03_08.Retrieve Data
    TC_03_08.Verify Retrieved Data
    TC_03_08.Insert New Data
    TC_03_08.Verify Insert Contains Correct Retrieved Data
    TC_03_08.Update Newly Inserted Data
    TC_03_08.Log Updated Table
TC_03_09: Check if any units are negative
    [Tags]  TestCase TC_03_09: Check if any units are negative
    TC_03_09.Set Variables
    TC_03_09.Retrieve Data
    TC_03_09.Verify Retrieved Data
    TC_03_09.Insert New Data
    TC_03_09.Verify Insert Contains Correct Retrieved Data
    TC_03_09.Update Newly Inserted Data
    TC_03_09.Log Updated Table
TC_03_10: Ensure only numerical figures are in the sum_insured_total field
    [Tags]  TestCase TC_03_10: Ensure only numerical figures are in the sum_insured_total field
    TC_03_10.Set Variables
    TC_03_10.Retrieve Data
    TC_03_10.Verify Retrieved Data
    TC_03_10.Insert New Data
    TC_03_10.Verify Insert Contains Correct Retrieved Data
    TC_03_10.Update Newly Inserted Data
    TC_03_10.Log Updated Table