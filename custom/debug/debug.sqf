[player,4,true,(getPosATL player)] spawn player_alertZombies;
hintSilent parseText format ["

	<t size='0.95' font='Bitstream' align='left' color='#00A8A8' >Skin: %18</t>				     <t size='0.95' font='Bitstream' align='right' color='#1917B2' >[ FPS: %10 ]</t><br/><br/>
	<t size='0.95'font='Bitstream'align='center' color='#8C8C8C' >Survived %7 Days</t><br/><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Zombies (alive/total): </t>    <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >%20(%19)</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Zombies Killed: </t>			 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >%2</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Bandits Killed: </t>		   	 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >%5</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Headshots: </t>				 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >%3</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Murders: </t>					 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >%4</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Humanity: </t>				 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >%6</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#A30000' >Blood: </t>					 <t size='0.95' font='Bitstream' align='right' color='#A30000' >%9</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >GPS: %22</t>					 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >DIR: %24</t><br/><br/>
	<t size='0.95'font='Bitstream'align='center' color='#B2B2B2' >%21</t><br/><br/>	
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Players: %8</t>				 <t size='0.95 'font='Bitstream' align='right' color='#B2B2B2' >Within 500m: %11</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Vehicles:</t>					 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >%13(%14)</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Air: %16</t>					 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >Sea: %23</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >All Bikes: %15</t>			 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >Cars: %17</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#B2B2B2' >Zombies (alive/total): </t>	 <t size='0.95' font='Bitstream' align='right' color='#B2B2B2' >%20(%19)</t><br/>
	
	",
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
	(({isPlayer _x} count (getPos vehicle player nearEntities [["AllVehicles"], 500]))-1),
	viewdistance,
	(count([6800, 9200, 0] nearEntities [["StaticWeapon","Car","Motorcycle","Tank","Air","Ship"],25000])),
	count vehicles,
	(count([6800, 9200, 0] nearEntities [["Motorcycle"],25000])),
	(count([6800, 9200, 0] nearEntities [["Air"],25000])),
	(count([6800, 9200, 0] nearEntities [["Car"],25000])),
	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName')),
	(count entities "zZombie_Base"),
	({alive _x} count entities "zZombie_Base"),
	(getPosASL player),
	(mapGridPosition getPos player),
	(count([6800, 9200, 0] nearEntities [["Ship"],25000])),
	(round(getDir player))
	
];