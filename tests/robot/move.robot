*** Settings ***
Documentation     I want to move my character. If they attempt to move past a boundary, the move results in no change in position.
Test Template     Move character
Library           MoveLibrary.py

*** Test Cases ***                  StartingX     StartingY     StartingMoveCount     Direction     EndingX     EndingY     EndingMoveCount

start 00 move NORTH                 0             0             1                     NORTH         0           1           2
start 00 move EAST                  0             0             1                     EAST          1           0           2
start 00 move WEST                  0             0             8                     WEST          0           0           9
start 09 move NORTH                 0             9             7                     NORTH         0           9           8
start 09 move SOUTH                 0             9             6                     SOUTH         0           3           7
start 09 move EAST                  0             9             7                     EAST          7           9           8
start 09 move WEST                  0             9             7                     WEST          0           9           8
start 99 move NORTH                 9             9             2                     NORTH         9           9           3
start 99 move SOUTH                 9             9             5                     SOUTH         9           4           6
start 99 move EAST                  9             9             6                     EAST          9           9           7
start 99 move WEST                  9             9             7                     WEST          2           9           8
start 90 move NORTH                 9             0             4                     NORTH         9           4           5
start 90 move SOUTH                 9             0             5                     SOUTH         9           0           6
start 90 move EAST                  9             0             3                     EAST          6           0           4
start 90 move WEST                  9             0             2                     WEST          9           0           3
start 55 move NORTH                 5             5             4                     NORTH         5           9           5
start 55 move SOUTH                 5             5             3                     SOUTH         5           2           4
start 55 move EAST                  5             5             2                     EAST          7           5           3
start 55 move WEST                  5             5             5                     WEST          0           5           6                

*** Keywords ***
Move character
    [Arguments]    ${startingX}    ${startingY}    ${startingMoveCount}    ${direction}    ${endingX}    ${endingY}    ${endingMoveCount}
    Initialize character xposition with  ${startingX}
    Initialize character yposition with  ${startingY}
    Initialize character moveCount with  ${startingMoveCount}
    Move in direction                    ${direction}
    Character xposition should be        ${endingX}
    Character yposition should be        ${endingY}
    Character moveCount should be        ${endingMoveCount}