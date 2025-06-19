# Porting BASIC to Obscure Systems

## Namming

The source files are named according to the TOSEC naming convention.

## Status

| Icon | Label          |
|------|----------------|
| ⬜️   | To do         |
| ⌨  | Work in progress  |
| ✅ | Finished and working |
| ❌ | Failed |
| ❕ | Source code review to be done |
| 📝 | Source code to be found or entered |
| ✘ | No need to adapt. The source code is self-sufficient |
| ★☆ | Rating |

2 values in each column.\
1st: (B)rute force basic conversion. No changes to the code.\
2nd: (R)emake with corrections.

#### PHC-25

A major problem with the brute force application failure is the limited available memory of 14KB maximum.


## Table

<table>
    <tr>
        <th rowspan="2" style="text-align: center;">Game</th>
        <th colspan="2" style="text-align: center;">Alice</th>
        <th colspan="2" style="text-align: center;">Aquarius</th>
        <th colspan="2" style="text-align: center;">Hector</th>
        <th colspan="2" style="text-align: center;">PHC-25</th>
        <th colspan="2" style="text-align: center;">VG5000</th>
    </tr>
    <tr>
        <th style="text-align: center;">B</th>
        <th style="text-align: center;">R</th>
        <th style="text-align: center;">B</th>
        <th style="text-align: center;">R</th>
        <th style="text-align: center;">B</th>
        <th style="text-align: center;">R</th>
        <th style="text-align: center;">B</th>
        <th style="text-align: center;">R</th>
        <th style="text-align: center;">B</th>
        <th style="text-align: center;">R</th>
    </tr>
    <tr>
        <td><a href="./01-MarcoPolo">Marco Polo</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./02-WestwardHo">Westward Ho</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./03-TheLongestAutomobileRace">Longest Automobile Race, The</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./04-TheOrientExpress">Orient Express, The</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./05-AmeliaEarhart">Amelia Earhart</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./06-TourDeFrance">Tour De France</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./07-AppalachianTrail">Appalachian Trail</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./08-SubwayScavenger">Subway Scavenger</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./09-HongKongHustle">Hong Kong Hustle</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>❌</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
    <tr>
        <td><a href="./10-VoyageToNeptune">Voyage To Neptune</a></td>
        <!-- B           R   -->
        <td>⬜️</td> <td>⬜️</td> <!-- Alice -->
        <td>⬜️</td> <td>⬜️</td> <!-- Aquarius -->
        <td>⬜️</td> <td>⬜️</td> <!-- Hector -->
        <td>⌨</td> <td>⬜️</td> <!-- PHC-25 -->
        <td>⬜️</td> <td>⬜️</td> <!-- VG5000 -->
    </tr>
</table>

eof
___
