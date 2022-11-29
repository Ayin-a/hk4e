-- 基础信息
local base_info = {
	group_id = 133222242
}

-- DEFS_MISCS
local connection = {
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
	{ config_id = 242001, gadget_id = 70360183, pos = { x = -4437.009, y = 200.923, z = -3738.119 }, rot = { x = 4.104, y = 83.526, z = 354.651 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	{ config_id = 242002, gadget_id = 70360182, pos = { x = -4428.031, y = 200.260, z = -3737.612 }, rot = { x = 5.353, y = 173.668, z = 4.099 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	{ config_id = 242003, gadget_id = 70360181, pos = { x = -4436.615, y = 200.494, z = -3742.779 }, rot = { x = 354.665, y = 353.910, z = 355.879 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 242004, gadget_id = 70360181, pos = { x = -4427.571, y = 199.858, z = -3741.552 }, rot = { x = 355.896, y = 263.526, z = 5.349 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
	{ config_id = 242005, gadget_id = 70211112, pos = { x = -4432.548, y = 200.384, z = -3740.165 }, rot = { x = 355.958, y = 262.872, z = 5.395 }, level = 26, drop_tag = "解谜中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1242006, name = "GADGET_STATE_CHANGE_242006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_242006", action = "action_EVENT_GADGET_STATE_CHANGE_242006", trigger_count = 0 },
	{ config_id = 1242007, name = "GROUP_LOAD_242007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_242007", action = "action_EVENT_GROUP_LOAD_242007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
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
		gadgets = { 242001, 242002, 242003, 242004, 242005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_242006", "GROUP_LOAD_242007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_242006(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222242, 242001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222242, 242002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222242, 242003) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222242, 242004) then
		return false
	end
	
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_242006(context, evt)
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133217260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 242005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 242005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "IsFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IsFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_242007(context, evt)
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_242007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222242, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_1/PirateHelm"