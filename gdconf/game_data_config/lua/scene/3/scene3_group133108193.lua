-- 基础信息
local base_info = {
	group_id = 133108193
}

-- Trigger变量
local defs = {
	order = {193006},
	region = 193013,
	region_Enter = 193013,
	region_Leave = 193020,
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
	{ config_id = 193006, gadget_id = 70800043, pos = { x = -143.082, y = 200.748, z = -903.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 193012, gadget_id = 70010006, pos = { x = -143.913, y = 200.726, z = -904.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 193013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -143.847, y = 200.725, z = -904.536 }, area_id = 7 },
	{ config_id = 193020, shape = RegionShape.SPHERE, radius = 70, pos = { x = -143.847, y = 200.725, z = -904.536 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1193014, name = "SELECT_OPTION_193014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193014", action = "action_EVENT_SELECT_OPTION_193014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 193001, monster_id = 21020201, pos = { x = -149.180, y = 202.688, z = -860.842 }, rot = { x = 0.000, y = 73.821, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 7 },
		{ config_id = 193002, monster_id = 21010301, pos = { x = -142.036, y = 201.491, z = -855.273 }, rot = { x = 0.000, y = 191.964, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
		{ config_id = 193003, monster_id = 21010301, pos = { x = -145.835, y = 205.598, z = -865.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
		{ config_id = 193004, monster_id = 21010601, pos = { x = -139.978, y = 208.323, z = -863.543 }, rot = { x = 0.000, y = 307.674, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
		{ config_id = 193005, monster_id = 21010601, pos = { x = -148.558, y = 200.325, z = -852.838 }, rot = { x = 0.000, y = 148.471, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 }
	},
	gadgets = {
		{ config_id = 193007, gadget_id = 70800043, pos = { x = -144.215, y = 203.558, z = -859.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 193008, gadget_id = 70800043, pos = { x = -137.478, y = 201.084, z = -890.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 193009, gadget_id = 70800043, pos = { x = -185.292, y = 200.000, z = -903.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 193010, gadget_id = 70211111, pos = { x = -189.204, y = 200.000, z = -860.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
		{ config_id = 193011, gadget_id = 70300114, pos = { x = -144.251, y = 203.559, z = -859.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
	},
	triggers = {
		{ config_id = 1193015, name = "SELECT_OPTION_193015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193015", action = "action_EVENT_SELECT_OPTION_193015" },
		{ config_id = 1193016, name = "SELECT_OPTION_193016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193016", action = "action_EVENT_SELECT_OPTION_193016" },
		{ config_id = 1193017, name = "SELECT_OPTION_193017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193017", action = "action_EVENT_SELECT_OPTION_193017" },
		{ config_id = 1193018, name = "GADGET_STATE_CHANGE_193018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_193018", action = "action_EVENT_GADGET_STATE_CHANGE_193018" },
		{ config_id = 1193019, name = "ANY_MONSTER_DIE_193019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_193019", action = "action_EVENT_ANY_MONSTER_DIE_193019" }
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
		gadgets = { 193012 },
		regions = { 193013, 193020 },
		triggers = { "SELECT_OPTION_193014" },
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
function condition_EVENT_SELECT_OPTION_193014(context, evt)
	-- 判断是gadgetid 193006 option_id 92
	if 193006 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_193014(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_2/Ayesha"