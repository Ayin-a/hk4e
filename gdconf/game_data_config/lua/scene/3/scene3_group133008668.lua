-- 基础信息
local base_info = {
	group_id = 133008668
}

-- Trigger变量
local defs = {
	order = {668006},
	region = 668013,
	region_Enter = 668013,
	region_Leave = 668020,
	challenge_id = 2002002
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
	{ config_id = 668006, gadget_id = 70800043, pos = { x = 908.606, y = 200.317, z = -1151.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 668012, gadget_id = 70010006, pos = { x = 915.748, y = 200.326, z = -1187.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 668013, shape = RegionShape.SPHERE, radius = 50, pos = { x = 894.169, y = 199.420, z = -1166.764 }, area_id = 10 },
	{ config_id = 668020, shape = RegionShape.SPHERE, radius = 70, pos = { x = 894.169, y = 199.420, z = -1166.764 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1668014, name = "SELECT_OPTION_668014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_668014", action = "action_EVENT_SELECT_OPTION_668014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 668001, monster_id = 21020201, pos = { x = 910.488, y = 200.819, z = -1143.883 }, rot = { x = 0.000, y = 73.821, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", climate_area_id = 1, area_id = 10 },
		{ config_id = 668002, monster_id = 21010301, pos = { x = 917.615, y = 200.842, z = -1138.302 }, rot = { x = 0.000, y = 191.964, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
		{ config_id = 668003, monster_id = 21010301, pos = { x = 913.823, y = 200.314, z = -1148.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
		{ config_id = 668004, monster_id = 21010601, pos = { x = 919.681, y = 200.733, z = -1146.577 }, rot = { x = 0.000, y = 307.674, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
		{ config_id = 668005, monster_id = 21010601, pos = { x = 911.098, y = 201.182, z = -1135.868 }, rot = { x = 0.000, y = 148.471, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 }
	},
	gadgets = {
		{ config_id = 668007, gadget_id = 70800043, pos = { x = 915.439, y = 200.588, z = -1142.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 668008, gadget_id = 70800043, pos = { x = 922.180, y = 200.782, z = -1173.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 668009, gadget_id = 70800043, pos = { x = 874.371, y = 200.998, z = -1186.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 668010, gadget_id = 70211111, pos = { x = 870.448, y = 314.341, z = -1143.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
		{ config_id = 668011, gadget_id = 70300114, pos = { x = 915.404, y = 200.585, z = -1142.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
	},
	triggers = {
		{ config_id = 1668015, name = "SELECT_OPTION_668015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_668015", action = "action_EVENT_SELECT_OPTION_668015" },
		{ config_id = 1668016, name = "SELECT_OPTION_668016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_668016", action = "action_EVENT_SELECT_OPTION_668016" },
		{ config_id = 1668017, name = "SELECT_OPTION_668017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_668017", action = "action_EVENT_SELECT_OPTION_668017" },
		{ config_id = 1668018, name = "GADGET_STATE_CHANGE_668018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_668018", action = "action_EVENT_GADGET_STATE_CHANGE_668018" },
		{ config_id = 1668019, name = "ANY_MONSTER_DIE_668019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_668019", action = "action_EVENT_ANY_MONSTER_DIE_668019" }
	}
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
		gadgets = { 668012 },
		regions = { 668013, 668020 },
		triggers = { "SELECT_OPTION_668014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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

-- 触发条件
function condition_EVENT_SELECT_OPTION_668014(context, evt)
	-- 判断是gadgetid 668006 option_id 92
	if 668006 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_668014(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_2/Ayesha"