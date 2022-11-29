-- 基础信息
local base_info = {
	group_id = 155006054
}

-- Trigger变量
local defs = {
	pointarryRot = 500600004
}

-- DEFS_MISCS
local EnvControlGadgets = {54002,54007}
local DayAppearGadgets = {}
local NightAppearGadgets = {54001}

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
	{ config_id = 54001, gadget_id = 70360315, pos = { x = 279.324, y = 132.889, z = -323.833 }, rot = { x = 3.266, y = 294.981, z = 358.322 }, level = 36, area_id = 200 },
	{ config_id = 54002, gadget_id = 70360309, pos = { x = 281.414, y = 135.239, z = -326.031 }, rot = { x = 357.421, y = 356.757, z = 1.937 }, level = 36, area_id = 200 },
	{ config_id = 54003, gadget_id = 70290170, pos = { x = 282.138, y = 133.743, z = -319.578 }, rot = { x = 0.515, y = 25.831, z = 4.030 }, level = 36, persistent = true, is_use_point_array = true, area_id = 200 },
	{ config_id = 54004, gadget_id = 70211111, pos = { x = 284.658, y = 134.267, z = -314.287 }, rot = { x = 356.166, y = 204.111, z = 356.671 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 54007, gadget_id = 70360304, pos = { x = 278.512, y = 136.287, z = -334.461 }, rot = { x = 7.239, y = 36.875, z = 7.799 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1054005, name = "GADGET_STATE_CHANGE_54005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54005", action = "action_EVENT_GADGET_STATE_CHANGE_54005", trigger_count = 0 },
	{ config_id = 1054006, name = "GROUP_LOAD_54006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_54006", trigger_count = 0 },
	-- Door02
	{ config_id = 1054008, name = "GROUP_LOAD_54008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_54008", action = "action_EVENT_GROUP_LOAD_54008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Door02", value = 0, no_refresh = true }
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
		gadgets = { 54002, 54003, 54004, 54007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54005", "GROUP_LOAD_54006", "GROUP_LOAD_54008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54005(context, evt)
		if 54002 ~= evt.param2 or 322 ~= ScriptLib.GetGadgetStateByConfigId(context, 155006054, 54002) then
				return false
			end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54005(context, evt)
	-- 将本组内变量名为 "Door02" 的变量设置为 1
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "Door02", 1) then
	          ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	          return -1
	        end
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
			ScriptLib.SetPlatformPointArray(context, 54003, defs.pointarryRot, { 1 }, { route_type = 0,turn_mode=true })
	
	      
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_54006(context, evt)
	DayNight_Gadget_Unlock(context,54002)
	DayNight_Gadget_Unlock(context,54007)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_54008(context, evt)
	-- 判断变量"Door02"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Door02", 155006054) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_54008(context, evt)
			ScriptLib.SetPlatformPointArray(context, 54003, defs.pointarryRot, { 1 }, { route_type = 0,turn_mode=true })
	return 0
end

require "V2_4/EnvState"