-- 基础信息
local base_info = {
	group_id = 133220352
}

-- Trigger变量
local defs = {
	gadget_id = 352004
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
	{ config_id = 352001, gadget_id = 70900008, pos = { x = -2831.200, y = 223.211, z = -4597.016 }, rot = { x = 0.000, y = 318.362, z = 0.000 }, level = 32, persistent = true, area_id = 11 },
	{ config_id = 352002, gadget_id = 70900008, pos = { x = -2835.886, y = 223.320, z = -4597.267 }, rot = { x = 0.000, y = 318.362, z = 0.000 }, level = 32, persistent = true, area_id = 11 },
	{ config_id = 352003, gadget_id = 70900008, pos = { x = -2839.849, y = 223.073, z = -4594.479 }, rot = { x = 0.000, y = 318.362, z = 0.000 }, level = 32, persistent = true, area_id = 11 },
	{ config_id = 352004, gadget_id = 70211111, pos = { x = -2836.711, y = 223.037, z = -4594.361 }, rot = { x = 9.611, y = 42.416, z = 4.577 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 352008, gadget_id = 70900008, pos = { x = -2841.592, y = 222.294, z = -4589.871 }, rot = { x = 0.000, y = 318.362, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 352009, gadget_id = 70360276, pos = { x = -2831.200, y = 223.211, z = -4597.016 }, rot = { x = 0.000, y = 37.105, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 352010, gadget_id = 70360276, pos = { x = -2835.886, y = 223.320, z = -4597.267 }, rot = { x = 0.000, y = 37.105, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 352011, gadget_id = 70360276, pos = { x = -2839.849, y = 223.073, z = -4594.479 }, rot = { x = 0.000, y = 37.105, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 352012, gadget_id = 70360276, pos = { x = -2841.592, y = 222.294, z = -4589.871 }, rot = { x = 0.000, y = 37.105, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1352005, name = "GADGET_STATE_CHANGE_352005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352005", action = "action_EVENT_GADGET_STATE_CHANGE_352005", trigger_count = 0 },
	{ config_id = 1352006, name = "GADGET_STATE_CHANGE_352006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_352006" },
	{ config_id = 1352007, name = "GADGET_CREATE_352007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_352007", action = "action_EVENT_GADGET_CREATE_352007" }
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
		gadgets = { 352001, 352002, 352003, 352008, 352009, 352010, 352011, 352012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_352005", "GADGET_STATE_CHANGE_352006", "GADGET_CREATE_352007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == 4 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == 4 then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_352007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_352007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 352009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 352010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 352011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 352012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 352001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 352002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 352003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 352008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end