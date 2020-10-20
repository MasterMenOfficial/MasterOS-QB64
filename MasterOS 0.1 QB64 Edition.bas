DIM Version AS STRING
Version = "0.1"

dim DevPeriod as string
DevPeriod = "Alpha"

DIM Nickname AS STRING
Nickname = "User"

DIM Old_Nickname AS STRING
Old_Nickname = "User"

SCREEN 12

DIM MOSDisk AS STRING
MOSDisk = "A"

_TITLE "MasterOS 0.1 QB64 Edition"

IF MOSDisk = "A" THEN
    i& = _LOADIMAGE("Disk A/MASTEROS/Resources/MasterOS Icon.BMP", 32) '<<<<<<< use your image file name here
ELSEIF MOSDisk = "B" THEN
    i& = _LOADIMAGE("Disk B/MASTEROS/Resources/MasterOS Icon.BMP", 32) '<<<<<<< use your image file name here
ELSEIF MOSDisk = "C" THEN
    i& = _LOADIMAGE("Disk C/MASTEROS/Resources/MasterOS Icon.BMP", 32) '<<<<<<< use your image file name here
END IF


IF i& < -1 THEN
    _ICON i&
    _FREEIMAGE i& ' release image handle after setting icon
END IF


DIM WelcomeDisplay AS INTEGER
WelcomeDisplay = INT(RND * 2)

IF WelcomeDisplay = 0 THEN
    PRINT "Welcome!"
    SLEEP
END IF

IF WelcomeDisplay = 1 THEN
    CLS
    PRINT ""
    PRINT ""
    PRINT "                  л     л      л           ллл          лллл"
    PRINT "                  л     л      л          л   л         л"
    PRINT "                  л     л      л          л   л         ллл"
    PRINT "                   л л л       л          л   л         л"
    PRINT "                    л л        ллл         ллл          лллл"
    _DELAY 0.2
    CLS
    PRINT ""
    PRINT ""
    PRINT "                  л     л лллл л    лллл   ллл  лл   лл лллл"
    PRINT "                  л     л л    л   л    л л   л л л л л л"
    PRINT "                  л     л ллл  л   л      л   л л  л  л ллл"
    PRINT "                   л л л  л    л   л    л л   л л  л  л л"
    PRINT "                    л л   лллл ллл  лллл   ллл  л     л лллл"
    _DELAY 0.2
    CLS
    PRINT ""
    PRINT ""
    PRINT "                  л     л      л           ллл          лллл"
    PRINT "                  л     л      л          л   л         л"
    PRINT "                  л     л      л          л   л         ллл"
    PRINT "                   л л л       л          л   л         л"
    PRINT "                    л л        ллл         ллл          лллл"
    _DELAY 0.2
    CLS
    PRINT ""
    PRINT ""
    PRINT "                  л     л лллл л    лллл   ллл  лл   лл лллл"
    PRINT "                  л     л л    л   л    л л   л л л л л л"
    PRINT "                  л     л ллл  л   л      л   л л  л  л ллл"
    PRINT "                   л л л  л    л   л    л л   л л  л  л л"
    PRINT "                    л л   лллл ллл  лллл   ллл  л     л лллл"
    _DELAY 0.6

END IF



' a is a Choose variable
DIM a AS STRING

' Russian Characters:
' й ц у к е н г ш щ з х ъ
' ф ы в а п р о л д ж э \
' я ч с м и т ь б ю .

' Caps Look
' Й Ц У К Е Н Г Ш Щ З Х Ъ
' Ф Ы В А П Р О Л Д Ж Э \
' Я Ч С М И Т Ь Б Ю .

1
CLS
PRINT "+----------------------+"
PRINT ""
PRINT "1. с My Computer"
PRINT "2. р CernioEditor"
PRINT "3. ч CustomCode Compiler"
PRINT ""
PRINT "+------ a. Panel ------+"
PRINT ""
PRINT ""
DO
    INPUT "Select: ", a
    IF a = "1" THEN GOTO 2
    IF a = "2" THEN GOTO 11
    IF a = "3" THEN GOTO 5
    IF a = "a" THEN GOTO 3
    IF a = "Protivogaznik" OR a = "CMD_GUY" OR a = "MagicStick86rus" THEN GOTO 14
LOOP

