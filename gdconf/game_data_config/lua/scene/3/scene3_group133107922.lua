-- 基础信息
local base_info = {
	group_id = 133107922
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 922001, monster_id = 25010201, pos = { x = -225.629, y = 185.906, z = 931.112 }, rot = { x = 0.000, y = 179.530, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 922002, monster_id = 25010201, pos = { x = -214.098, y = 186.832, z = 925.423 }, rot = { x = 0.000, y = 287.030, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 8 },
	{ config_id = 922003, monster_id = 25030201, pos = { x = -224.848, y = 186.529, z = 936.857 }, rot = { x = 0.000, y = 226.460, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 922007, monster_id = 25020201, pos = { x = -219.339, y = 186.320, z = 940.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 922010, monster_id = 25020201, pos = { x = -229.266, y = 187.559, z = 937.905 }, rot = { x = 0.000, y = 206.030, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 8 },
	{ config_id = 922015, monster_id = 25010201, pos = { x = -225.629, y = 185.906, z = 931.112 }, rot = { x = 0.000, y = 179.530, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 922016, monster_id = 25010201, pos = { x = -214.098, y = 186.832, z = 925.423 }, rot = { x = 0.000, y = 287.030, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 8 },
	{ config_id = 922017, monster_id = 25030201, pos = { x = -224.848, y = 186.529, z = 936.857 }, rot = { x = 0.000, y = 226.460, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 922018, monster_id = 25020201, pos = { x = -219.339, y = 186.320, z = 940.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 922019, monster_id = 25020201, pos = { x = -229.266, y = 187.559, z = 937.905 }, rot = { x = 0.000, y = 206.030, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 922004, gadget_id = 70710160, pos = { x = -220.029, y = 186.402, z = 937.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 922005, gadget_id = 70710160, pos = { x = -220.698, y = 186.662, z = 939.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 922006, gadget_id = 70710160, pos = { x = -220.523, y = 186.465, z = 938.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 922008, gadget_id = 70710141, pos = { x = -220.531, y = 186.800, z = 938.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 922009, gadget_id = 70500000, pos = { x = -220.690, y = 187.011, z = 939.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 922011, gadget_id = 70710113, pos = { x = -214.045, y = 186.007, z = 929.575 }, rot = { x = 0.000, y = 274.170, z = 0.000 }, level = 32, interact_id = 11, area_id = 8 },
	{ config_id = 922013, gadget_id = 70500000, pos = { x = -220.041, y = 186.742, z = 937.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1922012, name = "GADGET_STATE_CHANGE_922012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_922012", action = "action_EVENT_GADGET_STATE_CHANGE_922012" },
	{ config_id = 1922014, name = "GADGET_CREATE_922014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_922014", action = "action_EVENT_GADGET_CREATE_922014" }
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
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 922001, 922002, 922003, 922007, 922010 },
		gadgets = { 922004, 922005, 922006, 922008, 922009, 922011, 922013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_922012", "GADGET_CREATE_922014" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 922015, 922016, 922017, 922018, 922019 },
		gadgets = { 922004, 922005, 922006, 922008, 922009, 922011, 922013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_922012", "GADGET_CREATE_922014" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_922012(context, evt)
	if 922011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_922012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "10210201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_922014(context, evt)
	if 284008 ~= evt.param1 then 
		return false
	end
	local state = ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1)
	        if state == 201 or state == 202  then
	                return true
	        end
	        
	        return false
end

-- 触发操作
function action_EVENT_GADGET_CREATE_922014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "10210201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end