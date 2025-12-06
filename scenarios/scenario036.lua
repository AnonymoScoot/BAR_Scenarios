local scenariodata = {
	index             = 31,                          --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid        = "nukerush01",                -- no spaces, lowercase, this will be used to save the score and can be used gadget side
	version           = "1",                         -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title             = "Nuclear Age",               -- can be anything
	isnew             = true,
	author            = "AnonymoScoot",              -- your name here
	imagepath         = "scenario036.jpg",           -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor       = "May the luck be on your side", -- This text will be drawn over image
	summary           =
	[[All offensive and defensive technologies are disabled except nuclear silos. Be the first one to build a nuke and decide the faith of others.]],
	briefing          =
	[[Everyone has access to only economy buildings and factories, which can only build constructors. All offensive and defensive units and buildings are disabled, except for the nuclear silo. Nuclear defenses are also disabled, so the first one to rush the nuke will have the advantage.

Tips:
 - Focus on building the economy and build the nuke once you have enough resources.
 - Metal extractors can be built anywhere.
 - It takes multiple nukes to kill the commander. Kill the economies first, then focus on commanders.
 - Use jammers to hide units and buildings from the radar.

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

	mapfilename       = "Nine_Metal_Islands_V1", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx      = "45%",                -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty      = "45%",                -- Y position of where player comm icon should be drawn, from top left of the map
	partime           = 2400,                 -- par time in seconds (time a mission is expected to take on average)
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
	victorycondition  = "Kill all enemy Commanders",   -- This is plaintext, but should be reflected in startscript
	losscondition     = "Loss of all allied Commanders", -- This is plaintext, but should be reflected in startscript
	unitlimits        = {                              -- table of unitdefname : maxnumberoftese units, 0 is disable it
		-- dont use the one in startscript, put it here!
		armatlas = 0,
		armdrone = 0,
		armca = 0,
		armaca = 0,
		armaap = 0,
		armfig = 0,
		armhvytrans = 0,
		armkam = 0,
		armthund = 0,
		armawac = 0,
		armblade = 0,
		armbrawl = 0,
		armdfly = 0,
		armhawk = 0,
		armham = 0,
		armjeth = 0,
		armlance = 0,
		armliche = 0,
		armpnix = 0,
		armstil = 0,
		armflea = 0,
		armhamarmjeth = 0,
		armpw = 0,
		armrectr = 0,
		armrock = 0,
		armwar = 0,
		armaak = 0,
		armapmhp = 0,
		armaser = 0,
		armdecom = 0,
		armfast = 0,
		armfboy = 0,
		armfido = 0,
		armhack = 0,
		armmark = 0,
		armmav = 0,
		armsack = 0,
		armscab = 0,
		armsnipe = 0,
		armspid = 0,
		armsptk = 0,
		armspy = 0,
		armvader = 0,
		armzeus = 0,
		armah = 0,
		armanac = 0,
		armmh = 0,
		armch = 0,
		armhp = 0,
		armsh = 0,
		armart = 0,
		armfav = 0,
		armflash = 0,
		armjanus = 0,
		armmlv = 0,
		armpincer = 0,
		armbeaver = 0,
		armsam = 0,
		armstump = 0,
		armbull = 0,
		armcroc = 0,
		armgremlin = 0,
		armhacv = 0,
		armjam = 0,
		armlatnk = 0,
		armmanni = 0,
		armmart = 0,
		armmerl = 0,
		armsacv = 0,
		armseer = 0,
		armyork = 0,
		corbw = 0,
		corch = 0,
		corca = 0,
		coraca = 0,
		coraap = 0,
		cordrone = 0,
		corhvytrans = 0,
		corshad = 0,
		corvalk = 0,
		corveng = 0,
		corape = 0,
		corawac = 0,
		corcrwh = 0,
		corhurc = 0,
		corhp = 0,
		corseah = 0,
		cortitan = 0,
		corvamp = 0,
		corark = 0,
		corcrash = 0,
		cornecro = 0,
		corstorm = 0,
		corthud = 0,
		coraak = 0,
		corak = 0,
		coramph = 0,
		corcan = 0,
		cordecom = 0,
		corhack = 0,
		corhrk = 0,
		cormando = 0,
		cormort = 0,
		corpyro = 0,
		corroach = 0,
		corsack = 0,
		corsktl = 0,
		corspec = 0,
		corspy = 0,
		corsumo = 0,
		cortermite = 0,
		corvoyr = 0,
		corah = 0,
		corhal = 0,
		cormh = 0,
		corsh = 0,
		corsnap = 0,
		corfav = 0,
		corgarp = 0,
		corgator = 0,
		corlevlr = 0,
		cormist = 0,
		cormlv = 0,
		corraid = 0,
		corwolv = 0,
		corban = 0,
		coreter = 0,
		corgol = 0,
		corhacv = 0,
		cormabm = 0,
		cormart = 0,
		corparrow = 0,
		cormuskrat = 0,
		corphantom = 0,
		corprinter = 0,
		correap = 0,
		corsacv = 0,
		corsala = 0,
		corseal = 0,
		corsent = 0,
		corsiegebreaker = 0,
		cortrem = 0,
		corvac = 0,
		corvacct = 0,
		corvrad = 0,
		corvroc = 0,
		armclaw = 0,
		armllt = 0,
		armbeamer = 0,
		armhlt = 0,
		armguard = 0,
		armrl = 0,
		armferret = 0,
		armcir = 0,
		armamb = 0,
		armamph = 0,
		armpb = 0,
		armflak = 0,
		armanni = 0,
		armmercury = 0,
		armemp = 0,
		armamd = 0,
		armgate = 0,
		armtarg = 0,
		armsd = 0,
		armbrtha = 0,
		armvulc = 0,
		armshltx = 0,
		corllt = 0,
		corhllt = 0,
		corhlt = 0,
		cormaw = 0,
		cormadsam = 0,
		corerad = 0,
		corrl = 0,
		corpun = 0,
		corvipe = 0,
		cortoast = 0,
		cordoom = 0,
		corint = 0,
		corbuzz = 0,
		corflak = 0,
		corscreamer = 0,
		cortron = 0,
		corfmd = 0,
		cortarg = 0,
		corsd = 0,
		corgate = 0,
		corgant = 0,
		armmine1 = 0,
		armmine2 = 0,
		armmine3 = 0,
		cormine1 = 0,
		cormine2 = 0,
		cormine3 = 0,
		corexp = 0,
		cormexp = 0,
		armamsub = 0,
		armasy = 0,
		armfhp = 0,
		armhasy = 0,
		armplat = 0,
		armsasy = 0,
		armshltuw = 0,
		armsy = 0,
		armason = 0,
		armfatf = 0,
		armfdrag = 0,
		armfgate = 0,
		armfmine3 = 0,
		armfrad = 0,
		armnanotc2plat = 0,
		armnanotcplat = 0,
		armsonar = 0,
		armanavaldefturret = 0,
		armatl = 0,
		armdl = 0,
		armfflak = 0,
		armfhlt = 0,
		armfrock = 0,
		armfrt = 0,
		armgplat = 0,
		armkraken = 0,
		armnavaldefturret = 0,
		armtl = 0,
		armfmkr = 0,
		armtide = 0,
		armuwadves = 0,
		armuwadvms = 0,
		armuwageo = 0,
		armuwes = 0,
		armuwfus = 0,
		armuwgeo = 0,
		armuwmme = 0,
		armuwmmm = 0,
		armuwms = 0,
		armcsa = 0,
		armhaca = 0,
		armsaber = 0,
		armsb = 0,
		armseap = 0,
		armsehak = 0,
		armsfig = 0,
		armsfig2 = 0,
		armaas = 0,
		armacsub = 0,
		armantiship = 0,
		armbats = 0,
		armcarry = 0,
		armcrus = 0,
		armdronecarry = 0,
		armepoch = 0,
		armexcalibur = 0,
		armhacs = 0,
		armlship = 0,
		armmls = 0,
		armmship = 0,
		armsacsub = 0,
		armseadragon = 0,
		armserp = 0,
		armsjam = 0,
		armsubk = 0,
		armtdrone = 0,
		armtrident = 0,
		armcs = 0,
		armdecade = 0,
		armpship = 0,
		armpt = 0,
		armrecl = 0,
		armroy = 0,
		armsub = 0,
		armtorps = 0,
		coranavaldefturret = 0,
		coratl = 0,
		cordl = 0,
		corenaa = 0,
		corfdoom = 0,
		corfhlt = 0,
		corfrock = 0,
		corfrt = 0,
		corgplat = 0,
		cornavaldefturret = 0,
		cortl = 0,
		corfmkr = 0,
		cortide = 0,
		coruwadves = 0,
		coruwadvms = 0,
		coruwageo = 0,
		coruwes = 0,
		coruwfus = 0,
		coruwgeo = 0,
		coruwmme = 0,
		coruwmmm = 0,
		coruwms = 0,
		coramsub = 0,
		corasy = 0,
		corfhp = 0,
		corgantuw = 0,
		corhasy = 0,
		corplat = 0,
		corsasy = 0,
		corsy = 0,
		corason = 0,
		corfatf = 0,
		corfdrag = 0,
		corfgate = 0,
		corfmine3 = 0,
		corfrad = 0,
		cornanotc2plat = 0,
		cornanotcplat = 0,
		corsonar = 0,
		corcsa = 0,
		corcut = 0,
		corhaca = 0,
		corhunt = 0,
		corsb = 0,
		corseap = 0,
		corsfig = 0,
		corsfig2 = 0,
		coracsub = 0,
		corantiship = 0,
		corarch = 0,
		corbats = 0,
		corblackhy = 0,
		corcarry = 0,
		corcrus = 0,
		cordesolator = 0,
		cordronecarry = 0,
		corfship = 0,
		corhacs = 0,
		cormls = 0,
		cormship = 0,
		coronager = 0,
		corprince = 0,
		corsacvsub = 0,
		corsentinel = 0,
		corshark = 0,
		corsjam = 0,
		corssub = 0,
		cortdrone = 0,
		corcs = 0,
		coresupp = 0,
		corpship = 0,
		corpt = 0,
		correcl = 0,
		corroy = 0,
		corsub = 0,

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
	[allyTeam4]
	{
		startrectright = 0.95499998;
		startrectbottom = 0.41999999;
		startrectleft = 0.77999997;
		numallies = 0;
		startrecttop = 0.26499999;
	}

	[allyTeam0]
	{
		startrectright = 0.22499999;
		startrectbottom = 0.69499999;
		startrectleft = 0;
		numallies = 0;
		startrecttop = 0.57499999;
	}

	[ai4]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(3);
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
		AllyTeam = 6;
		TeamLeader = 0;
	}

	[ai2]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(8);
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

	[allyTeam7]
	{
		startrectright = 0.47999999;
		startrectbottom = 0.94;
		startrectleft = 0.29499999;
		numallies = 0;
		startrecttop = 0.80000001;
	}

	[ai6]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(4);
		ShortName = BARb;
		Team = 7;
		Version = stable;
	}

	[ai3]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(7);
		ShortName = BARb;
		Team = 4;
		Version = stable;
	}

	[team3]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 8;
		TeamLeader = 0;
	}

	[allyTeam3]
	{
		startrectright = 0.70499998;
		startrectbottom = 0.19;
		startrectleft = 0.52999997;
		numallies = 0;
		startrecttop = 0.035;
	}

	[team2]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 2;
		TeamLeader = 0;
	}

	[team7]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 4;
		TeamLeader = 0;
	}

	[ai7]
	{
		Host = 0;
		IsFromDemo = 0;
		Name = BARbarianAI(1);
		ShortName = BARb;
		Team = 8;
		Version = stable;
	}

	[team6]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 5;
		TeamLeader = 0;
	}

	[team5]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 3;
		TeamLeader = 0;
	}

	[allyTeam8]
	{
		startrectright = 0.61500001;
		startrectbottom = 0.56;
		startrectleft = 0.38;
		numallies = 0;
		startrecttop = 0.43000001;
	}

	[allyTeam6]
	{
		startrectright = 0.70999998;
		startrectbottom = 0.97500002;
		startrectleft = 0.53500003;
		numallies = 0;
		startrecttop = 0.79000002;
	}

	[allyTeam5]
	{
		startrectright = 0.97500002;
		startrectbottom = 0.68000001;
		startrectleft = 0.80500001;
		numallies = 0;
		startrecttop = 0.495;
	}

	[team4]
	{
		Side = Random;
		Handicap = __ENEMYHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 7;
		TeamLeader = 0;
	}

	[allyTeam2]
	{
		startrectright = 0.465;
		startrectbottom = 0.2;
		startrectleft = 0.30500001;
		numallies = 0;
		startrecttop = 0.05;
	}

	[allyTeam1]
	{
		startrectright = 0.20999999;
		startrectbottom = 0.41999999;
		startrectleft = 0.055;
		numallies = 0;
		startrecttop = 0.285;
	}

	[team0]
	{
		Side = __PLAYERSIDE__;
		Handicap = __PLAYERHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[team8]
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
		Name = BARbarianAI(6);
		ShortName = BARb;
		Team = 1;
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
