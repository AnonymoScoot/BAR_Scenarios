local scenariodata = {
	index             = 31,                                           --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid        = "tickonly01",                                 -- no spaces, lowercase, this will be used to save the score and can be used gadget side
	version           = "1",                                          -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title             = "Tick for Tack",                              -- can be anything
	isnew             = true,
	author            = "AnonymoScoot",                               -- your name here
	imagepath         = "scenario033.jpg",                            -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor       = "I've got these ticks and I can't control them", -- This text will be drawn over image
	summary           =
	[[Fight against an army of robots with nothing but ticks.]],
	briefing          =
	[[You are limited to construction and support bot units, together with the only combat unit: tick. Build defenses quickly, hold your position, and make an overwhelming army of ticks.

Tips:
 - Ticks are fast and cheap, but weak. Build a couple of them first, then mass produce them.
 - You are able to build static defenses, which are strong, but weak to long range artillery.
 - You have access to anti-air bots, if the situation demands it.
 - The enemy will go easy on you first, but don't let them get too far into the tech tree.

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

	mapfilename       = "Fallendell_V4", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx      = "5%",         -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty      = "15%",        -- Y position of where player comm icon should be drawn, from top left of the map
	partime           = 2400,         -- par time in seconds (time a mission is expected to take on average)
	parresources      = 100000,       -- par resource amount (amount of metal one is expected to spend on mission)
	difficulty        = 5,            -- Percieved difficulty at 'normal' level: integer 1-10
	defaultdifficulty = "Normal",     -- an entry of the difficulty table
	difficulties      = {             -- Array for sortedness, Keys are text that appears in selector (as well as in scoring!), values are handicap levels
		-- handicap values range [-100 - +100], with 0 being regular resources
		-- Currently difficulty modifier only affects the resource bonuses
		{ name = "Beginner", playerhandicap = 50, enemyhandicap = -50 },
		{ name = "Novice",   playerhandicap = 25, enemyhandicap = -25 },
		{ name = "Normal",   playerhandicap = 0,  enemyhandicap = 0 },
		{ name = "Hard",     playerhandicap = 0,  enemyhandicap = 50 },
		{ name = "Brutal",   playerhandicap = 0,  enemyhandicap = 100 },
	},
	allowedsides      = { "Armada" },                 --these are the permitted factions for this mission, choose from {"Armada", "Cortex", "Random"}
	victorycondition  = "Kill all enemy Commanders",  -- This is plaintext, but should be reflected in startscript
	losscondition     = "Loss of all allied Commanders", -- This is plaintext, but should be reflected in startscript
	unitlimits        = {                             -- table of unitdefname : maxnumberoftese units, 0 is disable it
		-- dont use the one in startscript, put it here!
		armsy = 0,
		armvp = 0,
		armap = 0,
		armhp = 0,
		armshltxuw = 0,
		armshltx = 0,
		armpw = 0,
		armwar = 0,
		armham = 0,
		armrock = 0,
		armsptk = 0,
		armzeus = 0,
		armspid = 0,
		armmav = 0,
		armfast = 0,
		armvader = 0,
		armsnipe = 0,
		armamph = 0,
		armfido = 0,
		armfboy = 0,
	},

	scenariooptions   = {      -- this will get lua->json->base64 and passed to scenariooptions in game
		myoption = "dostuff",  -- blank
		scenarioid = "tickonly01", -- this MUST be present and identical to the one defined at start
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
		startrectright = 0.2;
		startrectbottom = 1;
		startrectleft = 0;
		numallies = 0;
		startrecttop = 0;
	}

	[team1]
	{
		Side = Cortex;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 1;
		TeamLeader = 0;
	}

	[team0]
	{
		Side = Armada;
		Handicap = __PLAYERHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[allyTeam1]
	{
		startrectright = 1;
		startrectbottom = 1;
		startrectleft = 0.80000001;
		numallies = 0;
		startrecttop = 0;
	}

	[ai0]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = SimpleAI(1);
		ShortName = SimpleAI;
		Team = 1;
		Version = <not-versioned>;
	}

	NumRestrictions=__NUMRESTRICTIONS__;

	[modoptions]
	{
		scenariooptions = __SCENARIOOPTIONS__;
	}

	[RESTRICT]
	{
        __RESTRICTEDUNITS__
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
