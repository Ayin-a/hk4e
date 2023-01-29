-- 基础信息
local base_info = {
	group_id = 133302729
}

-- DEFS_MISCS
local defs = {
        gallery_id = 111,

        --开启机关交互后，加载哪个/些suit
        load_on_start = {2,3},

        --开启机关的configID，SelectOption为175
        starter_gadget = 729001,

        --终点region的configID
        end_regionID = 729003,

        --玩法RegionID，在suit1
        parkour_regions = {729002},

        --全程终点在哪个suit,如果这个group非终点，则配0
        end_suite = 2,

        --挑战限时秒
        challenge_time = 300,


        --镜头注目
        look_pos = {x=555, y=555, z=555},
        duration = 2,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 729001, gadget_id = 70350457, pos = { x = -551.661, y = 282.732, z = 2219.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 24 }
}

-- 区域
regions = {
	-- 玩法的region id
	{ config_id = 729002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -551.706, y = 282.712, z = 2219.716 }, area_id = 24 },
	-- 玩法的终点region
	{ config_id = 729003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -575.404, y = 277.607, z = 2205.441 }, area_id = 24 }
}

-- 触发器
triggers = {
	-- 玩法的region id
	{ config_id = 1729002, name = "ENTER_REGION_729002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 玩法的终点region
	{ config_id = 1729003, name = "ENTER_REGION_729003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 729001 },
		regions = { 729002 },
		triggers = { "ENTER_REGION_729002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 729003 },
		triggers = { "ENTER_REGION_729003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================