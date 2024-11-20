#Requires AutoHotkey v2.0
#SingleInstance Force
#MaxThreadsPerHotkey 3
CoordMode "Pixel"

paragonSelect := IniRead("config.ini", "settings", "paragonSelect")

^!+j:: {
    if(paragonSelect == "dart") {
        ClickF(1097,1242)
        ; TODO + RESEARCH
    }
    else If(paragonSelect == "boomerang") {
        ClickF(1097,1242)
        ; TODO
    }
    else If(paragonSelect == "sub") {
        ClickF(1097,1242)
        ; TODO + RESEARCH
    }
    else If(paragonSelect == "buccaneer") {
        ClickF(1097,1242)
        ; TODO + RESEARCH
    }
    else If(paragonSelect == "ace") {
        loop {
            ClickF(1097,1242)
            ClickF(134,1327)
            ClickF(536,558)
            ClickF(1482,816)
            ClickF(114,96)
            ClickF(1116,1296)
            ClickF(1799,1302)
            ClickF(1826,347)
            ClickF(836,554)
            ClickF(1703,602)
            Sleep 5000
            ClickF(1264,1015)
            Sleep 500
            PlaceHero(1118,385)
            PlaceTower(511,727,"v",2,0,3,false,0,0)
            PlaceTower(1614,1167,"v",3,0,2,false,0,0)
            PlaceTower(444,600,"k",2,2,0,false,0,0)
            PlaceTower(590,627,"f",4,2,0,false,0,0)
            ClickF(2435,1352)
            ClickF(2435,1352)
            ClickF(1000,1154)
            loop 110 {
                Click
                Click
                Sleep 3000
            }
            ClickF(1283,1211)
            ClickF(956,1140)
            Sleep(1000)
        }
    }
    else If(paragonSelect == "wizard") {
        ClickF(1097,1242)
        ; TODO + RESEARCH
    }
    else If(paragonSelect == "ninja") {
        ClickF(1097,1242)
        ; TODO + RESEARCH
    }
    else If(paragonSelect == "engineer") {
        loop {
            ClickF(1097,1242)
            ClickF(1781,1284)
            ClickF(756,1302) 
            ClickF(2186,571)
            ClickF(2186,571)
            ClickF(2186,571)
            ClickF(1273,750)
            ClickF(836,546)
            ClickF(1699,606)
            Sleep 5000
            ClickF(1277,1011)
            Sleep 500
            PlaceTower(850,700,"l",4,2,0,false,0,0)
            PlaceTower(747,701,"l",0,3,1,true,543,541)
            PlaceTower(1106,478,"l",0,2,4,true,934,544)
            PlaceTower(1106,910,"l",0,2,4,true,1260,1050)
            PlaceTower(1346,697,"l",4,2,0,false,0,0)
            ClickF(2438,1350)
            ClickF(2438,1350)
            ClickF(1856,1154)
            loop 130 {
                Click
                Sleep 2800
            }
            ClickF(1283,1211)
            ClickF(956,1140)
            Sleep(1000)
        }
    }
    else
        ExitApp
}

PlaceHero(x, y) {
    ClickF(2278,294)
    ClickF(x, y)
}

PlaceTower(x, y, key, p1, p2, p3, target, tX, tY) {
    Click x, y, 0
    Sleep 400
    Send key
    Sleep 400
    ClickF(x, y)
    Sleep 400
    ClickF(x, y)
    Sleep 400
    loop p1 {
        Send ","
        Sleep 400
    } loop p2 {
        Send "."
        Sleep 400
    } loop p3 {
        Send "/"
        Sleep 400
    } if(target) {
        Targeting(tX, tY)
    }
}

Targeting(x, y) {
    ClickF(2133,407)
    ClickF(x, y)
    Click
    Sleep 400
}

PressF(key) {
    SendText key
    Sleep 400
}

ClickF(x, y) {
    Click x, y
    Sleep 400
}