local scenariodata = {
	index             = 31,                        --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid        = "hooked01",                -- no spaces, lowercase, this will be used to save the score and can be used gadget side
	version           = "1",                       -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title             = "Yin and Yang",            -- can be anything
	isnew             = true,
	author            = "AnonymoScoot",            -- your name here
	imagepath         = "scenario032.jpg",         -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor       = "When two opposites collide", -- This text will be drawn over image
	summary           =
	[[You are matched against an opponent in a small arena with a twist. Your opponent can't build air or hovercraft units, but you can't build bot or vehicle units.]],
	briefing          =
	[[You have access to air and hovercraft units, but can't build bot or vehicle units. The enemy commander has access to bot and vehicle units, but can't build air or hovercraft units. Everything else remains unchanged.

Tips:
 - Try to use the air transport units to your advantage to quickly get your commander to the high ground.
 - Don't forget to reinforce the choke points with static defenses.
 - Early bombers can be used to delay the enemy getting too powerful.
 - Aircraft is weak to anti-air, switch to hovercraft when the enemy has too many anti-air units.

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

	mapfilename       = "Hooked 1.1.1", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx      = "5%",        -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty      = "45%",       -- Y position of where player comm icon should be drawn, from top left of the map
	partime           = 1200,        -- par time in seconds (time a mission is expected to take on average)
	parresources      = 50000,       -- par resource amount (amount of metal one is expected to spend on mission)
	difficulty        = 4,           -- Percieved difficulty at 'normal' level: integer 1-10
	defaultdifficulty = "Normal",    -- an entry of the difficulty table
	difficulties      = {            -- Array for sortedness, Keys are text that appears in selector (as well as in scoring!), values are handicap levels
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
		armasy = 0,
		armvp = 0,
		armavp = 0,
		armlab = 0,
		armalab = 0,
		armshltx = 0,
		armshltxuw = 0,
		corhp = 0,
		corfhp = 0,
		corplat = 0,
		corap = 0,
		coraap = 0,
		coramsub = 0,

	},

	scenariooptions   = {      -- this will get lua->json->base64 and passed to scenariooptions in game
		myoption = "dostuff",  -- blank
		scenarioid = "hotstepper01", -- this MUST be present and identical to the one defined at start
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
		startrectleft = 0.8;
		numallies = 0;
		startrecttop = 0;
	}

	[ai0]
	{
		Host = 0;
		IsFromDemo = 0;
		Team = 1;
		Name = BARbarianAI;
		ShortName = BARb;
		Version = stable;
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
