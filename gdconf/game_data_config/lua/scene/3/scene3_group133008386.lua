-- 基础信息
local base_info = {
	group_id = 133008386
}

-- Trigger变量
local defs = {
	gadget_id = 386004
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
	{ config_id = 386001, gadget_id = 70310015, pos = { x = 1377.116, y = 276.054, z = -1120.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 386003, gadget_id = 70310015, pos = { x = 1386.789, y = 275.673, z = -1116.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 386004, gadget_id = 70220054, pos = { x = 1363.773, y = 269.528, z = -1120.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, showcutscene = true, isOneoff = true, route_id = 300800096, persistent = true, area_id = 10 },
	{ config_id = 386008, gadget_id = 70310015, pos = { x = 1383.406, y = 275.949, z = -1110.078 }, rot = { x = 351.998, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 386010, gadget_id = 70310015, pos = { x = 1373.753, y = 277.710, z = -1112.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 386012, gadget_id = 70211121, pos = { x = 1376.456, y = 277.333, z = -1115.232 }, rot = { x = 9.288, y = 70.298, z = 354.610 }, level = 26, drop_tag = "雪山解谜高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1386005, name = "GADGET_STATE_CHANGE_386005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_386005", action = "action_EVENT_GADGET_STATE_CHANGE_386005", trigger_count = 0 },
	{ config_id = 1386006, name = "GADGET_STATE_CHANGE_386006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_386006" },
	{ config_id = 1386007, name = "GADGET_CREATE_386007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_386007", action = "action_EVENT_GADGET_CREATE_386007" },
	{ config_id = 1386011, name = "ANY_GADGET_DIE_386011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_386011", action = "action_EVENT_ANY_GADGET_DIE_386011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 1, no_refresh = true }
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
		gadgets = { 386001, 386003, 386008, 386010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_386005", "GADGET_STATE_CHANGE_386006", "GADGET_CREATE_386007", "ANY_GADGET_DIE_386011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_386005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_386005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	local pos = {x=1367, y=277, z=-1119}
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	                ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1 })
	
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_386006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_386007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_386007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_386011(context, evt)
	if 386004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_386011(context, evt)
	-- 创建id为386012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 386012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end