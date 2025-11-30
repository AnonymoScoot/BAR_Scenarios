local scenariodata = {
    index             = 31,                         --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
    scenarioid        = "hotstepper01",             -- no spaces, lowercase, this will be used to save the score and can be used gadget side
    version           = "1",                        -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
    title             = "Prince of the Hill",       -- can be anything
    isnew             = true,
    author            = "AnonymoScoot",             -- your name here
    imagepath         = "scenario031.jpg",          -- placed next to lua file, should be 3:1 ratio banner style
    imageflavor       = "Come hell and high water", -- This text will be drawn over image
    summary           =
    [[Your commander has secured a small volcanic rise that is periodically flooded by lava. Hold your ground against incoming enemies until the lava wipes them out.]],
    briefing          =
    [[Five opposing commanders have been deployed at the base of a resource-rich volcanic rise, each racing to secure the summit. Their intel missed one detail: routine lava surges sweep the terrain. Hold your position and outlast the competition to claim the hill as its rightful prince.

Tips:
 - You have one metal spot available to you in the middle, secure it first.
 - The lava rises only to the baseline of the hill, so you are safe on the top.
 - Surround your base with defenses, as the enemy will start rushing in from all directions.
 - The space is limited, so don't build too much.
 - The commanders are all hostile to each other, use the infighting to your advantage.
 - When the lava rises, use this opportunity to attack the weakened enemy.

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

    mapfilename       = "Hotstepper 5 1.2.1", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
    playerstartx      = "45%",                -- X position of where player comm icon should be drawn, from top left of the map
    playerstarty      = "40%",                -- Y position of where player comm icon should be drawn, from top left of the map
    partime           = 1200,                 -- par time in seconds (time a mission is expected to take on average)
    parresources      = 100000,               -- par resource amount (amount of metal one is expected to spend on mission)
    difficulty        = 4,                    -- Percieved difficulty at 'normal' level: integer 1-10
    defaultdifficulty = "Normal",             -- an entry of the difficulty table
    difficulties      = {                     -- Array for sortedness, Keys are text that appears in selector (as well as in scoring!), values are handicap levels
        -- handicap values range [-100 - +100], with 0 being regular resources
        -- Currently difficulty modifier only affects the resource bonuses
        { name = "Beginner", playerhandicap = 50, enemyhandicap = -50 },
        { name = "Novice",   playerhandicap = 25, enemyhandicap = -25 },
        { name = "Normal",   playerhandicap = 0,  enemyhandicap = 0 },
        { name = "Hard",     playerhandicap = 0,  enemyhandicap = 50 },
        { name = "Brutal",   playerhandicap = 0,  enemyhandicap = 100 },
    },
    allowedsides      = { "Armada", "Cortex", "Random" }, --these are the permitted factions for this mission, choose from {"Armada", "Cortex", "Random"}
    victorycondition  = "Kill all enemy Commanders",      -- This is plaintext, but should be reflected in startscript
    losscondition     = "Loss of all allied Commanders",  -- This is plaintext, but should be reflected in startscript
    unitlimits        = {                                 -- table of unitdefname : maxnumberoftese units, 0 is disable it
        -- dont use the one in startscript, put it here!
    },

    scenariooptions   = {            -- this will get lua->json->base64 and passed to scenariooptions in game
        myoption = "dostuff",        -- blank
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
	[allyTeam4]
	{
		startrectright = 0.53500003;
		startrectbottom = 0.13500001;
		startrectleft = 0.42500001;
		numallies = 0;
		startrecttop = 0.03;
	}

	[allyTeam0]
	{
		startrectright = 0.18000001;
		startrectbottom = 0.36500001;
		startrectleft = 0.04;
		numallies = 0;
		startrecttop = 0.22499999;
	}

	[ai1]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(3);
		ShortName = BARb;
		Team = 2;
		Version = stable;
	}

	[team5]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[allyTeam5]
	{
		startrectright = 0.62132353;
		startrectbottom = 0.5772059;
		startrectleft = 0.36397061;
		numallies = 0;
		startrecttop = 0.33823529;
	}

	[team1]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 3;
		TeamLeader = 0;
	}

	[allyTeam3]
	{
		startrectright = 0.93000001;
		startrectbottom = 0.38499999;
		startrectleft = 0.79500002;
		numallies = 0;
		startrecttop = 0.23;
	}

	[allyTeam2]
	{
		startrectright = 0.28999999;
		startrectbottom = 0.88499999;
		startrectleft = 0.125;
		numallies = 0;
		startrecttop = 0.73500001;
	}

	[allyTeam1]
	{
		startrectright = 0.85500002;
		startrectbottom = 0.875;
		startrectleft = 0.685;
		numallies = 0;
		startrecttop = 0.72500002;
	}

	[team0]
	{
		Side = __PLAYERSIDE__;
		Handicap = __PLAYERHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 5;
		TeamLeader = 0;
	}

	[team4]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 4;
		TeamLeader = 0;
	}

	[team2]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 2;
		TeamLeader = 0;
	}

	[team3]
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
		Name = BARbarianAI(2);
		ShortName = BARb;
		Team = 3;
		Version = stable;
	}

	NumRestrictions=__NUMRESTRICTIONS__;

	[modoptions]
	{
		scenariooptions = __SCENARIOOPTIONS__;
		teamffa_start_boxes_shuffle = 0;
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

	[ai3]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(5);
		ShortName = BARb;
		Team = 4;
		Version = stable;
	}

	[ai0]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(4);
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
