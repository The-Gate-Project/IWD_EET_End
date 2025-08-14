BEGIN ~FCIWDELM~

IF ~  NumTimesTalkedTo(0)
AreaCheck("BG1001")
~ THEN BEGIN 0 // from:
  SAY #299407 /* ~Ah, <CHARNAME>, I heard a lot about you. Don't be shy, join the old man near the fire.~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #299408 /* ~Let's talk over a cup of tea...~ */
  IF ~~ THEN REPLY #299409 /* ~Who are you? How do you know me?~ */ DO ~SetGlobal("JO_GLOBAL_TALK_BG1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #299410 /* ~Stay away from me. I'm tired that every stranger knows my name. Too much trouble.~ */ DO ~SetGlobal("JO_GLOBAL_TALK_BG1","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #299411 /* ~I have nothing to talk with you.~ */ DO ~SetGlobal("JO_GLOBAL_TALK_BG1","GLOBAL",1)
~ GOTO 8
END

IF ~  NumTimesTalkedTo(0)
AreaCheck("AR0406")
Global("FC_HAS_BG1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #299412 /* ~Greetings, <CHARNAME>, I'm Maladernoth. Maybe, you have forgot me. We met once in Ulgoth Beard. If you want, I can refresh your memory.~ */
  IF ~~ THEN REPLY #299413 /* ~You are right, I don't remember you. I'll be grateful, if you tell me about yourself once more.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",7)
~ GOTO 26
  IF ~~ THEN REPLY #299414 /* ~There is no need, Maladernoth. I remember everything clearly. How did you end up in Athkatla?~ */ GOTO 29
  IF ~~ THEN REPLY #299415 /* ~Wait, don't. I have absolutely no interest in you.~ */ GOTO 8
END

IF ~  NumTimesTalkedTo(0)
AreaCheck("AR0406")
Global("FC_HAS_BG1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #299416 /* ~Greetings, <CHARNAME>. Happy to see you again.~ */
  IF ~  Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299417 /* ~And I happy to see you, Maladernoth. What brings you to Athkatla?~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
~ GOTO 29
  IF ~  Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299418 /* ~Maladernoth! What are you doing here?~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
~ GOTO 29
  IF ~  Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299419 /* ~It's you again, old man. What do you want now?~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
~ GOTO 29
  IF ~  !Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299417 /* ~And I happy to see you, Maladernoth. What brings you to Athkatla?~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
~ GOTO 47
  IF ~  !Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299418 /* ~Maladernoth! What are you doing here?~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
~ GOTO 47
  IF ~  !Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299419 /* ~It's you again, old man. What do you want now?~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
~ GOTO 47
  IF ~~ THEN REPLY #299420 /* ~Well, I'm leaving. Farewell.~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.0 19.0 42.0
  SAY #299421 /* ~Ah, but how can I not know you? Your name is famous all over the Sword Coast.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1 19.1 42.1
  SAY #299422 /* ~Ah, don't be hasty. I have no ill will towards you.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #299423 /* ~Let me start with good manners. My name is Maladernoth, and I came here from the far north.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Maladernot","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #299424 /* ~And, to be honest, I came here searching for help. Will you hear my plea?~ */
  IF ~~ THEN REPLY #299425 /* ~Yes. I want to hear your story.~ */ GOTO 9
  IF ~~ THEN REPLY #299426 /* ~Sorry. Not interested.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.2 2.2 3.6 7.1 12.2 12.3 17.1 19.2 20.1 21.2 21.3 22.2 22.3 23.1 27.1 28.4 31.4 37.1 38.1 42.2 46.2 46.3 49.4 54.1
  SAY #299427 /* ~If you say so. I will stay here for a while.~ */
  IF ~  AreaCheck("AR0406")
~ THEN EXIT
  IF ~  AreaCheck("BG1001")
~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 20.0
  SAY #299428 /* ~Listen then. It started not very long ago, in the far north, in Icewind Dale. Something strange is going on there.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #299429 /* ~Townsfolk missing, goblins, orcs and other beasts appeared all over the region, undead are at unrest in the crypts. People are frightened, no one knows what to do. Parties organized to help the towns, but they are not successful yet.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #299430 /* ~I casted divination spells to know where we can find help, if there is any. Ah...all predictions are blurry, but they all point to one specific <PRO_RACE>. To you, <CHARNAME>.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #299431 /* ~And I am asking you. Will you help us?~ */
  IF ~  AreaCheck("BG1001")
~ THEN REPLY #299432 /* ~All right, I'm in. When will we set off?~ */ GOTO 13
  IF ~  AreaCheck("AR0406")
~ THEN REPLY #299432 /* ~All right, I'm in. When will we set off?~ */ GOTO 50
  IF ~~ THEN REPLY #299433 /* ~I'll think about it, Maladernoth.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #299434 /* ~I'm not interested, old man.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.0 21.0 22.0 46.0
  SAY #299435 /* ~It's such a relief. It takes a load off my mind. We can go now. But I must warn you.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #299436 /* ~Travelling over such distances is a very powerful magic. And I am not the best wizard in Faerun. So, I can't travel with you. I shall wait for you here and hope that you will return with a victory.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #299437 /* ~And I don't have enough power to transport you with your equipment. You have to leave it here. Place everything behind the fireplace and I'll make sure no one will touch it.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #299438 /* ~And last: I don't know where exactly in Icewind Dale my spell wil teleport you. But I assure it will be the place where your help will be needed. And this spell shall take you back here, when you end your mission.~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #299439 /* ~Well, are you ready?~ */
  IF ~~ THEN REPLY #299440 /* ~Yes, I am ready.~ */ DO ~ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 18
  IF ~~ THEN REPLY #299441 /* ~Not yet. I have some other business to do yet. But I will return, I promise.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",3)
ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 8
  IF ~  !Global("JO_GLOBAL_IN_IWD2","GLOBAL",1)
~ THEN REPLY #299465 /* ~I don't feel concerned enough, have you a quest worthy of my temper so versatile ?~ */ DO ~SetGlobal("FC_PREFER_IWD2","MYAREA",1)
SetGlobal("FC_PREFER_IWD1","MYAREA",0)
ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 47
END

IF ~~ THEN BEGIN 18 // from: 17.0 23.0 54.0
  SAY #299442 /* ~Great. Off we go.~ */
  IF ~~ THEN DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",4)
SetGlobal("JO_GLOBAL_IN_IWD1","GLOBAL",1)
StartCutSceneMode()
SmallWait(10)
SetSequence(SEQ_CAST)
SmallWait(3)
CreateVisualEffectObject("SPALTERA",Myself)
Wait(1)
CreateVisualEffectObject("SPARMOUR",Myself)
Wait(1)
StartCutSceneEx("IDSHCUT1",FALSE)
~ EXIT
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",0)
Global("Know_Maladernot","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #299443 /* ~I greet you again, <CHARNAME>. Do you wish to talk with the old man?~ */
  IF ~~ THEN REPLY #299409 /* ~Who are you? How do you know me?~ */ GOTO 4
  IF ~~ THEN REPLY #299410 /* ~Stay away from me. I'm tired that every stranger knows my name. Too much trouble.~ */ GOTO 5
  IF ~~ THEN REPLY #299411 /* ~I have nothing to talk with you.~ */ GOTO 8
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",0)
Global("Know_Maladernot","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #299444 /* ~I greet you again, <CHARNAME>. Have you reconsidered? Will you hear me out?~ */
  IF ~~ THEN REPLY #299425 /* ~Yes. I want to hear your story.~ */ GOTO 9
  IF ~~ THEN REPLY #299426 /* ~Sorry. Not interested.~ */ GOTO 8
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #299445 /* ~You listened to my story, <CHARNAME>. Will you help me?~ */
  IF ~  AreaCheck("BG1001")
~ THEN REPLY #299432 /* ~All right, I'm in. When will we set off?~ */ GOTO 13
  IF ~  AreaCheck("AR0406")
~ THEN REPLY #299432 /* ~All right, I'm in. When will we set off?~ */ GOTO 50
  IF ~~ THEN REPLY #299433 /* ~I'll think about it, Maladernoth.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #299434 /* ~I'm not interested, old man.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",1)
~ GOTO 8
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #299446 /* ~Have you reconsidered, <CHARNAME>? Are you willing to help me?~ */
  IF ~  AreaCheck("BG1001")
~ THEN REPLY #299432 /* ~All right, I'm in. When will we set off?~ */ GOTO 13
  IF ~  AreaCheck("AR0406")
~ THEN REPLY #299432 /* ~All right, I'm in. When will we set off?~ */ GOTO 50
  IF ~~ THEN REPLY #299433 /* ~I'll think about it, Maladernoth.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #299434 /* ~I'm not interested, old man.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",1)
~ GOTO 8
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",3)
~ THEN BEGIN 23 // from:
  SAY #299447 /* ~Have you done with your business, <CHARNAME>? Ready to travel to the north?~ */
  IF ~~ THEN REPLY #299440 /* ~Yes, I am ready.~ */ GOTO 18
  IF ~~ THEN REPLY #299441 /* ~Not yet. I have some other business to do yet. But I will return, I promise.~ */ GOTO 8
  IF ~  !Global("JO_GLOBAL_IN_IWD2","GLOBAL",1)
~ THEN REPLY #299465 /* ~I don't feel concerned enough, have you a quest worthy of my temper so versatile ?~ */ DO ~SetGlobal("FC_PREFER_IWD2","MYAREA",1)
SetGlobal("FC_PREFER_IWD1","MYAREA",0)
~ GOTO 47
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",5)
Global("JO_GLOBAL_IN_IWD2","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #299448 /* ~Ah, <CHARNAME>... You returned victorious. Know that everyone in Easthaven, Kuldahar and in the whole Icewind Dale is grateful to you. You saved us all. Saved us from the evil demon's plans. He was slain and we can return to our lives. Thank you.~ */
  IF ~~ THEN DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",6)
GiveItemCreate("BLOOD",LastTalkedToBy(Myself),0,0,0)
AddexperienceParty(24000)
GiveGoldForce(10000)
Unlock("IWD_Container")
~ EXIT
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",5)
!Global("JO_GLOBAL_IN_IWD2","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #299448 /* ~Ah, <CHARNAME>... You returned victorious. Know that everyone in Easthaven, Kuldahar and in the whole Icewind Dale is grateful to you. You saved us all. Saved us from the evil demon's plans. He was slain and we can return to our lives. Thank you.~ */
  IF ~~ THEN DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",6)
GiveItemCreate("BLOOD",LastTalkedToBy(Myself),0,0,0)
AddexperienceParty(24000)
GiveGoldForce(10000)
Unlock("IWD_Container")
~ GOTO 47
END

IF ~~ THEN BEGIN 26 // from: 2.0
  SAY #299449 /* ~I came from the north, from the Icewind Dale. It's a good place to live, if you don't mind the cold. But some time ago we had a disaster. A powerful demon broke out from his plane and tried to conquer the region. I used the divination spell to know where to find help. It guided me to the Sword Coast, to Ulgoth's Beard. There I have met you.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #299450 /* ~You agreed to help us. And banished the demon back to Abyss. Saved Icewind Dale from the evil. You have our eternal gratitute for that.~ */
  IF ~~ THEN REPLY #299451 /* ~And what do you want now?~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
~ GOTO 29
  IF ~~ THEN REPLY #299452 /* ~I see. A very interesting story. Goodbye.~ */ GOTO 8
END

IF ~  AreaCheck("AR0406")
OR(2)
Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",6)
Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",7)
~ THEN BEGIN 28 // from:
  SAY #299453 /* ~You are back. Happy to see you again.~ */
  IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",6)
Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299454 /* ~Yes. I want to know what brings you to Athkatla.~ */ GOTO 29
  IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",7)
Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299455 /* ~You have told a truly staggering story. And I wonder, how am I connected to all this?~ */ GOTO 29
  IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",6)
!Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299454 /* ~Yes. I want to know what brings you to Athkatla.~ */ GOTO 47
  IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",7)
!Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299455 /* ~You have told a truly staggering story. And I wonder, how am I connected to all this?~ */ GOTO 47
  IF ~~ THEN REPLY #299456 /* ~Wonderful. Goodbye.~ */ GOTO 8
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN BEGIN 29 // from: 2.1 3.0 3.1 3.2 27.0 28.0 28.1
  SAY #299457 /* ~I know you helped us so much already, and I am not comfortable to ask you again... but the north is in trouble again. And we need your help.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #299458 /* ~Goblin hordes are gathering up and attacking the towns. Not only the goblins, but the orcs and gods know who else... People are desperate. Soldiers alone can't hold monsters off.~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #299459 /* ~It takes me all my courage to ask: Will you help us once more?~ */
  IF ~  Global("FC_HAS_BG1","GLOBAL",0)
AreaCheck("AR0406")
~ THEN REPLY #299460 /* ~Well, if there is a trouble, it must be solved. When are we going?~ */ DO ~SetGlobal("FC_HAS_BG1","GLOBAL",1)
~ GOTO 32
  IF ~  Global("FC_HAS_BG1","GLOBAL",0)
AreaCheck("BG1001")
~ THEN REPLY #299460 /* ~Well, if there is a trouble, it must be solved. When are we going?~ */ DO ~SetGlobal("FC_HAS_BG1","GLOBAL",1)
~ GOTO 55
  IF ~  Global("FC_HAS_BG1","GLOBAL",1)
AreaCheck("AR0406")
~ THEN REPLY #299460 /* ~Well, if there is a trouble, it must be solved. When are we going?~ */ GOTO 36
  IF ~  Global("FC_HAS_BG1","GLOBAL",1)
AreaCheck("BG1001")
~ THEN REPLY #299460 /* ~Well, if there is a trouble, it must be solved. When are we going?~ */ GOTO 59
  IF ~~ THEN REPLY #299461 /* ~Sorry, old man, but I had enough of your troubles.~ */ GOTO 8
  IF ~  !Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299465 /* ~I don't feel concerned enough, have you a quest worthy of my temper so versatile ?~ */ GOTO 43
END

IF ~~ THEN BEGIN 32 // from: 31.0 49.0
  SAY #299435 /* ~It's such a relief. It takes a load off my mind. We can go now. But I must warn you.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #299436 /* ~Travelling over such distances is a very powerful magic. And I am not the best wizard in Faerun. So, I can't travel with you. I shall wait for you here and hope that you will return with a victory.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #299462 /* ~And I don't have enough power to move you with all your equipment. You must leave it here. You can store your equipment behind that picture, I'll guard it for you.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #299438 /* ~And last: I don't know where exactly in Icewind Dale my spell wil teleport you. But I assure it will be the place where your help will be needed. And this spell shall take you back here, when you end your mission.~ */
  IF ~~ THEN DO ~ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 31.2 49.2
  SAY #299463 /* ~I think you remember about the teleportation restrictions. You can store your equipment behind that picture, I'll guard it for you.~ */
  IF ~~ THEN DO ~ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0 58.0 59.0
  SAY #299439 /* ~Well, are you ready?~ */
  IF ~~ THEN REPLY #299440 /* ~Yes, I am ready.~ */ GOTO 39
  IF ~~ THEN REPLY #299441 /* ~Not yet. I have some other business to do yet. But I will return, I promise.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",9)
~ GOTO 8
  IF ~  !Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299465 /* ~I don't feel concerned enough, have you a quest worthy of my temper so versatile ?~ */ DO ~SetGlobal("FC_PREFER_IWD1","MYAREA",1)
SetGlobal("FC_PREFER_IWD2","MYAREA",0)
~ GOTO 43
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",9)
~ THEN BEGIN 38 // from:
  SAY #299447 /* ~Have you done with your business, <CHARNAME>? Ready to travel to the north?~ */
  IF ~~ THEN REPLY #299440 /* ~Yes, I am ready.~ */ GOTO 39
  IF ~~ THEN REPLY #299441 /* ~Not yet. I have some other business to do yet. But I will return, I promise.~ */ GOTO 8
  IF ~  !Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299465 /* ~I don't feel concerned enough, have you a quest worthy of my temper so versatile ?~ */ DO ~SetGlobal("FC_PREFER_IWD1","MYAREA",1)
SetGlobal("FC_PREFER_IWD2","MYAREA",0)
~ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 37.0 38.0
  SAY #299442 /* ~Great. Off we go.~ */
  IF ~~ THEN DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",10)
SetGlobal("JO_GLOBAL_IN_IWD2","GLOBAL",1)
StartCutSceneMode()
SmallWait(10)
SetSequence(SEQ_CAST)
SmallWait(3)
CreateVisualEffectObject("SPALTERA",Myself)
Wait(1)
CreateVisualEffectObject("SPARMOUR",Myself)
Wait(1)
StartCutSceneEx("IWSHCUT1",FALSE)
~ EXIT
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",11)
Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #299464 /* ~Ah, <CHARNAME>... You returned victorious. Know that everyone in Targos and the in whole Icewind Dale are grateful to you. You saved us all. Saved us from the evil demons' plans. Isair and Madae were slain and we can return to our lives. Thank you.~ */
  IF ~~ THEN DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",12)
GiveItemCreate("Z6SWDCSS",LastTalkedToBy(Myself),0,0,0)
AddexperienceParty(120000)
GiveGoldForce(10000)
Unlock("IWD_Container")
~ EXIT
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",11)
!Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY #299464 /* ~Ah, <CHARNAME>... You returned victorious. Know that everyone in Targos and the in whole Icewind Dale are grateful to you. You saved us all. Saved us from the evil demons' plans. Isair and Madae were slain and we can return to our lives. Thank you.~ */
  IF ~~ THEN DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",12)
GiveItemCreate("Z6SWDCSS",LastTalkedToBy(Myself),0,0,0)
AddexperienceParty(120000)
GiveGoldForce(10000)
Unlock("IWD_Container")
~ GOTO 43
END

IF ~  NumTimesTalkedTo(0)
AreaCheck("AR0406")
Global("JO_GLOBAL_TALK_BG1","GLOBAL",0)
Global("FC_HAS_BG1","GLOBAL",1)
~ THEN BEGIN 42 // from:
  SAY #299407 /* ~Ah, <CHARNAME>, I heard a lot about you. Don't be shy, join the old man near the fire.~ */
  IF ~~ THEN REPLY #299409 /* ~Who are you? How do you know me?~ */ GOTO 4
  IF ~~ THEN REPLY #299410 /* ~Stay away from me. I'm tired that every stranger knows my name. Too much trouble.~ */ GOTO 5
  IF ~~ THEN REPLY #299411 /* ~I have nothing to talk with you.~ */ GOTO 8
END

IF ~~ THEN BEGIN 43 // from: 31.5 37.2 38.2 41.0 49.5
  SAY #299466 /* ~A Great Oak.~ */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #299429 /* ~Townsfolk missing, goblins, orcs and other beasts appeared all over the region, undead are at unrest in the crypts. People are frightened, no one knows what to do. Parties organized to help the towns, but they are not successful yet.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #299430 /* ~I casted divination spells to know where we can find help, if there is any. Ah...all predictions are blurry, but they all point to one specific <PRO_RACE>. To you, <CHARNAME>.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #299431 /* ~And I am asking you. Will you help us?~ */
  IF ~  AreaCheck("BG1001")
~ THEN REPLY #299432 /* ~All right, I'm in. When will we set off?~ */ GOTO 13
  IF ~  AreaCheck("AR0406")
~ THEN REPLY #299432 /* ~All right, I'm in. When will we set off?~ */ GOTO 50
  IF ~~ THEN REPLY #299433 /* ~I'll think about it, Maladernoth.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #299434 /* ~I'm not interested, old man.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",1)
~ GOTO 8
  IF ~  !Global("JO_GLOBAL_IN_IWD2","GLOBAL",1)
~ THEN REPLY #299465 /* ~I don't feel concerned enough, have you a quest worthy of my temper so versatile ?~ */ DO ~SetGlobal("FC_PREFER_IWD2","MYAREA",1)
SetGlobal("FC_PREFER_IWD1","MYAREA",0)
~ GOTO 47
END

IF ~  Global("FC_GLOBAL_IWD_VARIABLE","GLOBAL",8)
AreaCheck("AR0406")
~ THEN BEGIN 47 // from: 3.3 3.4 3.5 17.2 23.2 25.0 28.2 28.3 46.4 54.2
  SAY #299467 /* ~There is an adventure near Targos one of the ten towns of Icewind Dale.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #299458 /* ~Goblin hordes are gathering up and attacking the towns. Not only the goblins, but the orcs and gods know who else... People are desperate. Soldiers alone can't hold monsters off.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #299468 /* ~It takes me all my courage to ask: Will you help us?~ */
  IF ~  Global("FC_HAS_BG1","GLOBAL",0)
AreaCheck("AR0406")
~ THEN REPLY #299460 /* ~Well, if there is a trouble, it must be solved. When are we going?~ */ DO ~SetGlobal("FC_HAS_BG1","GLOBAL",1)
~ GOTO 32
  IF ~  Global("FC_HAS_BG1","GLOBAL",0)
AreaCheck("BG1001")
~ THEN REPLY #299460 /* ~Well, if there is a trouble, it must be solved. When are we going?~ */ DO ~SetGlobal("FC_HAS_BG1","GLOBAL",1)
~ GOTO 55
  IF ~  Global("FC_HAS_BG1","GLOBAL",1)
AreaCheck("AR0406")
~ THEN REPLY #299460 /* ~Well, if there is a trouble, it must be solved. When are we going?~ */ GOTO 36
  IF ~  Global("FC_HAS_BG1","GLOBAL",1)
AreaCheck("BG1001")
~ THEN REPLY #299460 /* ~Well, if there is a trouble, it must be solved. When are we going?~ */ GOTO 59
  IF ~~ THEN REPLY #299461 /* ~Sorry, old man, but I had enough of your troubles.~ */ GOTO 8
  IF ~  !Global("JO_GLOBAL_IN_IWD1","GLOBAL",1)
~ THEN REPLY #299465 /* ~I don't feel concerned enough, have you a quest worthy of my temper so versatile ?~ */ DO ~SetGlobal("FC_PREFER_IWD1","MYAREA",1)
SetGlobal("FC_PREFER_IWD2","MYAREA",0)
~ GOTO 43
END

IF ~~ THEN BEGIN 50 // from: 12.1 21.1 22.1 46.1
  SAY #299435 /* ~It's such a relief. It takes a load off my mind. We can go now. But I must warn you.~ */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #299436 /* ~Travelling over such distances is a very powerful magic. And I am not the best wizard in Faerun. So, I can't travel with you. I shall wait for you here and hope that you will return with a victory.~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #299462 /* ~And I don't have enough power to move you with all your equipment. You must leave it here. You can store your equipment behind that picture, I'll guard it for you.~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #299438 /* ~And last: I don't know where exactly in Icewind Dale my spell wil teleport you. But I assure it will be the place where your help will be needed. And this spell shall take you back here, when you end your mission.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #299439 /* ~Well, are you ready?~ */
  IF ~~ THEN REPLY #299440 /* ~Yes, I am ready.~ */ DO ~ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 18
  IF ~~ THEN REPLY #299441 /* ~Not yet. I have some other business to do yet. But I will return, I promise.~ */ DO ~SetGlobal("FC_GLOBAL_IWD_VARIABLE","GLOBAL",3)
ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 8
  IF ~  !Global("JO_GLOBAL_IN_IWD2","GLOBAL",1)
~ THEN REPLY #299465 /* ~I don't feel concerned enough, have you a quest worthy of my temper so versatile ?~ */ DO ~SetGlobal("FC_PREFER_IWD2","MYAREA",1)
SetGlobal("FC_PREFER_IWD1","MYAREA",0)
ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 47
END

IF ~~ THEN BEGIN 55 // from: 31.1 49.1
  SAY #299435 /* ~It's such a relief. It takes a load off my mind. We can go now. But I must warn you.~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #299436 /* ~Travelling over such distances is a very powerful magic. And I am not the best wizard in Faerun. So, I can't travel with you. I shall wait for you here and hope that you will return with a victory.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #299437 /* ~And I don't have enough power to transport you with your equipment. You have to leave it here. Place everything behind the fireplace and I'll make sure no one will touch it.~ */
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #299438 /* ~And last: I don't know where exactly in Icewind Dale my spell wil teleport you. But I assure it will be the place where your help will be needed. And this spell shall take you back here, when you end your mission.~ */
  IF ~~ THEN DO ~ContainerEnable("IWD_Container",TRUE)
Lock("IWD_Container")
~ GOTO 37
END

IF ~~ THEN BEGIN 59 // from: 31.3 49.3
  SAY #299469 /* ~I think you remember about the teleportation restrictions. You can store your equipment behind the fireplace, I'll guard it for you.~ */
  IF ~~ THEN DO ~ContainerEnable("IWD_Container",TRUE)
~ GOTO 37
END
