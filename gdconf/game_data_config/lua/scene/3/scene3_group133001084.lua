-- 基础信息
local base_info = {
	group_id = 133001084
}

-- DEFS_MISCS
local defs = {
        gallery_id = 111,

        --开启机关交互后，加载哪个/些suit
        load_on_start = {2,3},

        --开启机关的configID，SelectOption为175
        starter_gadget = 84001,

        --终点region的configID
        end_regionID = 84003,

        --玩法RegionID，在suit1
        parkour_regions = {84002},

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
	{ config_id = 84001, gadget_id = 70350457, pos = { x = 1642.452, y = 273.825, z = -1464.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 2 }
}

-- 区域
regions = {
	-- 玩法的region id
	{ config_id = 84002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1642.407, y = 273.805, z = -1464.447 }, area_id = 2 },
	-- 玩法的终点region
	{ config_id = 84003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1618.709, y = 268.700, z = -1478.722 }, area_id = 2 }
}

-- 触发器
triggers = {
	-- 玩法的region id
	{ config_id = 1084002, name = "ENTER_REGION_84002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 玩法的终点region
	{ config_id = 1084003, name = "ENTER_REGION_84003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 84001 },
		regions = { 84002 },
		triggers = { "ENTER_REGION_84002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 84003 },
		triggers = { "ENTER_REGION_84003" },
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