-- 基础信息
local base_info = {
	group_id = 133315142
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
	{ config_id = 142001, gadget_id = 70290495, pos = { x = 532.190, y = 173.660, z = 2490.650 }, rot = { x = 0.000, y = 200.710, z = 0.000 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142002, name = "QUEST_FINISH_142002", event = EventType.EVENT_QUEST_FINISH, source = "7306641", condition = "", action = "action_EVENT_QUEST_FINISH_142002", trigger_count = 0 },
	{ config_id = 1142003, name = "GROUP_LOAD_142003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_142003", action = "action_EVENT_GROUP_LOAD_142003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isdone", value = 0, no_refresh = true }
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
		gadgets = { 142001 },
		regions = { },
		triggers = { "QUEST_FINISH_142002", "GROUP_LOAD_142003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_142002(context, evt)
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isdone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isdone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_142003(context, evt)
	-- 判断变量"isdone"为1
	if ScriptLib.GetGroupVariableValue(context, "isdone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_142003(context, evt)
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"