*** Settings ***

# Test HomePage.robot
# robot -d Reports TestCases/TestHomePage.robot

Documentation    Test-Suite for web application

Resource    ../PageObjects/HomePage.robot

*** Test Cases ***

TestCase-1
    Start automation

TestCase-2
    Sign-in into the application

TestCase-3
    Add Sign-up Credentials

TestCase-4
    Add a new customer

TestCase-5
    Confirm the new user

TestCase-6
    Shutdown automation
