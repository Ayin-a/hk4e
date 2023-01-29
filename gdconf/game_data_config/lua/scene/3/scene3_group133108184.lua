-- 基础信息
local base_info = {
	group_id = 133108184
}

-- DEFS_MISCS
local defs = {
        gallery_id = 111,

        --开启机关交互后，加载哪个/些suit
        load_on_start = {2,3},

        --开启机关的configID，SelectOption为175
        starter_gadget = 184001,

        --终点region的configID
        end_regionID = 184003,

        --玩法RegionID，在suit1
        parkour_regions = {184002},

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
	{ config_id = 184001, gadget_id = 70350457, pos = { x = -99.175, y = 200.594, z = -668.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 7 }
}

-- 区域
regions = {
	-- 玩法的region id
	{ config_id = 184002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -99.220, y = 200.574, z = -668.126 }, area_id = 7 },
	-- 玩法的终点region
	{ config_id = 184003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -122.918, y = 195.469, z = -682.401 }, area_id = 7 }
}

-- 触发器
triggers = {
	-- 玩法的region id
	{ config_id = 1184002, name = "ENTER_REGION_184002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 玩法的终点region
	{ config_id = 1184003, name = "ENTER_REGION_184003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 184001 },
		regions = { 184002 },
		triggers = { "ENTER_REGION_184002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 184003 },
		triggers = { "ENTER_REGION_184003" },
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