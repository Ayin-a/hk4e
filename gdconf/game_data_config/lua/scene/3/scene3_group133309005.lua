-- 基础信息
local base_info = {
	group_id = 133309005
}

-- DEFS_MISCS
local levelUpOption = 0
local chainId = 100006
local maxLevel = 1
local regionID = 5006

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
	{ config_id = 5001, gadget_id = 70330272, pos = { x = -2273.490, y = 51.021, z = 5568.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 5004, gadget_id = 70330273, pos = { x = -2264.007, y = 46.982, z = 5568.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 5006, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2264.007, y = 46.982, z = 5568.500 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "QUEST_START_5002", event = EventType.EVENT_QUEST_START, source = "7305437", condition = "", action = "action_EVENT_QUEST_START_5002", trigger_count = 0 },
	{ config_id = 1005003, name = "QUEST_FINISH_5003", event = EventType.EVENT_QUEST_FINISH, source = "7305437", condition = "", action = "action_EVENT_QUEST_FINISH_5003" },
	{ config_id = 1005005, name = "GROUP_LOAD_5005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_5005", action = "action_EVENT_GROUP_LOAD_5005", trigger_count = 0 },
	{ config_id = 1005006, name = "ENTER_REGION_5006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
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
		gadgets = { 5001, 5004 },
		regions = { 5006 },
		triggers = { "QUEST_START_5002", "QUEST_FINISH_5003", "GROUP_LOAD_5005", "ENTER_REGION_5006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_5002(context, evt)
	-- 将本组内变量名为 "Variable_Setchain" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_Setchain", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_5003(context, evt)
	-- 将本组内变量名为 "questfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_5005(context, evt)
	-- 判断变量"questfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "questfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5005(context, evt)
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/SetChainLevel"