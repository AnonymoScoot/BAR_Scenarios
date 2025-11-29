local scenariodata = {
	index             = 30,                --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid        = "folsomdamrcenter01", -- no spaces, lowercase, this will be used to save the score and can be used gadget side
	version           = "1",               -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title             = "Damlock",         -- can be anything
	isnew             = true,
	author            = "AnonymoScoot",    -- your name here
	imagepath         = "scenario030.jpg", -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor       = "Fortify the center", -- This text will be drawn over image
	summary           =
	[[Two enemy factions have been spotted preparing for a battle near the dam. Your commander has been dispatched to the center of the dam. Hold the center and destroy the enemy forces.]],
	briefing          =
	[[Two enemy factions consisting of 4 commanders each are positioned at the two sides of the dam. Your commander spawns at the center of the map, holding on their own. You must set up defenses immediatelly, as both factions will be trying to attack each other and you. The map has naval combat on the north of the dam, while the ground combat is on the south of the dam.

Tips:
 - The enemies will avoid heavily fortified locations, so build defences as soon as possible.
 - There isn't much space at the center of the dam, so try to be build more compact.
 - Reclaim the powerhouses for quick metal and energy boost.
 - Use the two geothermal vents for efficient energy generation.
 - Use jammers to hide your units, as radars will detect them.
 - Don't engage the enemy until you have enough firepower.
 - The Ragnarok and Calamity have enough range to destroy enemy bases when placed in the center of the map.

Scoring:
 - Time taken to complete the scenario.
 - Resources spent to destroy all enemy units.

The difficulty modifier will change the amount of resources you and the enemy receive from metal and energy structures:
 - Beginner: You +50%, enemy -50%
 - Novice: You +25%, enemy -25%
 - Normal: Regular resources for both sides
 - Hard: Regular resources for you, +50% for the enemy
 - Brutal: Regular resources for you, +100% for the enemy
 ]],

	mapfilename       = "FolsomDamR 1.17", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx      = "45%",          -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty      = "45%",          -- Y position of where player comm icon should be drawn, from top left of the map
	partime           = 5400,           -- par time in seconds (time a mission is expected to take on average)
	parresources      = 1000000,        -- par resource amount (amount of metal one is expected to spend on mission)
	difficulty        = 6,              -- Percieved difficulty at 'normal' level: integer 1-10
	defaultdifficulty = "Normal",       -- an entry of the difficulty table
	difficulties      = {               -- Array for sortedness, Keys are text that appears in selector (as well as in scoring!), values are handicap levels
		-- handicap values range [-100 - +100], with 0 being regular resources
		-- Currently difficulty modifier only affects the resource bonuses
		{ name = "Beginner", playerhandicap = 50, enemyhandicap = -50 },
		{ name = "Novice",   playerhandicap = 25, enemyhandicap = -25 },
		{ name = "Normal",   playerhandicap = 0,  enemyhandicap = 0 },
		{ name = "Hard",     playerhandicap = 0,  enemyhandicap = 50 },
		{ name = "Brutal",   playerhandicap = 0,  enemyhandicap = 100 },
	},
	allowedsides      = { "Armada", "Cortex", "Random" }, --these are the permitted factions for this mission, choose from {"Armada", "Cortex", "Random"}
	victorycondition  = "Kill all enemy Commanders",   -- This is plaintext, but should be reflected in startscript
	losscondition     = "Loss of all allied Commanders", -- This is plaintext, but should be reflected in startscript
	unitlimits        = {                              -- table of unitdefname : maxnumberoftese units, 0 is disable it
		-- dont use the one in startscript, put it here!
	},

	scenariooptions   = {            -- this will get lua->json->base64 and passed to scenariooptions in game
		myoption = "dostuff",        -- blank
		scenarioid = "folsomdamrcenter01", -- this MUST be present and identical to the one defined at start
		disablefactionpicker = true, -- this is needed to prevent faction picking outside of the allowedsides

		unitloadout = {
		},
		featureloadout = {
			-- Similarly to units, but these can also be resurrectable!

		}
	},
	-- Full Documentation for start script here:
	-- https://github.com/spring/spring/blob/105.0/doc/StartScriptFormat.txt

	-- HOW TO MAKE THE START SCRIPT: Use Chobby's single player mode to set up your start script. When you launch a single player game, the start script is dumped into infolog.txt
	-- ModOptions: You can also set modoptions in chobby, and they will get dumped into the infolog's start script too, or just set then in chobby and copy paste them into the [modoptions] tag. as below
	-- The following keys MUST be present in startscript below
	--  scenariooptions = __SCENARIOOPTIONS__;
	-- Name = __PLAYERNAME__;
	-- myplayername = __PLAYERNAME__;
	-- gametype = __BARVERSION__;
	-- mapname =__MAPNAME__;

	-- Optional keys:
	-- __ENEMYHANDICAP__
	-- __PLAYERSIDE__
	-- __PLAYERHANDICAP__
	-- __NUMRESTRICTIONS__
	-- __RESTRICTEDUNITS__

	startscript       = [[
[Game]
{
	[allyTeam0]
	{
		startrectright = 0.30000001;
		startrectbottom = 1;
		startrectleft = 0;
		numallies = 0;
		startrecttop = 0;
	}

	[ai4]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(1);
		ShortName = BARb;
		Team = 5;
		Version = stable;
	}

	[ai1]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(2);
		ShortName = BARb;
		Team = 2;
		Version = stable;
	}

	[team1]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 1;
		TeamLeader = 0;
	}

	[ai2]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(4);
		ShortName = BARb;
		Team = 3;
		Version = stable;
	}

	[ai5]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(5);
		ShortName = BARb;
		Team = 6;
		Version = stable;
	}

	[ai6]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(7);
		ShortName = BARb;
		Team = 7;
		Version = stable;
	}

	[ai3]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(8);
		ShortName = BARb;
		Team = 4;
		Version = stable;
	}

	[team3]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[team2]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[team7]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 1;
		TeamLeader = 0;
	}

	[ai7]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(3);
		ShortName = BARb;
		Team = 8;
		Version = stable;
	}

	[team6]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 1;
		TeamLeader = 0;
	}

	[team5]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[team4]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 1;
		TeamLeader = 0;
	}

	[allyTeam2]
	{
		startrectright = 0.55;
		startrectbottom = 0.55;
		startrectleft = 0.45;
		numallies = 0;
		startrecttop = 0.45;
	}

	[allyTeam1]
	{
		startrectright = 1;
		startrectbottom = 1;
		startrectleft = 0.69999999;
		numallies = 0;
		startrecttop = 0;
	}

	[team0]
	{
		Side = __PLAYERSIDE__;
		Handicap = __PLAYERHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 2;
		TeamLeader = 0;
	}

	[team8]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}
	
	NumRestrictions=__NUMRESTRICTIONS__;

	[modoptions]
	{
		scenariooptions = __SCENARIOOPTIONS__;
		teamffa_start_boxes_shuffle = 0;
	}

	[ai0]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(6);
		ShortName = BARb;
		Team = 1;
		Version = stable;
	}

	[player0]
	{
		IsFromDemo = 0;
		Name = __PLAYERNAME__;
		Team = 0;
		rank = 0;
	}

	hostip = 127.0.0.1;
	hostport = 0;
	numplayers = 1;
	startpostype = 2;
	mapname = __MAPNAME__;
	ishost = 1;
	numusers = 6;
	gametype = __BARVERSION__;
	nohelperais = 0;
	GameStartDelay = 5;
	myplayername = __PLAYERNAME__;
}

	]],

}

return scenariodata
