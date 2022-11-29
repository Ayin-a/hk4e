-- 基础信息
local base_info = {
	group_id = 250030010
}

-- Trigger变量
local defs = {
	gear_group_id = 250030001,
	group_id = 250030010
}

-- DEFS_MISCS
tide_defs = {
	[1] = {{ sum = 12, min = 4, max = 6,suite=2}},
                [2] = {{ sum = 12, min = 4, max = 6,suite=2}},  
                [3] = {{ sum = 12, min = 4, max = 6,suite=2}},
	[4] = {{ sum = 12, min = 4, max = 6,suite=2}}        
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[10001] = { config_id = 10001, monster_id = 21010102, pos = { x = 61.574, y = 0.505, z = -13.465 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10002] = { config_id = 10002, monster_id = 21020201, pos = { x = 61.379, y = 0.506, z = -12.122 }, rot = { x = 0.000, y = 269.887, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10003] = { config_id = 10003, monster_id = 21020201, pos = { x = 60.604, y = 0.502, z = -12.188 }, rot = { x = 0.000, y = 273.418, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10004] = { config_id = 10004, monster_id = 22010201, pos = { x = 60.107, y = 0.540, z = -13.609 }, rot = { x = 0.000, y = 142.813, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10006] = { config_id = 10006, monster_id = 22010201, pos = { x = 59.597, y = 0.507, z = -11.179 }, rot = { x = 0.000, y = 142.813, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10019] = { config_id = 10019, monster_id = 21010102, pos = { x = 61.671, y = 0.507, z = -11.978 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10020] = { config_id = 10020, monster_id = 21010102, pos = { x = 61.625, y = 0.510, z = -11.461 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10021] = { config_id = 10021, monster_id = 21010102, pos = { x = 61.365, y = 0.511, z = -14.714 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10022] = { config_id = 10022, monster_id = 23010101, pos = { x = 60.717, y = 0.506, z = -11.410 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10023] = { config_id = 10023, monster_id = 23010301, pos = { x = 62.577, y = 0.507, z = -13.258 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10024] = { config_id = 10024, monster_id = 21020201, pos = { x = 61.284, y = 0.505, z = -12.195 }, rot = { x = 0.000, y = 273.418, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10025] = { config_id = 10025, monster_id = 21020201, pos = { x = 61.414, y = 0.505, z = -12.182 }, rot = { x = 0.000, y = 273.418, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10026] = { config_id = 10026, monster_id = 21020201, pos = { x = 61.401, y = 0.549, z = -15.486 }, rot = { x = 0.000, y = 273.418, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10028] = { config_id = 10028, monster_id = 21010102, pos = { x = 60.046, y = 0.501, z = -12.371 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10029] = { config_id = 10029, monster_id = 21010102, pos = { x = 60.000, y = 0.502, z = -11.854 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10030] = { config_id = 10030, monster_id = 21010102, pos = { x = 59.740, y = 0.562, z = -15.107 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 },
	[10031] = { config_id = 10031, monster_id = 21010102, pos = { x = 59.949, y = 0.540, z = -13.858 }, rot = { x = 0.000, y = 274.863, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[10007] = { config_id = 10007, gadget_id = 70350036, pos = { x = -36.341, y = 4.670, z = -32.425 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1 },
	[10008] = { config_id = 10008, gadget_id = 70300118, pos = { x = -36.292, y = 4.670, z = -32.381 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1 },
	[10009] = { config_id = 10009, gadget_id = 70350023, pos = { x = -36.341, y = 4.670, z = -32.425 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	[10027] = { config_id = 10027, shape = RegionShape.SPHERE, radius = 5, pos = { x = 3.072, y = 0.835, z = -10.216 } }
}

-- 触发器
triggers = {
	{ config_id = 1010027, name = "ENTER_REGION_10027", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_10027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
	{ config_id = 2, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 10007, 10008, 10009 },
		regions = { 10027 },
		triggers = { "ENTER_REGION_10027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 10001, 10019, 10020, 10021, 10028, 10029, 10030, 10031 },
		gadgets = { },
		regions = { 10027 },
		triggers = { "ENTER_REGION_10027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 10002, 10003, 10024, 10025, 10026 },
		gadgets = { },
		regions = { 10027 },
		triggers = { "ENTER_REGION_10027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 10004, 10006, 10022, 10023 },
		gadgets = { },
		regions = { 10027 },
		triggers = { "ENTER_REGION_10027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_10027(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, evt.param3)
	return 0
end

require "TowerDefense_Monster"