2
CLS
PRINT "My Computer"
PRINT ""
PRINT "A. Р Disk <A> (25MB)"
PRINT "B. Р Disk <B> (Not Included)"
PRINT "C. Р Disk <C> (Not Included)"
PRINT ""
PRINT "@. Back"
PRINT ""
PRINT ""
DO
    INPUT "Select: ", a
    IF a = "@" THEN GOTO 1
    IF a = "A" OR a = "a" THEN GOTO 9
LOOP

3
CLS
PRINT "+--------PANEL---------+"
PRINT ""
PRINT "1. Shutdown OS"
PRINT "2. Settings"
PRINT "3. About OS"
PRINT ""
PRINT "@. Close Panel"
PRINT ""
PRINT ""
DO
    INPUT "Select: ", a
    IF a = "@" THEN GOTO 1
    IF a = "1" THEN GOTO 4
    IF a = "2" THEN GOTO 6
    IF a = "3" THEN GOTO 8
LOOP

4
CLS
PRINT "Shutting Down MasterOS"
_DELAY 0.3
CLS
PRINT "Shutting Down MasterOS."
_DELAY 0.3
CLS
PRINT "Shutting Down MasterOS.."
_DELAY 0.3
CLS
PRINT "Shutting Down MasterOS..."
_DELAY 0.3
CLS
END

5
CLS
_TITLE "MasterOS 0.1 QB64 Edition - CustomCode Compiler"
PRINT ""
PRINT " CustomCode Compiler 0.1"
PRINT " Type '@@@' to Close Compiler"
PRINT " Based on Turbo Programm Compiler by Protivogaznik"
PRINT " (It's buggy. Might not run.)"
SLEEP 1
PRINT ""
PRINT " Press any key to continue..."
SLEEP
CLS
_KEYCLEAR
DO
    PRINT "countvoid:"; countvoid, "countvoid2:"; countvoid2
    INPUT ">", a$
    countvoid = 1
    DO
        IF MID$(a$, countvoid, 1) = " " THEN countvoid = countvoid + 1 ELSE EXIT DO
    LOOP
    countvoid2 = countvoid + 5

    IF MID$(a$, countvoid, 7) = "@@@" THEN
        GOTO 1
        _TITLE "MasterOS 0.0_1 QB64 Edition"
    END IF

    IF MID$(a$, countvoid, 5) = "Out.Text(" THEN
        DO
            IF MID$(a$, countvoid2, 1) = " " THEN countvoid2 = countvoid2 + 1 ELSE EXIT DO
        LOOP
        IF MID$(a$, countvoid2, 1) = "'" THEN
            counter = countvoid + countvoid2 + 1
            DO
                IF MID$(a$, counter, 1) = "'" THEN EXIT DO ELSE counter = counter + 1
                IF counter = 73 THEN EXIT DO
            LOOP
            PRINT MID$(a$, countvoid + countvoid2, LEN(a$) - countvoid2 - countvoid)
        END IF
    END IF
    a$ = ""
LOOP


6
CLS
PRINT "+-------SETTINGS-------+"
PRINT ""
PRINT "1. User Name"
PRINT "2. Welcome Title (In Progress)"
PRINT ""
PRINT "@. Close Panel"
PRINT ""
PRINT ""
DO
    INPUT "Select: ", a
    IF a = "@" THEN GOTO 3
    IF a = "1" THEN GOTO 7
LOOP


7
CLS
PRINT "+-------USER NICK------+"
PRINT ""
PRINT "Type '@' to cancel"
PRINT "Your Nickname: "; Nickname
PRINT ""
PRINT ""
PRINT ""
Old_Nickname = Nickname

INPUT "New Nickname: ", Nickname
PRINT ""

IF Nickname = "@" THEN
    Nickname = Old_Nickname
    PRINT "Nickname Change: Canceled"
ELSE
    PRINT "You have changed a nickname."
END IF
SLEEP 1
GOTO 6

8
CLS
PRINT "MasterOS QBasic Edition"
PRINT "Version: 0.1 (Alpha)"
PRINT "Author: MasterMen"
PRINT "Date: 09.06.2019"
PRINT ""
PRINT "May containt some bugs."
PRINT "It's Only Alpha. Some things"
PRINT "Can be change after new version release"
PRINT ""
PRINT "MasterOS Home: vk.com/gamesoftware_lime"
SLEEP
GOTO 3

