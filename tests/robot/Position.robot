*** Settings ***
Documentation     I want to be able to return my position given an X and Y coordinate.
Test Template     Position
Library           position.py

*** Test Cases ***                  StartingX     StartingY     position(x,y)
Initialize with x=0 y=0              0             0             (0,0)


*** Keywords ***
Position
    [Arguments]    ${startingX}    ${startingY}    ${position(x,y)}
    Initialize  xposition with  ${startingX}
    Initialize  yposition with  ${startingY}
    position should be ${position(x,y)}
