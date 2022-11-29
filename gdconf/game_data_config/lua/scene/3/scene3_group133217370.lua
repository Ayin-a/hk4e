-- 基础信息
local base_info = {
	group_id = 133217370
}

-- Trigger变量
local defs = {
	gadget_id = 370004
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
	{ config_id = 370001, gadget_id = 70900008, pos = { x = -4706.968, y = 247.813, z = -4114.877 }, rot = { x = 3.780, y = 351.647, z = 3.791 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 370002, gadget_id = 70900008, pos = { x = -4718.737, y = 238.302, z = -4112.825 }, rot = { x = 4.890, y = 359.392, z = 352.908 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 370003, gadget_id = 70900008, pos = { x = -4719.774, y = 223.811, z = -4109.584 }, rot = { x = 10.157, y = 349.024, z = 12.777 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 370004, gadget_id = 70211101, pos = { x = -4731.525, y = 210.556, z = -4105.620 }, rot = { x = 346.906, y = 107.486, z = 344.109 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 370008, gadget_id = 70900008, pos = { x = -4708.904, y = 231.371, z = -4100.015 }, rot = { x = 346.470, y = 356.970, z = 15.625 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1370005, name = "GADGET_STATE_CHANGE_370005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_370005", action = "action_EVENT_GADGET_STATE_CHANGE_370005", trigger_count = 0 },
	{ config_id = 1370006, name = "GADGET_STATE_CHANGE_370006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_370006" },
	{ config_id = 1370007, name = "GADGET_CREATE_370007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_370007", action = "action_EVENT_GADGET_CREATE_370007" }
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
		gadgets = { 370001, 370002, 370003, 370008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_370005", "GADGET_STATE_CHANGE_370006", "GADGET_CREATE_370007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_370005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_370005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_370006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_370007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_370007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end