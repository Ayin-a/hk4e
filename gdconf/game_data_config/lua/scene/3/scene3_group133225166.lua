-- 基础信息
local base_info = {
	group_id = 133225166
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
	{ config_id = 166005, gadget_id = 70217010, pos = { x = -6321.614, y = 207.929, z = -2707.229 }, rot = { x = 333.938, y = 52.305, z = 353.972 }, level = 26, chest_drop_id = 1050152, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1166006, name = "VARIABLE_CHANGE_166006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_166006", action = "action_EVENT_VARIABLE_CHANGE_166006" },
	{ config_id = 1166007, name = "GADGET_STATE_CHANGE_166007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166007", action = "action_EVENT_GADGET_STATE_CHANGE_166007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_166006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 166005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_166007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_166006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_166006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225166, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_166007(context, evt)
	if 166005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_166007(context, evt)
	-- 将本组内变量名为 "StoneCanPlace_C" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "StoneCanPlace_C", 1, 133225094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 1, 133225162) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end