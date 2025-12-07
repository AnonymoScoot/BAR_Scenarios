local scenariodata = {
	index             = 34,                                 --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid        = "greatdividefriend01",              -- no spaces, lowercase, this will be used to save the score and can be used gadget side
	version           = "1",                                -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title             = "Wingman",                          -- can be anything
	isnew             = true,
	author            = "AnonymoScoot",                     -- your name here
	imagepath         = "scenario034.jpg",                  -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor       = "A friend in need is a friend indeed", -- This text will be drawn over image
	summary           =
	[[One of your rookie buddies has challenged an enemy commander to a fight. They asked you for help to even the playing field.]],
	briefing          =
	[[You're paired with a less experienced allied commander against a hostile foe. Your partner's understanding of the battlefield is pretty limited, but they are trying their best. Provide support and eliminate the Barbarian commander.

Tips:
 - There is a single chokepoint in the center of the map, reinforce it and provide a little more breathing room for your buddy.
 - The enemy commander is more experienced than your allied commander, so don't depend on him too much.
 - If your ally builds something you don't like, you can reclaim their buildings and get the metal back.
 - If you stall your opponent for enough time, your buddy might use the opportunity to build a large army and overpower the enemy.

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

	mapfilename       = "Great Divide V1", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx      = "45%",          -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty      = "15%",          -- Y position of where player comm icon should be drawn, from top left of the map
	partime           = 2400,           -- par time in seconds (time a mission is expected to take on average)
	parresources      = 100000,         -- par resource amount (amount of metal one is expected to spend on mission)
	difficulty        = 3,              -- Percieved difficulty at 'normal' level: integer 1-10
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

	scenariooptions   = {             -- this will get lua->json->base64 and passed to scenariooptions in game
		myoption = "dostuff",         -- blank
		scenarioid = "greatdividefriend01", -- this MUST be present and identical to the one defined at start
		disablefactionpicker = true,  -- this is needed to prevent faction picking outside of the allowedsides

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
		startrectright = 1;
		startrectbottom = 0.2;
		startrectleft = 0;
		numallies = 0;
		startrecttop = 0;
	}

	[ai1]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(1);
		ShortName = BARb;
		Team = 2;
		Version = stable;
	}

	[team1]
	{
		Side = Random;
		Handicap = __PLAYERHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[team0]
	{
		Side = __PLAYERSIDE__;
		Handicap = __PLAYERHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[allyTeam1]
	{
		startrectright = 1;
		startrectbottom = 1;
		startrectleft = 0;
		numallies = 0;
		startrecttop = 0.80000001;
	}

	[team2]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 1;
		TeamLeader = 0;
	}

	[ai0]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = SimpleAI(2);
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
