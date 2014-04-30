if (isNil "DBM") then {DBM = true;} else {DBM = !DBM;};
if (DBM) then { DBMActive = true; }else{ DBMActive=false; };
DebugUID = ["237191494"];
WAITUNTIL {alive player};
(findDisplay 106) closeDisplay 1;
titleText ["Advance GPS System Activated","PLAIN DOWN"]; titleFadeOut 4;
while { DBM && DBMActive } do 
{ 
	if ((getPlayerUID player) in DebugUID) then{
		[]execVM "custom\debug\debug.sqf"
	}else{
		[]execVM "custom\debug\AGS.sqf"
	};
};
(findDisplay 106) closeDisplay 1;
[]execVM "custom\debug\off.sqf"
titleText ["Advance GPS System Deactivated","PLAIN DOWN"]; titleFadeOut 4;