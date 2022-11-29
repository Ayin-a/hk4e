-- 基础信息
local base_info = {
	group_id = 250030011
}

-- Trigger变量
local defs = {
	group_id = 250030011,
	gear_group_id = 250030001
}

-- DEFS_MISCS
tide_group_defs ={
	[1] = {group = 250030010, delay = 30, next_group = 2, buff = {1,2,3,4,5}},
	[2] = {group = 250030010, delay = 30, next_group = 3, buff = {1,2,3,4,5}},
	[3] = {group = 250030010, delay = 30, next_group = 4, buff = {1,2,3,4,5}},
	[4] = {group = 250030010, delay = 30, next_group = 5, buff = {1,2,3,4,5}},
	[5] = {group = 250030010, delay = 30, next_group = 0, buff = {1,2,3}},
}

tide_defs = {
	[1] = { sum = 12, min = 4, max = 6},
    [2] = { sum = 10, min = 4, max = 6},        
    [3] = { sum = 8, min = 2, max = 4},
	[4] = { sum = 6, min = 2, max = 4},                
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
}

-- 区域
regions = {
	{ config_id = 11002, shape = RegionShape.SPHERE, radius = 4, pos = { x = -38.235, y = 4.671, z = -32.253 } }
}

-- 触发器
triggers = {
	{ config_id = 1011002, name = "ENTER_REGION_11002", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_11002", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 11001, pos = { x = -6.465, y = 4.730, z = -29.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		gadgets = { },
		regions = { 11002 },
		triggers = { "ENTER_REGION_11002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_11002(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, evt.param3)
	return 0
end

require "TowerDefense_Challenge"