9
CLS
PRINT "Ы Disk <A>"
PRINT "Ы A:\"
PRINT ""
PRINT "1. MASTEROS"
PRINT ""
PRINT "@. Back"
PRINT ""
PRINT ""
DO
    INPUT "Select: ", a
    IF a = "@" THEN GOTO 2
    IF a = "1" THEN GOTO 10
LOOP

10
CLS
PRINT "Can't Run System Folder"
PRINT ""
PRINT "1. OK"
PRINT ""
DO
    INPUT "Select: ", a
    IF a = "1" THEN GOTO 9
LOOP

11
CLS
_TITLE "MasterOS 0.1 QB64 Edition - CernioEditor"
PRINT "Welcome to CernioEditor QB64 Edition"
PRINT ""
PRINT "1. New File"
PRINT "2. Load File (In Progress)"
PRINT ""
PRINT "@. Exit"
PRINT ""
DO
    INPUT "Select: ", a
    IF a = "@" THEN
        GOTO 1
        _TITLE "MasterOS 0.1 QB64 Edition"
    END IF
    IF a = "1" THEN GOTO 12
LOOP

12
DIM FileName AS STRING
DIM FileExten AS STRING

DIM Line1 AS STRING
DIM Line2 AS STRING
DIM Line3 AS STRING
DIM Line4 AS STRING
DIM Line5 AS STRING

CLS
PRINT "Ы Creating a New File Ы"
PRINT ""
PRINT "Name is a file name"
PRINT "Extention is (*.txt),(*.cc),(*.cch)"
PRINT "Max Lines is a number of lines in file (1 - 5)"
PRINT ""
INPUT "Name: ", FileName
INPUT "Extention: ", FileExten
INPUT "Max Lines: ", FileLines
PRINT ""
PRINT "Preparing for Editing..."
SLEEP 1
CLS
PRINT "CernioEditor - Editing "; FileName; "."; FileExten
IF FileLines = 1 THEN
    INPUT "Line 1: ", Line1
    Line2 = ""
    Line3 = ""
    Line4 = ""
    Line5 = ""
ELSEIF FileLines = 2 THEN
    INPUT "Line 1: ", Line1
    INPUT "Line 2: ", Line2
    Line3 = ""
    Line4 = ""
    Line5 = ""
ELSEIF FileLines = 3 THEN
    INPUT "Line 1: ", Line1
    INPUT "Line 2: ", Line2
    INPUT "Line 3: ", Line3
    Line4 = ""
    Line5 = ""
ELSEIF FileLines = 4 THEN
    INPUT "Line 1: ", Line1
    INPUT "Line 2: ", Line2
    INPUT "Line 3: ", Line3
    INPUT "Line 4: ", Line4
    Line5 = ""
ELSEIF FileLines = 5 THEN
    INPUT "Line 1: ", Line1
    INPUT "Line 2: ", Line2
    INPUT "Line 3: ", Line3
    INPUT "Line 4: ", Line4
    INPUT "Line 5: ", Line5
END IF
PRINT ""
GOTO 13

13
CLS
PRINT "Preparing to save file..."
SLEEP 1
DIM FileNameFull AS STRING
FileNameFull = FileName + "." + FileExten
OPEN FileNameFull FOR OUTPUT AS #1

IF FileLines = 1 THEN
    WRITE #1, Line1
ELSEIF FileLines = 2 THEN
    WRITE #1, Line1
    WRITE #1, Line2
ELSEIF FileLines = 3 THEN
    WRITE #1, Line1
    WRITE #1, Line2
    WRITE #1, Line3
ELSEIF FileLines = 4 THEN
    WRITE #1, Line1
    WRITE #1, Line2
    WRITE #1, Line3
    WRITE #1, Line4
ELSEIF FileLines = 5 THEN
    WRITE #1, Line1
    WRITE #1, Line2
    WRITE #1, Line3
    WRITE #1, Line4
    WRITE #1, Line5
END IF

CLOSE #1
CLS
PRINT "File  "; FileNameFull; "  Saved!"
SLEEP 3
GOTO 11

14
CLS
PRINT "Protivogaznik: Protivogaznik recommends!"
SLEEP
GOTO 1
