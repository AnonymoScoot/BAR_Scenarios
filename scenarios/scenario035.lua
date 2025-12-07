local scenariodata = {
	index             = 35,                                 --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid        = "frozenford01",                     -- no spaces, lowercase, this will be used to save the score and can be used gadget side
	version           = "1",                                -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title             = "Frostbite",                   -- can be anything
	isnew             = true,
	author            = "AnonymoScoot",                     -- your name here
	imagepath         = "scenario035.jpg",                  -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor       = "Stand your ground", -- This text will be drawn over image
	summary           =
	[[After a failed expedition to the north, all construction units have been prohibited from entering the frozen land. Luckily they built a base on one of the hills before they left.]],
	briefing          =
	[[You have access to tier one and tier two bot units, but no contructors. Enemy is in a similar situation, but they have built both bot and vehicle labs with enough defenses. Destroy the enemy before they overpower you with numbers.

Tips:
 - You can't make contruction units, so try to not loose any crucial buildings. Use Lazaruses if you need to resurrect them.
 - You start with a lot of resources captured, but most of them are undefended and vulnerable. Try to defend them with units.
 - Spybots are great for scouting and assisting other bots.
 - Destroy enemy factories to prevent the enemy from building more units.

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

	mapfilename       = "Frozen_Ford_V2", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx      = "85%",                   -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty      = "10%",                   -- Y position of where player comm icon should be drawn, from top left of the map
	partime           = 2400,                    -- par time in seconds (time a mission is expected to take on average)
	parresources      = 100000,                  -- par resource amount (amount of metal one is expected to spend on mission)
	difficulty        = 6,                       -- Percieved difficulty at 'normal' level: integer 1-10
	defaultdifficulty = "Normal",                -- an entry of the difficulty table
	difficulties      = {                        -- Array for sortedness, Keys are text that appears in selector (as well as in scoring!), values are handicap levels
		-- handicap values range [-100 - +100], with 0 being regular resources
		-- Currently difficulty modifier only affects the resource bonuses
		{ name = "Beginner", playerhandicap = 50, enemyhandicap = -50 },
		{ name = "Novice",   playerhandicap = 25, enemyhandicap = -25 },
		{ name = "Normal",   playerhandicap = 0,  enemyhandicap = 0 },
		{ name = "Hard",     playerhandicap = 0,  enemyhandicap = 50 },
		{ name = "Brutal",   playerhandicap = 0,  enemyhandicap = 100 },
	},
	allowedsides      = { "Armada" }, --these are the permitted factions for this mission, choose from {"Armada", "Cortex", "Random"}
	victorycondition= "Kill all construction units", -- This is plaintext, but should be reflected in startscript
	losscondition	= "Lose all of your construction units",  -- This is plaintext, but should be reflected in startscript
	unitlimits        = {                              -- table of unitdefname : maxnumberoftese units, 0 is disable it
		-- dont use the one in startscript, put it here!
		armcs = 0,
		armdecom = 0,
		armck = 0,
		armack = 0,
		armfark = 0,
		armcv = 0,
		armbeaver = 0,
		armmlv = 0,
		armacv = 0,
		armconsul = 0,
		armca = 0,
		armaca = 0,
		armch = 0,
		armmls = 0,
		armacsub = 0,
		armcsa = 0,
		corcs = 0,
		corck = 0,
		cormlv = 0,
		corcv = 0,
		cordecom = 0,
		cormuskrat = 0,
		cormando = 0,
		corca = 0,
		cornecro = 0,
		corch = 0,
		corcsa = 0,
		coraca = 0,
		cormls = 0,
		coracsub = 0,
		corack = 0,
		corfast = 0,
		coracv = 0
	},

	scenariooptions   = {      -- this will get lua->json->base64 and passed to scenariooptions in game
		myoption = "dostuff",  -- blank
		scenarioid = "frozenford01", -- this MUST be present and identical to the one defined at start
		disablefactionpicker = true, -- this is needed to prevent faction picking outside of the allowedsides

		unitloadout = {
			--{name = 'corcom', x = 257, y = 512, z = 3845, rot = -16025, team = 1},
			--{name = 'armcom', x = 5705, y = 628, z = 1466, rot = -12983, team = 0},
			{name = 'armck', x = 5072, y = 642, z = 382, rot = 29446, team = 0},
			{name = 'corck', x = 1047, y = 642, z = 4674, rot = -30960, team = 1},
			{name = 'corck', x = 430, y = 482, z = 2294, rot = -31782, team = 1},
			{name = 'corck', x = 1951, y = 650, z = 2365, rot = -3530, team = 1},
			{name = 'corck', x = 1647, y = 323, z = 334, rot = -30420, team = 1},
			{name = 'corck', x = 661, y = 643, z = 5088, rot = 7364, team = 1},
			{name = 'corck', x = 3237, y = 134, z = 3238, rot = 8772, team = 1},
			{name = 'corck', x = 188, y = 500, z = 3220, rot = -16385, team = 1},
			{name = 'corck', x = 3980, y = 278, z = 5941, rot = 12766, team = 1},
			{name = 'corck', x = 2976, y = 211, z = 1563, rot = -2579, team = 1},
			{name = 'corck', x = 5530, y = 335, z = 5625, rot = 7146, team = 1},
			{name = 'corck', x = 3100, y = 201, z = 4458, rot = 14152, team = 1},
			{name = 'corack', x = 215, y = 642, z = 4992, rot = -2682, team = 1},
			{name = 'cormoho', x = 256, y = 643, z = 5232, rot = 32767, team = 1},
			{name = 'cormoho', x = 320, y = 642, z = 5680, rot = 32767, team = 1},
			{name = 'cormoho', x = 880, y = 642, z = 5616, rot = 32767, team = 1},
			{name = 'cormoho', x = 864, y = 642, z = 5280, rot = 32767, team = 1},
			{name = 'corexp', x = 1824, y = 565, z = 3008, rot = 32767, team = 1},
			{name = 'corexp', x = 480, y = 502, z = 3296, rot = 32767, team = 1},
			{name = 'corack', x = 2009, y = 705, z = 1674, rot = 8957, team = 1},
			{name = 'corack', x = 932, y = 362, z = 277, rot = -317, team = 1},
			{name = 'corexp', x = 1472, y = 489, z = 4288, rot = 32767, team = 1},
			{name = 'corexp', x = 1840, y = 477, z = 5216, rot = 32767, team = 1},
			{name = 'corack', x = 3099, y = 135, z = 2995, rot = 7852, team = 1},
			{name = 'corack', x = 2234, y = 473, z = 5765, rot = 9968, team = 1},
			{name = 'corack', x = 2022, y = 493, z = 4406, rot = 20696, team = 1},
			{name = 'corack', x = 635, y = 486, z = 1611, rot = -21216, team = 1},
			{name = 'corack', x = 526, y = 490, z = 2576, rot = 24235, team = 1},
			{name = 'corack', x = 616, y = 494, z = 2808, rot = 8089, team = 1},
			{name = 'corack', x = 1557, y = 330, z = 500, rot = -10748, team = 1},
			{name = 'corack', x = 684, y = 412, z = 993, rot = 2879, team = 1},
			{name = 'corack', x = 2878, y = 191, z = 1860, rot = -17539, team = 1},
			{name = 'corack', x = 4118, y = 279, z = 5672, rot = -13153, team = 1},
			{name = 'corexp', x = 2736, y = 461, z = 5984, rot = 32767, team = 1},
			{name = 'corexp', x = 1280, y = 385, z = 496, rot = 32767, team = 1},
			{name = 'cormoho', x = 1952, y = 703, z = 1696, rot = 32767, team = 1},
			{name = 'corageo', x = 712, y = 383, z = 456, rot = 32767, team = 1},
			{name = 'corbhmth', x = 2216, y = 586, z = 4600, rot = 32767, team = 1},
			{name = 'corexp', x = 2656, y = 334, z = 720, rot = 32767, team = 1},
			{name = 'cormex', x = 2560, y = 201, z = 1600, rot = 32767, team = 1},
			{name = 'cormex', x = 3616, y = 200, z = 1568, rot = 32767, team = 1},
			{name = 'cormex', x = 3744, y = 152, z = 2608, rot = 32767, team = 1},
			{name = 'cormex', x = 5024, y = 364, z = 5728, rot = 32767, team = 1},
			{name = 'cormex', x = 2640, y = 144, z = 2608, rot = 32767, team = 1},
			{name = 'corgeo', x = 5688, y = 336, z = 5800, rot = 32767, team = 1},
			{name = 'cormex', x = 2528, y = 147, z = 3632, rot = 32767, team = 1},
			{name = 'cormex', x = 3632, y = 153, z = 3712, rot = 32767, team = 1},
			{name = 'cormex', x = 3728, y = 213, z = 4624, rot = 32767, team = 1},
			{name = 'cormex', x = 3472, y = 305, z = 5248, rot = 32767, team = 1},
			{name = 'corafus', x = 528, y = 642, z = 5424, rot = 32767, team = 1},
			{name = 'coruwadves', x = 616, y = 643, z = 5416, rot = 32767, team = 1},
			{name = 'coruwadves', x = 696, y = 642, z = 5416, rot = 32767, team = 1},
			{name = 'coruwadvms', x = 352, y = 642, z = 5408, rot = 32767, team = 1},
			{name = 'coruwadvms', x = 352, y = 642, z = 5472, rot = 32767, team = 1},
			{name = 'corshroud', x = 560, y = 642, z = 5200, rot = 32767, team = 1},
			{name = 'corack', x = 434, y = 572, z = 4260, rot = 17302, team = 1},
			{name = 'corack', x = 627, y = 627, z = 4590, rot = -23060, team = 1},
			{name = 'corarad', x = 1168, y = 642, z = 4592, rot = 32767, team = 1},
			{name = 'corfmd', x = 416, y = 643, z = 5216, rot = 32767, team = 1},
			{name = 'corgate', x = 640, y = 643, z = 5264, rot = 32767, team = 1},
			{name = 'corwin', x = 792, y = 642, z = 5400, rot = 32767, team = 1},
			{name = 'corwin', x = 856, y = 642, z = 5400, rot = 32767, team = 1},
			{name = 'corwin', x = 920, y = 643, z = 5400, rot = 32767, team = 1},
			{name = 'corwin', x = 984, y = 642, z = 5400, rot = 32767, team = 1},
			{name = 'corwin', x = 1048, y = 642, z = 5400, rot = 32767, team = 1},
			{name = 'corwin', x = 1112, y = 642, z = 5400, rot = 32767, team = 1},
			{name = 'corwin', x = 1112, y = 643, z = 5464, rot = 32767, team = 1},
			{name = 'corwin', x = 1048, y = 642, z = 5464, rot = 32767, team = 1},
			{name = 'corwin', x = 984, y = 642, z = 5464, rot = 32767, team = 1},
			{name = 'corwin', x = 920, y = 642, z = 5464, rot = 32767, team = 1},
			{name = 'corwin', x = 856, y = 642, z = 5464, rot = 32767, team = 1},
			{name = 'corwin', x = 792, y = 642, z = 5464, rot = 32767, team = 1},
			{name = 'corwin', x = 792, y = 643, z = 5528, rot = 32767, team = 1},
			{name = 'corwin', x = 856, y = 643, z = 5528, rot = 32767, team = 1},
			{name = 'corwin', x = 920, y = 642, z = 5528, rot = 32767, team = 1},
			{name = 'corwin', x = 984, y = 642, z = 5528, rot = 32767, team = 1},
			{name = 'corwin', x = 1048, y = 643, z = 5528, rot = 32767, team = 1},
			{name = 'corwin', x = 1112, y = 643, z = 5528, rot = 32767, team = 1},
			{name = 'cortarg', x = 424, y = 642, z = 5024, rot = 32767, team = 1},
			{name = 'cormmkr', x = 416, y = 643, z = 5600, rot = 32767, team = 1},
			{name = 'cormmkr', x = 544, y = 643, z = 5600, rot = 32767, team = 1},
			{name = 'cormmkr', x = 672, y = 642, z = 5600, rot = 32767, team = 1},
			{name = 'cormakr', x = 456, y = 643, z = 5688, rot = 32767, team = 1},
			{name = 'cormakr', x = 504, y = 643, z = 5688, rot = 32767, team = 1},
			{name = 'cormakr', x = 552, y = 642, z = 5688, rot = 32767, team = 1},
			{name = 'cormakr', x = 600, y = 642, z = 5688, rot = 32767, team = 1},
			{name = 'cormakr', x = 648, y = 642, z = 5688, rot = 32767, team = 1},
			{name = 'coradvsol', x = 736, y = 643, z = 5152, rot = 32767, team = 1},
			{name = 'coradvsol', x = 848, y = 642, z = 5152, rot = 32767, team = 1},
			{name = 'coradvsol', x = 960, y = 643, z = 5152, rot = 32767, team = 1},
			{name = 'coradvsol', x = 960, y = 642, z = 5056, rot = 32767, team = 1},
			{name = 'coradvsol', x = 848, y = 642, z = 5056, rot = 32767, team = 1},
			{name = 'coradvsol', x = 736, y = 642, z = 5056, rot = 32767, team = 1},
			{name = 'corvipe', x = 840, y = 622, z = 4280, rot = 32767, team = 1},
			{name = 'cortoast', x = 1168, y = 642, z = 4944, rot = 32767, team = 1},
			{name = 'cordoom', x = 160, y = 577, z = 4256, rot = 32767, team = 1},
			{name = 'cordoom', x = 544, y = 569, z = 4256, rot = 32767, team = 1},
			{name = 'corfort', x = 208, y = 574, z = 4240, rot = 16384, team = 1},
			{name = 'corfort', x = 208, y = 578, z = 4272, rot = 16384, team = 1},
			{name = 'corfort', x = 208, y = 585, z = 4304, rot = 16384, team = 1},
			{name = 'corfort', x = 176, y = 583, z = 4304, rot = 0, team = 1},
			{name = 'corfort', x = 144, y = 583, z = 4304, rot = 0, team = 1},
			{name = 'corfort', x = 112, y = 584, z = 4304, rot = 0, team = 1},
			{name = 'corfort', x = 112, y = 578, z = 4272, rot = -16384, team = 1},
			{name = 'corfort', x = 112, y = 575, z = 4240, rot = -16384, team = 1},
			{name = 'corfort', x = 112, y = 569, z = 4208, rot = -16384, team = 1},
			{name = 'corfort', x = 144, y = 570, z = 4208, rot = 32767, team = 1},
			{name = 'corfort', x = 176, y = 570, z = 4208, rot = 32767, team = 1},
			{name = 'corfort', x = 208, y = 567, z = 4208, rot = 32767, team = 1},
			{name = 'corfort', x = 592, y = 566, z = 4240, rot = 16384, team = 1},
			{name = 'corfort', x = 592, y = 570, z = 4272, rot = 16384, team = 1},
			{name = 'corfort', x = 592, y = 578, z = 4304, rot = 16384, team = 1},
			{name = 'corfort', x = 560, y = 576, z = 4304, rot = 0, team = 1},
			{name = 'corfort', x = 528, y = 577, z = 4304, rot = 0, team = 1},
			{name = 'corfort', x = 496, y = 580, z = 4304, rot = 0, team = 1},
			{name = 'corfort', x = 496, y = 572, z = 4272, rot = -16384, team = 1},
			{name = 'corfort', x = 496, y = 567, z = 4240, rot = -16384, team = 1},
			{name = 'corfort', x = 496, y = 559, z = 4208, rot = -16384, team = 1},
			{name = 'corfort', x = 528, y = 561, z = 4208, rot = 32767, team = 1},
			{name = 'corfort', x = 560, y = 561, z = 4208, rot = 32767, team = 1},
			{name = 'corfort', x = 592, y = 557, z = 4208, rot = 32767, team = 1},
			{name = 'cornanotc', x = 744, y = 498, z = 3096, rot = 32767, team = 1},
			{name = 'corarad', x = 592, y = 494, z = 2848, rot = 32767, team = 1},
			{name = 'corgate', x = 736, y = 495, z = 2912, rot = 32767, team = 1},
			{name = 'corflak', x = 984, y = 498, z = 3048, rot = 32767, team = 1},
			{name = 'corscreamer', x = 544, y = 497, z = 3104, rot = 32767, team = 1},
			{name = 'cordoom', x = 736, y = 489, z = 2528, rot = 32767, team = 1},
			{name = 'corfort', x = 784, y = 488, z = 2512, rot = 16384, team = 1},
			{name = 'corfort', x = 784, y = 489, z = 2544, rot = 16384, team = 1},
			{name = 'corfort', x = 784, y = 490, z = 2576, rot = 16384, team = 1},
			{name = 'corfort', x = 752, y = 489, z = 2576, rot = 0, team = 1},
			{name = 'corfort', x = 720, y = 489, z = 2576, rot = 0, team = 1},
			{name = 'corfort', x = 688, y = 490, z = 2576, rot = 0, team = 1},
			{name = 'corfort', x = 688, y = 489, z = 2544, rot = -16384, team = 1},
			{name = 'corfort', x = 688, y = 488, z = 2512, rot = -16384, team = 1},
			{name = 'corfort', x = 688, y = 488, z = 2480, rot = -16384, team = 1},
			{name = 'corfort', x = 720, y = 488, z = 2480, rot = 32767, team = 1},
			{name = 'corfort', x = 752, y = 488, z = 2480, rot = 32767, team = 1},
			{name = 'corfort', x = 784, y = 487, z = 2480, rot = 32767, team = 1},
			{name = 'cortarg', x = 936, y = 493, z = 2720, rot = 32767, team = 1},
			{name = 'corvipe', x = 408, y = 488, z = 2568, rot = 32767, team = 1},
			{name = 'corvipe', x = 1544, y = 330, z = 568, rot = 32767, team = 1},
			{name = 'corvipe', x = 1848, y = 313, z = 168, rot = 32767, team = 1},
			{name = 'cornanotc', x = 1464, y = 373, z = 408, rot = 32767, team = 1},
			{name = 'corflak', x = 1176, y = 344, z = 168, rot = 32767, team = 1},
			{name = 'corflak', x = 1208, y = 383, z = 1000, rot = 32767, team = 1},
			{name = 'corscreamer', x = 848, y = 383, z = 608, rot = 32767, team = 1},
			{name = 'cormmkr', x = 544, y = 389, z = 416, rot = 32767, team = 1},
			{name = 'cormmkr', x = 544, y = 394, z = 512, rot = 32767, team = 1},
			{name = 'cormmkr', x = 640, y = 389, z = 512, rot = 32767, team = 1},
			{name = 'cormmkr', x = 640, y = 384, z = 416, rot = 32767, team = 1},
			{name = 'corshroud', x = 592, y = 390, z = 464, rot = 32767, team = 1},
			{name = 'corgate', x = 800, y = 376, z = 416, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 347, z = 64, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 352, z = 96, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 355, z = 128, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 356, z = 160, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 357, z = 192, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 359, z = 224, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 360, z = 256, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 361, z = 288, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 362, z = 320, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 363, z = 352, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 364, z = 384, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 365, z = 416, rot = 32767, team = 1},
			{name = 'corfort', x = 960, y = 367, z = 448, rot = 32767, team = 1},
			{name = 'cordrag', x = 2096, y = 305, z = 16, rot = 32767, team = 1},
			{name = 'cordrag', x = 2080, y = 306, z = 80, rot = 32767, team = 1},
			{name = 'cordrag', x = 2064, y = 306, z = 144, rot = 32767, team = 1},
			{name = 'cordrag', x = 2048, y = 306, z = 208, rot = 32767, team = 1},
			{name = 'cordrag', x = 2032, y = 306, z = 272, rot = 32767, team = 1},
			{name = 'cordrag', x = 2016, y = 307, z = 336, rot = 32767, team = 1},
			{name = 'cordrag', x = 2000, y = 307, z = 400, rot = 32767, team = 1},
			{name = 'cordrag', x = 1984, y = 307, z = 464, rot = 32767, team = 1},
			{name = 'cordrag', x = 1968, y = 308, z = 528, rot = 32767, team = 1},
			{name = 'corhlt', x = 2752, y = 333, z = 720, rot = 32767, team = 1},
			{name = 'corhllt', x = 2608, y = 333, z = 800, rot = 32767, team = 1},
			{name = 'cornanotc', x = 2520, y = 316, z = 600, rot = 32767, team = 1},
			{name = 'cormoho', x = 640, y = 486, z = 1504, rot = 32767, team = 1},
			{name = 'corfus', x = 1768, y = 705, z = 1496, rot = 32767, team = 1},
			{name = 'coruwadves', x = 2008, y = 709, z = 1496, rot = 32767, team = 1},
			{name = 'corshroud', x = 1872, y = 706, z = 1424, rot = 32767, team = 1},
			{name = 'corarad', x = 2288, y = 666, z = 1536, rot = 32767, team = 1},
			{name = 'cordoom', x = 1888, y = 678, z = 2080, rot = 32767, team = 1},
			{name = 'corvipe', x = 1704, y = 672, z = 2088, rot = 32767, team = 1},
			{name = 'corvipe', x = 2088, y = 679, z = 2088, rot = 32767, team = 1},
			{name = 'corgate', x = 2080, y = 706, z = 1664, rot = 32767, team = 1},
			{name = 'corscreamer', x = 1968, y = 704, z = 1392, rot = 32767, team = 1},
			{name = 'corflak', x = 2152, y = 703, z = 1480, rot = 32767, team = 1},
			{name = 'corflak', x = 2152, y = 705, z = 1656, rot = 32767, team = 1},
			{name = 'corflak', x = 1688, y = 695, z = 1656, rot = 32767, team = 1},
			{name = 'corarad', x = 2144, y = 582, z = 4464, rot = 32767, team = 1},
			{name = 'cortarg', x = 1848, y = 477, z = 4272, rot = 32767, team = 1},
			{name = 'corvipe', x = 1512, y = 482, z = 4440, rot = 32767, team = 1},
			{name = 'corarad', x = 5088, y = 366, z = 5664, rot = 32767, team = 1},
			{name = 'corjamt', x = 5184, y = 366, z = 5712, rot = 32767, team = 1},
			{name = 'corhllt', x = 5152, y = 366, z = 5536, rot = 32767, team = 1},
			{name = 'cordrag', x = 5744, y = 339, z = 5744, rot = 32767, team = 1},
			{name = 'cordrag', x = 5744, y = 336, z = 5856, rot = 32767, team = 1},
			{name = 'cordrag', x = 5632, y = 333, z = 5856, rot = 32767, team = 1},
			{name = 'corerad', x = 5232, y = 367, z = 5600, rot = 32767, team = 1},
			{name = 'cornanotc', x = 5128, y = 358, z = 5800, rot = 32767, team = 1},
			{name = 'corpun', x = 3616, y = 293, z = 5312, rot = 32767, team = 1},
			{name = 'corhlt', x = 3472, y = 303, z = 5168, rot = 32767, team = 1},
			{name = 'cormadsam', x = 3480, y = 304, z = 5368, rot = 32767, team = 1},
			{name = 'corsolar', x = 3688, y = 270, z = 5992, rot = 32767, team = 1},
			{name = 'corsolar', x = 3832, y = 274, z = 5992, rot = 32767, team = 1},
			{name = 'corsolar', x = 3976, y = 278, z = 5992, rot = 32767, team = 1},
			{name = 'corsolar', x = 4120, y = 283, z = 5992, rot = 32767, team = 1},
			{name = 'cornanotc', x = 3592, y = 285, z = 5448, rot = 32767, team = 1},
			{name = 'cormex', x = 2512, y = 187, z = 4400, rot = 32767, team = 1},
			{name = 'cordoom', x = 1968, y = 476, z = 4928, rot = 32767, team = 1},
			{name = 'cordoom', x = 2160, y = 470, z = 5328, rot = 32767, team = 1},
			{name = 'corvipe', x = 2232, y = 433, z = 5080, rot = 32767, team = 1},
			{name = 'corfort', x = 2016, y = 483, z = 4880, rot = 32767, team = 1},
			{name = 'corfort', x = 2016, y = 473, z = 4912, rot = 32767, team = 1},
			{name = 'corfort', x = 2016, y = 471, z = 4944, rot = 32767, team = 1},
			{name = 'corfort', x = 2016, y = 470, z = 4976, rot = 32767, team = 1},
			{name = 'corfort', x = 2128, y = 470, z = 5280, rot = 32767, team = 1},
			{name = 'corfort', x = 2160, y = 468, z = 5280, rot = 32767, team = 1},
			{name = 'corfort', x = 2192, y = 466, z = 5280, rot = 32767, team = 1},
			{name = 'corfort', x = 2224, y = 458, z = 5280, rot = 32767, team = 1},
			{name = 'corfort', x = 2224, y = 458, z = 5312, rot = 32767, team = 1},
			{name = 'corfort', x = 2224, y = 461, z = 5344, rot = 32767, team = 1},
			{name = 'corfort', x = 2224, y = 467, z = 5376, rot = 32767, team = 1},
			{name = 'corfmd', x = 736, y = 376, z = 336, rot = 32767, team = 1},
			{name = 'corfmd', x = 2144, y = 698, z = 1760, rot = 32767, team = 1},
			{name = 'corwin', x = 2904, y = 174, z = 4056, rot = 32767, team = 1},
			{name = 'corwin', x = 3016, y = 176, z = 4056, rot = 32767, team = 1},
			{name = 'corwin', x = 3128, y = 177, z = 4056, rot = 32767, team = 1},
			{name = 'corwin', x = 3240, y = 178, z = 4056, rot = 32767, team = 1},
			{name = 'corwin', x = 3240, y = 186, z = 4168, rot = 32767, team = 1},
			{name = 'corwin', x = 3128, y = 184, z = 4168, rot = 32767, team = 1},
			{name = 'corwin', x = 3016, y = 184, z = 4168, rot = 32767, team = 1},
			{name = 'corwin', x = 2904, y = 181, z = 4168, rot = 32767, team = 1},
			{name = 'corwin', x = 2904, y = 189, z = 4280, rot = 32767, team = 1},
			{name = 'corwin', x = 3016, y = 190, z = 4280, rot = 32767, team = 1},
			{name = 'corwin', x = 3128, y = 191, z = 4280, rot = 32767, team = 1},
			{name = 'corwin', x = 3240, y = 193, z = 4280, rot = 32767, team = 1},
			{name = 'corwin', x = 3240, y = 199, z = 4392, rot = 32767, team = 1},
			{name = 'corwin', x = 3128, y = 197, z = 4392, rot = 32767, team = 1},
			{name = 'corwin', x = 3016, y = 196, z = 4392, rot = 32767, team = 1},
			{name = 'corwin', x = 2904, y = 195, z = 4392, rot = 32767, team = 1},
			{name = 'corwin', x = 2904, y = 201, z = 4504, rot = 32767, team = 1},
			{name = 'corwin', x = 3016, y = 202, z = 4504, rot = 32767, team = 1},
			{name = 'corwin', x = 3128, y = 203, z = 4504, rot = 32767, team = 1},
			{name = 'corshroud', x = 3072, y = 137, z = 2880, rot = 32767, team = 1},
			{name = 'corwin', x = 3240, y = 205, z = 4504, rot = 32767, team = 1},
			{name = 'corscreamer', x = 3184, y = 136, z = 2944, rot = 32767, team = 1},
			{name = 'corflak', x = 3176, y = 134, z = 3128, rot = 32767, team = 1},
			{name = 'cormakr', x = 3000, y = 136, z = 3288, rot = 32767, team = 1},
			{name = 'cormakr', x = 3080, y = 135, z = 3288, rot = 32767, team = 1},
			{name = 'cormakr', x = 3160, y = 135, z = 3288, rot = 32767, team = 1},
			{name = 'cormakr', x = 3240, y = 135, z = 3288, rot = 32767, team = 1},
			{name = 'cormakr', x = 3320, y = 135, z = 3288, rot = 32767, team = 1},
			{name = 'cormakr', x = 3320, y = 136, z = 3368, rot = 32767, team = 1},
			{name = 'cormakr', x = 3240, y = 136, z = 3368, rot = 32767, team = 1},
			{name = 'cormakr', x = 3160, y = 133, z = 3368, rot = 32767, team = 1},
			{name = 'corestor', x = 3264, y = 134, z = 3184, rot = 32767, team = 1},
			{name = 'cornanotc', x = 3096, y = 200, z = 1704, rot = 32767, team = 1},
			{name = 'cormstor', x = 3040, y = 188, z = 1888, rot = 32767, team = 1},
			{name = 'corjamt', x = 3168, y = 188, z = 1872, rot = 32767, team = 1},
			{name = 'corrad', x = 2928, y = 210, z = 1584, rot = 32767, team = 1},
			{name = 'corhllt', x = 3184, y = 207, z = 1568, rot = 32767, team = 1},
			{name = 'corerad', x = 2880, y = 204, z = 1696, rot = 32767, team = 1},
			{name = 'corrl', x = 3288, y = 190, z = 1848, rot = 32767, team = 1},
			{name = 'cormstor', x = 3040, y = 195, z = 1808, rot = 32767, team = 1},
			{name = 'cormstor', x = 2960, y = 195, z = 1808, rot = 32767, team = 1},
			{name = 'cormstor', x = 2960, y = 189, z = 1888, rot = 32767, team = 1},
			{name = 'corscreamer', x = 2416, y = 468, z = 5984, rot = 32767, team = 1},
			{name = 'corscreamer', x = 2048, y = 478, z = 5584, rot = 32767, team = 1},
			{name = 'corflak', x = 2216, y = 474, z = 5672, rot = 32767, team = 1},
			{name = 'corflak', x = 2376, y = 470, z = 5848, rot = 32767, team = 1},
			{name = 'corerad', x = 1504, y = 642, z = 5664, rot = 32767, team = 1},
			{name = 'corerad', x = 1744, y = 642, z = 5920, rot = 32767, team = 1},
			{name = 'corerad', x = 1104, y = 642, z = 5184, rot = 32767, team = 1},
			{name = 'corerad', x = 1008, y = 642, z = 4528, rot = 32767, team = 1},
			{name = 'cortron', x = 176, y = 642, z = 5152, rot = 32767, team = 1},
			{name = 'coralab', x = 648, y = 641, z = 4872, rot = 32767, team = 1},
			{name = 'cornanotc', x = 600, y = 643, z = 5112, rot = 32767, team = 1},
			{name = 'cornanotc', x = 504, y = 642, z = 5112, rot = 32767, team = 1},
			{name = 'cornanotc', x = 504, y = 642, z = 5016, rot = 32767, team = 1},
			{name = 'cornanotc', x = 600, y = 642, z = 5016, rot = 32767, team = 1},
			{name = 'corck', x = 764, y = 400, z = 827, rot = 8973, team = 1},
			{name = 'corcv', x = 463, y = 415, z = 880, rot = -14023, team = 1},
			{name = 'coravp', x = 456, y = 406, z = 696, rot = 16384, team = 1},
			{name = 'cornanotc', x = 408, y = 401, z = 552, rot = 16384, team = 1},
			{name = 'cornanotc', x = 408, y = 397, z = 488, rot = 16384, team = 1},
			{name = 'cornanotc', x = 472, y = 399, z = 552, rot = 16384, team = 1},
			{name = 'cornanotc', x = 472, y = 396, z = 488, rot = 16384, team = 1},
			{name = 'corlab', x = 1776, y = 695, z = 1776, rot = 0, team = 1},
			{name = 'corck', x = 1846, y = 701, z = 1703, rot = 27773, team = 1},
			{name = 'cornanotc', x = 1752, y = 702, z = 1608, rot = 0, team = 1},
			{name = 'cornanotc', x = 1896, y = 708, z = 1560, rot = 0, team = 1},
			{name = 'corvp', x = 3040, y = 208, z = 1584, rot = 32767, team = 1},
			{name = 'cornanotc', x = 2952, y = 202, z = 1704, rot = 32767, team = 1},
			{name = 'armack', x = 5754, y = 444, z = 4074, rot = 1138, team = 0},
			{name = 'armmoho', x = 5664, y = 484, z = 2608, rot = 32767, team = 0},
			{name = 'armmoho', x = 4560, y = 608, z = 3344, rot = 32767, team = 0},
			{name = 'cordrag', x = 5632, y = 336, z = 5744, rot = 32767, team = 1},
			{name = 'armmoho', x = 4432, y = 710, z = 4528, rot = 32767, team = 0},
			{name = 'armveil', x = 4648, y = 697, z = 4248, rot = 32767, team = 0},
			{name = 'armmoho', x = 4544, y = 489, z = 1728, rot = 32767, team = 0},
			{name = 'armack', x = 5233, y = 642, z = 636, rot = -18399, team = 0},
			{name = 'armmoho', x = 4016, y = 470, z = 656, rot = 32767, team = 0},
			{name = 'armmoho', x = 5312, y = 642, z = 816, rot = 32767, team = 0},
			{name = 'armmoho', x = 3392, y = 458, z = 112, rot = 32767, team = 0},
			{name = 'armmoho', x = 5264, y = 642, z = 336, rot = 32767, team = 0},
			{name = 'armmoho', x = 5760, y = 642, z = 336, rot = 32767, team = 0},
			{name = 'armmoho', x = 5728, y = 642, z = 832, rot = 32767, team = 0},
			{name = 'cordoom', x = 1728, y = 320, z = 352, rot = 32767, team = 1},
			{name = 'corfort', x = 1776, y = 318, z = 336, rot = 16384, team = 1},
			{name = 'corfort', x = 1776, y = 318, z = 368, rot = 16384, team = 1},
			{name = 'corfort', x = 1776, y = 318, z = 400, rot = 16384, team = 1},
			{name = 'corfort', x = 1744, y = 320, z = 400, rot = 0, team = 1},
			{name = 'corfort', x = 1712, y = 321, z = 400, rot = 0, team = 1},
			{name = 'corfort', x = 1680, y = 322, z = 400, rot = 0, team = 1},
			{name = 'corfort', x = 1680, y = 322, z = 368, rot = -16384, team = 1},
			{name = 'corfort', x = 1680, y = 321, z = 336, rot = -16384, team = 1},
			{name = 'corfort', x = 1680, y = 321, z = 304, rot = -16384, team = 1},
			{name = 'corfort', x = 1712, y = 320, z = 304, rot = 32767, team = 1},
			{name = 'corfort', x = 1744, y = 319, z = 304, rot = 32767, team = 1},
			{name = 'corfort', x = 1776, y = 317, z = 304, rot = 32767, team = 1},
			{name = 'cortoast', x = 1392, y = 384, z = 480, rot = 32767, team = 1},
			{name = 'cornanotc', x = 1624, y = 322, z = 184, rot = 32767, team = 1},
			{name = 'armpb', x = 4072, y = 540, z = 1432, rot = 32767, team = 0},
			{name = 'armpb', x = 4088, y = 537, z = 1272, rot = 32767, team = 0},
			{name = 'armveil', x = 4008, y = 560, z = 1208, rot = 32767, team = 0},
			{name = 'armgmm', x = 3848, y = 586, z = 1304, rot = 32767, team = 0},
			{name = 'armack', x = 4894, y = 642, z = 546, rot = -23443, team = 0},
			{name = 'armmoho', x = 5776, y = 445, z = 4240, rot = 32767, team = 0},
			{name = 'armanni', x = 5392, y = 634, z = 1696, rot = 32767, team = 0},
			{name = 'armanni', x = 5216, y = 642, z = 1696, rot = 32767, team = 0},
			{name = 'armamb', x = 4912, y = 642, z = 624, rot = 32767, team = 0},
			{name = 'armemp', x = 5728, y = 642, z = 416, rot = 32767, team = 0},
			{name = 'armamd', x = 5648, y = 642, z = 528, rot = 32767, team = 0},
			{name = 'armveil', x = 5352, y = 642, z = 1320, rot = 32767, team = 0},
			{name = 'armveil', x = 5160, y = 642, z = 552, rot = 32767, team = 0},
			{name = 'armuwadves', x = 5792, y = 642, z = 608, rot = 32767, team = 0},
			{name = 'armuwadves', x = 5856, y = 642, z = 608, rot = 32767, team = 0},
			{name = 'armuwadvms', x = 5792, y = 642, z = 672, rot = 32767, team = 0},
			{name = 'armuwadvms', x = 5856, y = 642, z = 672, rot = 32767, team = 0},
			{name = 'armveil', x = 5800, y = 642, z = 536, rot = 32767, team = 0},
			{name = 'armpb', x = 5592, y = 585, z = 1704, rot = 32767, team = 0},
			{name = 'armpb', x = 6024, y = 587, z = 1704, rot = 32767, team = 0},
			{name = 'armflak', x = 5736, y = 636, z = 1320, rot = 32767, team = 0},
			{name = 'armflak', x = 5016, y = 642, z = 1320, rot = 32767, team = 0},
			{name = 'armflak', x = 5016, y = 642, z = 936, rot = 32767, team = 0},
			{name = 'armflak', x = 4968, y = 642, z = 408, rot = 32767, team = 0},
			{name = 'armmercury', x = 5216, y = 642, z = 432, rot = 32767, team = 0},
			{name = 'armalab', x = 5640, y = 642, z = 1032, rot = 0, team = 0},
			{name = 'armmercury', x = 5152, y = 642, z = 1200, rot = 0, team = 0},
			{name = 'armafus', x = 5424, y = 642, z = 528, rot = 0, team = 0},
			{name = 'armfus', x = 5520, y = 642, z = 536, rot = 0, team = 0},
			{name = 'armsd', x = 5648, y = 642, z = 608, rot = 0, team = 0},
			{name = 'armtarg', x = 5304, y = 642, z = 552, rot = 0, team = 0},
			{name = 'armtarg', x = 5832, y = 642, z = 792, rot = 0, team = 0},
			{name = 'armgate', x = 5344, y = 642, z = 1392, rot = 0, team = 0},
			{name = 'armgate', x = 5920, y = 637, z = 1312, rot = 0, team = 0},
			{name = 'armpb', x = 5688, y = 617, z = 1560, rot = 0, team = 0},
			{name = 'armpb', x = 5928, y = 617, z = 1560, rot = 0, team = 0},
			{name = 'armpb', x = 5464, y = 639, z = 1368, rot = 0, team = 0},
			{name = 'armpb', x = 5928, y = 641, z = 1128, rot = 0, team = 0},
			{name = 'armpb', x = 5064, y = 642, z = 1080, rot = 0, team = 0},
			{name = 'armpb', x = 4776, y = 642, z = 440, rot = 0, team = 0},
			{name = 'armlab', x = 5328, y = 642, z = 1040, rot = 0, team = 0},
			{name = 'armnanotc', x = 5416, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armnanotc', x = 5480, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armnanotc', x = 5544, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armnanotc', x = 5544, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armnanotc', x = 5480, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armnanotc', x = 5416, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armnanotc', x = 5416, y = 642, z = 1112, rot = 0, team = 0},
			{name = 'armnanotc', x = 5480, y = 642, z = 1112, rot = 0, team = 0},
			{name = 'armnanotc', x = 5544, y = 642, z = 1112, rot = 0, team = 0},
			{name = 'armgate', x = 5104, y = 642, z = 480, rot = 0, team = 0},
			{name = 'armnanotc', x = 5096, y = 642, z = 600, rot = 0, team = 0},
			{name = 'armnanotc', x = 5208, y = 642, z = 1464, rot = 0, team = 0},
			{name = 'armnanotc', x = 5352, y = 642, z = 1512, rot = 0, team = 0},
			{name = 'armnanotc', x = 5832, y = 627, z = 1464, rot = 0, team = 0},
			{name = 'armnanotc', x = 5640, y = 628, z = 1464, rot = 0, team = 0},
			{name = 'armnanotc', x = 5976, y = 628, z = 1464, rot = 0, team = 0},
			{name = 'armwin', x = 5784, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armwin', x = 5848, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armwin', x = 5912, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armwin', x = 5976, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armwin', x = 6040, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armwin', x = 6104, y = 642, z = 984, rot = 0, team = 0},
			{name = 'armwin', x = 6104, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armwin', x = 6040, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armwin', x = 5976, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armwin', x = 5912, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armwin', x = 5848, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armwin', x = 5784, y = 642, z = 1048, rot = 0, team = 0},
			{name = 'armadvsol', x = 5040, y = 642, z = 320, rot = 0, team = 0},
			{name = 'armadvsol', x = 5120, y = 642, z = 320, rot = 0, team = 0},
			{name = 'armadvsol', x = 5120, y = 642, z = 240, rot = 0, team = 0},
			{name = 'armadvsol', x = 5040, y = 642, z = 240, rot = 0, team = 0},
			{name = 'armmmkr', x = 5408, y = 642, z = 736, rot = 0, team = 0},
			{name = 'armmmkr', x = 5488, y = 642, z = 736, rot = 0, team = 0},
			{name = 'armmmkr', x = 5568, y = 642, z = 736, rot = 0, team = 0},
			{name = 'armmmkr', x = 5568, y = 642, z = 816, rot = 0, team = 0},
			{name = 'armmmkr', x = 5488, y = 642, z = 816, rot = 0, team = 0},
			{name = 'armmmkr', x = 5408, y = 642, z = 816, rot = 0, team = 0},
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
		startrectbottom = 0.19117647;
		startrectleft = 0.84191179;
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
		Side = __PLAYERSIDE__;
		Handicap = __PLAYERHANDICAP__;
		RgbColor = 0.99609375 0.546875 0;
		AllyTeam = 0;
		TeamLeader = 0;
	}

	[allyTeam1]
	{
		startrectright = 0.1617647;
		startrectbottom = 1;
		startrectleft = 0;
		numallies = 0;
		startrecttop = 0.80147058;
	}

	[ai0]
	{
		Host = 0;
		IsFromDemo = 0;
		Team = 1;
		Name = BARbarianAI(1);
		ShortName = BARb;
		Version = stable;
	}

	[player0]
	{
		IsFromDemo = 0;
		Name = Player;
		Team = 0;
		rank = 0;
	}

	NumRestrictions=__NUMRESTRICTIONS__;

	[modoptions]
	{
		scenariooptions = __SCENARIOOPTIONS__;
		deathmode = builders;
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
	numusers = 2;
	gametype = __BARVERSION__;
	nohelperais = 0;
	GameStartDelay = 5;
	myplayername = __PLAYERNAME__;
}

	]],

}

return scenariodata
