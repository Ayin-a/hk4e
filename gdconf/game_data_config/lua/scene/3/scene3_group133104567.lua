-- 基础信息
local base_info = {
	group_id = 133104567
}

-- Trigger变量
local defs = {
	gadget_id = 567004
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
	{ config_id = 567001, gadget_id = 70310011, pos = { x = 70.411, y = 209.136, z = 679.422 }, rot = { x = 28.875, y = 358.384, z = 353.729 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 567002, gadget_id = 70310011, pos = { x = 51.539, y = 210.559, z = 685.344 }, rot = { x = 45.947, y = 349.551, z = 335.657 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 567003, gadget_id = 70310011, pos = { x = 60.878, y = 209.874, z = 702.244 }, rot = { x = 10.517, y = 3.356, z = 35.316 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 567004, gadget_id = 70211111, pos = { x = 61.111, y = 208.813, z = 689.670 }, rot = { x = 4.459, y = 359.861, z = 356.424 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1567005, name = "GADGET_STATE_CHANGE_567005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_567005", action = "action_EVENT_GADGET_STATE_CHANGE_567005", trigger_count = 0 },
	{ config_id = 1567006, name = "GADGET_STATE_CHANGE_567006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_567006" },
	{ config_id = 1567007, name = "GADGET_CREATE_567007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_567007", action = "action_EVENT_GADGET_CREATE_567007" }
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
		gadgets = { 567001, 567002, 567003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_567005", "GADGET_STATE_CHANGE_567006", "GADGET_CREATE_567007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_567005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_567005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_567006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_567007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_567007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end