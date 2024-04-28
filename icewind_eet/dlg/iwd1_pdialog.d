%state_trigger_add%

APPEND ~%PDIALOG_IWD1%~

IF WEIGHT #0 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",0)
    Gender(Myself,FEMALE)
    RandomNum(4,1)~ fm_1
SAY @1000
	IF ~~ THEN REPLY @1001 DO ~SetGlobal("IdKickedOut","LOCALS",1)LeaveParty()~ EXIT
	IF ~~ THEN REPLY @1002 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF WEIGHT #1 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",0)
    Gender(Myself,FEMALE)
    RandomNum(4,2)~ fm_2
SAY @1003
	IF ~~ THEN REPLY @1004 DO ~SetGlobal("IdKickedOut","LOCALS",1)LeaveParty()~ EXIT
	IF ~~ THEN REPLY @1005 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF WEIGHT #2 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",0)
    Gender(Myself,FEMALE)
    RandomNum(4,3)~ fm_3
SAY @1006
	IF ~~ THEN REPLY @1007 DO ~SetGlobal("IdKickedOut","LOCALS",1)LeaveParty()~ EXIT
	IF ~~ THEN REPLY @1008 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF WEIGHT #3 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",0)
    Gender(Myself,FEMALE)
    RandomNum(4,4)~ fm_4
SAY @1009
	IF ~~ THEN REPLY @1010 DO ~SetGlobal("IdKickedOut","LOCALS",1)LeaveParty()~ EXIT
	IF ~~ THEN REPLY @1011 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF WEIGHT #4 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",0)
    !Gender(Myself,FEMALE)
    RandomNum(4,1)~ ml_1
SAY @1012
	IF ~~ THEN REPLY @1001 DO ~SetGlobal("IdKickedOut","LOCALS",1)LeaveParty()~ EXIT
	IF ~~ THEN REPLY @1002 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF WEIGHT #5 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",0)
    !Gender(Myself,FEMALE)
    RandomNum(4,2)~ ml_2
SAY @1013
	IF ~~ THEN REPLY @1004 DO ~SetGlobal("IdKickedOut","LOCALS",1)LeaveParty()~ EXIT
	IF ~~ THEN REPLY @1014 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF WEIGHT #6 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",0)
    !Gender(Myself,FEMALE)
    RandomNum(4,3)~ ml_3
SAY @1015
	IF ~~ THEN REPLY @1007 DO ~SetGlobal("IdKickedOut","LOCALS",1)LeaveParty()~ EXIT
	IF ~~ THEN REPLY @1016 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF WEIGHT #7 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",0)
    !Gender(Myself,FEMALE)
    RandomNum(4,4)~ ml_4
SAY @1017
	IF ~~ THEN REPLY @1010 DO ~SetGlobal("IdKickedOut","LOCALS",1)LeaveParty()~ EXIT
	IF ~~ THEN REPLY @1011 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF WEIGHT #-1 ~Global("PARTY_IN_ICEWIND_DALE","GLOBAL",1) Global("IdKickedOut","LOCALS",1)~ THEN BEGIN ml_5
SAY @1020
	IF ~~ THEN REPLY @1021 DO ~SetGlobal("IdKickedOut","LOCALS",0)JoinParty()~ EXIT
	IF ~~ THEN REPLY @1022 EXIT
END

END


















