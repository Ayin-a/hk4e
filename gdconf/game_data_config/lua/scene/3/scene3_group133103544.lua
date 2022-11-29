-- 基础信息
local base_info = {
	group_id = 133103544
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
	{ config_id = 544001, gadget_id = 70360007, pos = { x = 6.414, y = 216.497, z = 1321.639 }, rot = { x = 0.000, y = 230.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 544002, gadget_id = 70211121, pos = { x = 6.681, y = 216.497, z = 1326.316 }, rot = { x = 0.000, y = 145.010, z = 0.000 }, level = 21, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 544007, gadget_id = 70360007, pos = { x = 11.254, y = 216.497, z = 1324.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1544003, name = "VARIABLE_CHANGE_544003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "" },
	{ config_id = 1544004, name = "GADGET_STATE_CHANGE_544004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "" },
	{ config_id = 1544005, name = "GADGET_STATE_CHANGE_544005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "" },
	{ config_id = 1544006, name = "GADGET_STATE_CHANGE_544006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_544006", action = "action_EVENT_GADGET_STATE_CHANGE_544006" },
	{ config_id = 1544008, name = "GADGET_STATE_CHANGE_544008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "" },
	{ config_id = 1544009, name = "GADGET_STATE_CHANGE_544009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_544009", action = "action_EVENT_GADGET_STATE_CHANGE_544009", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 544001, 544007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_544003", "GADGET_STATE_CHANGE_544004", "GADGET_STATE_CHANGE_544005", "GADGET_STATE_CHANGE_544006", "GADGET_STATE_CHANGE_544008", "GADGET_STATE_CHANGE_544009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 544002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_544006(context, evt)
	if 544002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_544006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_544009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_544009(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default and evt.param3 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103544, 2)
	end
	return 0
end