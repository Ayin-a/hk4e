-- 基础信息
local base_info = {
	group_id = 133004335
}

-- Trigger变量
local defs = {
	gadget_id = 335004
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
	{ config_id = 335001, gadget_id = 70310011, pos = { x = 2228.670, y = 214.481, z = -463.473 }, rot = { x = 356.945, y = 359.877, z = 4.597 }, level = 15, persistent = true, area_id = 3 },
	{ config_id = 335002, gadget_id = 70310011, pos = { x = 2224.230, y = 213.624, z = -473.065 }, rot = { x = 357.624, y = 359.918, z = 3.977 }, level = 15, persistent = true, area_id = 3 },
	{ config_id = 335003, gadget_id = 70310011, pos = { x = 2219.634, y = 213.759, z = -462.148 }, rot = { x = 358.614, y = 359.934, z = 5.460 }, level = 15, persistent = true, area_id = 3 },
	{ config_id = 335004, gadget_id = 70211111, pos = { x = 2224.379, y = 214.060, z = -465.451 }, rot = { x = 6.310, y = 239.564, z = 0.705 }, level = 11, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1335005, name = "GADGET_STATE_CHANGE_335005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_335005", action = "action_EVENT_GADGET_STATE_CHANGE_335005", trigger_count = 0 },
	{ config_id = 1335006, name = "GADGET_STATE_CHANGE_335006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_335006" },
	{ config_id = 1335007, name = "GADGET_CREATE_335007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_335007", action = "action_EVENT_GADGET_CREATE_335007" }
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
		gadgets = { 335001, 335002, 335003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_335005", "GADGET_STATE_CHANGE_335006", "GADGET_CREATE_335007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_335005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_335005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_335006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_335007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_335007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end