-- 基础信息
local base_info = {
	group_id = 133104190
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
	{ config_id = 723, gadget_id = 70360005, pos = { x = 281.042, y = 206.618, z = 79.424 }, rot = { x = 359.151, y = 114.829, z = 352.135 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 724, gadget_id = 70360005, pos = { x = 270.910, y = 206.435, z = 75.962 }, rot = { x = 0.961, y = 114.924, z = 0.824 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 726, gadget_id = 70211111, pos = { x = 276.217, y = 206.400, z = 77.520 }, rot = { x = 359.182, y = 91.633, z = 357.292 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000346, name = "GADGET_STATE_CHANGE_346", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_346", action = "action_EVENT_GADGET_STATE_CHANGE_346", trigger_count = 0 },
	{ config_id = 1000348, name = "GADGET_STATE_CHANGE_348", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348", action = "action_EVENT_GADGET_STATE_CHANGE_348", trigger_count = 0 },
	{ config_id = 1000349, name = "GADGET_STATE_CHANGE_349", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_349", action = "action_EVENT_GADGET_STATE_CHANGE_349", trigger_count = 0 },
	{ config_id = 1000351, name = "GADGET_STATE_CHANGE_351", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_351", action = "action_EVENT_GADGET_STATE_CHANGE_351", trigger_count = 0 },
	{ config_id = 1000352, name = "VARIABLE_CHANGE_352", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_352", action = "action_EVENT_VARIABLE_CHANGE_352" },
	{ config_id = 1190001, name = "GADGET_STATE_CHANGE_190001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_190001", action = "action_EVENT_GADGET_STATE_CHANGE_190001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false },
	{ config_id = 2, name = "isFinished", value = 0, no_refresh = true }
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
		gadgets = { 723, 724 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_346", "GADGET_STATE_CHANGE_348", "GADGET_STATE_CHANGE_349", "GADGET_STATE_CHANGE_351", "VARIABLE_CHANGE_352", "GADGET_STATE_CHANGE_190001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346(context, evt)
	if 723 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_348(context, evt)
	if 724 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_348(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_349(context, evt)
	-- 检测config_id为723的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 723 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_349(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_351(context, evt)
	-- 检测config_id为724的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 724 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_351(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_352(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_352(context, evt)
	-- 创建id为726的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 726 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 723 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 724 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 724, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_190001(context, evt)
	if 726 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_190001(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end