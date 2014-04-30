DayZVJ-Advance-GPS-System
=========================

DayZVJ Advance GPS System is a debug monitor for DayZ Epoch. Activated by right clicking GPS in gear 

![Admin Tools](http://dayzvj.co.uk/attachments/DayZVJ Debug.jpg)

# Features:
* Toggle On/OFF
* Player and Admin Debugs
* Ease to add more monitors

# Installation

1. Log into your server. Locate, download, and unpack (using PBO Manager or a similar PBO editor) your ***MPMissions/Your_Mission.pbo***, and open the resulting folder.
 	> PBO Tool: ***[PBO Manager](http://www.armaholic.com/page.php?id=16369)***
	> Note: "Your_Mission.pbo" is a placeholder name. Your mission might be called "DayZ_Epoch_11.Chernarus", "DayZ_Epoch_13.Tavi", or "dayz_mission" depending on hosting and chosen map.

1. Extract the ***custom*** folder from DayZVJ-Advance-GPS-System.zip and place into the root of your mission folder.
1. Open the ***init.sqf*** in the root of your mission folder and paste the following at the bottom:

1. Find
	~~~~java
	call compile preprocessFileLineNumbers"\z\addons\dayz_code\init\variables.sqf";
	progressLoadingScreen 0.1;
	call compile preprocessFileLineNumbers"\z\addons\dayz_code\init\publicEH.sqf";
	progressLoadingScreen 0.2;
	call compile preprocessFileLineNumbers"\z\addons\dayz_code\medical\setup_functions_med.sqf";
	progressLoadingScreen 0.4;
	call compile preprocessFileLineNumbers"\z\addons\dayz_code\init\compiles.sqf";
	progressLoadingScreen 0.5;
	call compile preprocessFileLineNumbers"server_traders.sqf";
	progressLoadingScreen 1.0;
	~~~~

1. And Add:

	~~~~java
	call compile preprocessFileLineNumbers"custom\rightclick\compiles.sqf";
	progressLoadingScreen 0.6;
	~~~~

1. Save the init.sqf
1. Open your ***description.ext***
1. Paste the following at the bottom:

    ~~~~java
    #include "custom\rightclick\extra_rc.hpp"
    ~~~~
	
1. Now goto custem\debug and open DayZVJDebug

1. In line 3 Add your and/or other Admins UID

  	> Don't forget to add a comma (,) between UIDs "","" But none on the last UID
    ~~~~java
    DebugUID = ["111111111",/*Your UID*/"999999999"/*Admin UID*/];
    ~~~~

## Credits:
* VJ1989

## ExtraRc script credit:
* maca134
