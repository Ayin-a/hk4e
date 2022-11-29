-- 基础信息
local base_info = {
	group_id = 133004276
}

-- Trigger变量
local defs = {
	gadget_id = 276004
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
	{ config_id = 276001, gadget_id = 70310001, pos = { x = 2714.494, y = 296.499, z = -408.075 }, rot = { x = 3.223, y = 0.500, z = 17.645 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 276002, gadget_id = 70310001, pos = { x = 2714.107, y = 296.138, z = -405.463 }, rot = { x = 7.200, y = 1.127, z = 17.770 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 4 },
	{ config_id = 276003, gadget_id = 70310001, pos = { x = 2713.628, y = 295.605, z = -402.717 }, rot = { x = 8.742, y = 1.340, z = 17.391 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 4 },
	{ config_id = 276004, gadget_id = 70211111, pos = { x = 2712.324, y = 295.559, z = -405.814 }, rot = { x = 17.562, y = 269.218, z = 352.666 }, level = 16, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1276005, name = "GADGET_STATE_CHANGE_276005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_276005", action = "action_EVENT_GADGET_STATE_CHANGE_276005", trigger_count = 0 },
	{ config_id = 1276006, name = "GADGET_STATE_CHANGE_276006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_276006" },
	{ config_id = 1276007, name = "GADGET_CREATE_276007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_276007", action = "action_EVENT_GADGET_CREATE_276007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 2, no_refresh = true }
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
		gadgets = { 276001, 276002, 276003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_276005", "GADGET_STATE_CHANGE_276006", "GADGET_CREATE_276007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_276005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_276005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_276006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_276007(context, evt)
	if defs.gadget_id ~= evt.param1 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_276007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end