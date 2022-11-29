-- 基础信息
local base_info = {
	group_id = 133217162
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
	{ config_id = 162001, gadget_id = 70360183, pos = { x = -4439.928, y = 188.965, z = -3730.126 }, rot = { x = 3.220, y = 86.625, z = 354.917 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	{ config_id = 162002, gadget_id = 70360182, pos = { x = -4435.020, y = 188.560, z = -3729.727 }, rot = { x = 5.089, y = 177.212, z = 4.422 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
	{ config_id = 162003, gadget_id = 70360181, pos = { x = -4439.811, y = 188.550, z = -3734.450 }, rot = { x = 354.914, y = 357.250, z = 355.575 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	{ config_id = 162004, gadget_id = 70360181, pos = { x = -4435.036, y = 188.214, z = -3734.247 }, rot = { x = 355.457, y = 267.242, z = 5.757 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	{ config_id = 162006, gadget_id = 70211132, pos = { x = -4437.490, y = 188.580, z = -3731.932 }, rot = { x = 4.323, y = 181.315, z = 3.336 }, level = 26, drop_tag = "解谜超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1162005, name = "GADGET_STATE_CHANGE_162005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162005", action = "action_EVENT_GADGET_STATE_CHANGE_162005", trigger_count = 0 },
	{ config_id = 1162007, name = "GROUP_LOAD_162007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_162007", action = "action_EVENT_GROUP_LOAD_162007", trigger_count = 0 }
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
		gadgets = { 162001, 162002, 162003, 162004, 162006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_162005", "GROUP_LOAD_162007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_162005(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217162, 162001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217162, 162002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217162, 162003) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217162, 162004) then
		return false
	end
	
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_162005(context, evt)
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
	
	-- 将configid为 162006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162006, GadgetState.Default) then
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
function condition_EVENT_GROUP_LOAD_162007(context, evt)
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_162007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217162, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_1/PirateHelm"