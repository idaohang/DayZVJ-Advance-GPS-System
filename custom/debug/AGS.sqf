[player,4,true,(getPosATL player)] spawn player_alertZombies;
hintSilent parseText format ["

	<t size='0.95' font='Bitstream' align='left' color='#00A8A8'>[ %1 ]</t><t size='0.95' font='Bitstream' align='right' color='#1917B2'>[FPS: %10]</t><br/><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2'>Players: %8</t><t size='0.95 'font='Bitstream' align='right' color='#B2B2B2'>Within 500m: %15</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2'>Zombies: </t><t size='0.95' font='Bitstream' align='right' color='#B2B2B2'>%12</t><br/><br/>
	<t size='1.15' font='Bitstream' align='center' color='#B2B2B2'>Skin: %11</t><br/>
	<t size='1.15' font='Bitstream' align='center' color='#8C8C8C'>Survived %7 Days</t><br/><br/>
	<t size='1.15' font='Bitstream' align='left' color='#B2B2B2'>Zombies Killed: </t><t size='1.15' font='Bitstream' align='right' color='#B2B2B2'>%2</t><br/>
	<t size='1.15' font='Bitstream' align='left' color='#B2B2B2'>Bandits Killed: </t><t size='1.15' font='Bitstream' align='right' color='#B2B2B2'>%5</t><br/>
	<t size='1.15' font='Bitstream' align='left' color='#B2B2B2'>Headshots: </t><t size='1.15' font='Bitstream' align='right' color='#B2B2B2'>%3</t><br/>
	<t size='1.15' font='Bitstream' align='left' color='#B2B2B2'>Murders: </t><t size='1.15' font='Bitstream' align='right' color='#B2B2B2'>%4</t><br/>
	<t size='1.15' font='Bitstream' align='left' color='#B2B2B2'>Humanity: </t><t size='1.15' font='Bitstream' align='right' color='#B2B2B2'>%6</t><br/>
	<t size='1.15' font='Bitstream' align='left' color='#A30000'>Blood: </t><t size='1.15' font='Bitstream' align='right' color='#A30000'>%9</t><br/><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2'>GPS: %13</t><t size='0.95' font='Bitstream' align='right' color='#B2B2B2'>DIR: %14</t><br/><br/>
	<t size='1.15' font='Bitstream' align='center' color='#00AF00'>TeamSpeak: DayZVJ.co.uk</t><br/>
	<t size='0.95' font='Bitstream' align='center' color='#B2B2B2'>Restart in %16 minutes!</t><br/><br/>",
	
	(name player),
	(player getVariable['zombieKills', 0]),
	(player getVariable['headShots', 0]),
	(player getVariable['humanKills', 0]),
	(player getVariable['banditKills', 0]),
	(player getVariable['humanity', 0]),
	(dayz_Survived),
	(count playableUnits),
	r_player_blood,
	(round diag_fps),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName')),
	({alive _x} count entities "zZombie_Base"),
	(mapGridPosition getPos player),
	(round(getDir player)),
	(({isPlayer _x} count (getPos vehicle player nearEntities [["AllVehicles"], 500]))-1),
	(240-(round(serverTime/60)))
];
