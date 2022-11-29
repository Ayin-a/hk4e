-- 基础信息
local base_info = {
	group_id = 133309500
}

-- DEFS_MISCS
local levelUpOption = 0
local chainId = 100004
local maxLevel = 5
local regionID = 500004

local notifyGroupList = {
133309224,
133309635,
133309636,
133309637,
133309638,
133309712
}

local needCS = true
local CS_ID = 109

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
	{ config_id = 500001, gadget_id = 70330275, pos = { x = -2463.000, y = -10.700, z = 5473.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 500004, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2463.000, y = -10.700, z = 5473.000 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1500002, name = "VARIABLE_CHANGE_500002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_500002", action = "action_EVENT_VARIABLE_CHANGE_500002" },
	{ config_id = 1500003, name = "GROUP_LOAD_500003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_500003", action = "action_EVENT_GROUP_LOAD_500003", trigger_count = 0 },
	{ config_id = 1500004, name = "ENTER_REGION_500004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "torch1", value = 0, no_refresh = true },
	{ config_id = 2, name = "torch2", value = 0, no_refresh = true },
	{ config_id = 3, name = "torch3", value = 0, no_refresh = true }
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
		gadgets = { 500001 },
		regions = { 500004 },
		triggers = { "VARIABLE_CHANGE_500002", "GROUP_LOAD_500003", "ENTER_REGION_500004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_500002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"torch1"为1
	if ScriptLib.GetGroupVariableValue(context, "torch1") ~= 1 then
			return false
	end
	
	-- 判断变量"torch2"为1
	if ScriptLib.GetGroupVariableValue(context, "torch2") ~= 1 then
			return false
	end
	
	-- 判断变量"torch3"为1
	if ScriptLib.GetGroupVariableValue(context, "torch3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_500002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 500001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Variable_Setchain" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_Setchain", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_500003(context, evt)
	-- 判断变量"torch1"为1
	if ScriptLib.GetGroupVariableValue(context, "torch1") ~= 1 then
			return false
	end
	
	-- 判断变量"torch2"为1
	if ScriptLib.GetGroupVariableValue(context, "torch2") ~= 1 then
			return false
	end
	
	-- 判断变量"torch3"为1
	if ScriptLib.GetGroupVariableValue(context, "torch3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_500003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 500001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Variable_Setchain" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_Setchain", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_1/SetChainLevel"