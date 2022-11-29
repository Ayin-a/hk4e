-- 基础信息
local base_info = {
	group_id = 133107053
}

-- Trigger变量
local defs = {
	gadget_id = 53004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53010, monster_id = 20011301, pos = { x = -231.683, y = 400.076, z = 525.766 }, rot = { x = 0.000, y = 311.450, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 7 },
	{ config_id = 53011, monster_id = 20011301, pos = { x = -231.321, y = 398.368, z = 529.401 }, rot = { x = 0.000, y = 201.385, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 7 },
	{ config_id = 53012, monster_id = 20011301, pos = { x = -235.119, y = 398.499, z = 526.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53001, gadget_id = 70310011, pos = { x = -257.341, y = 373.576, z = 551.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 53002, gadget_id = 70310011, pos = { x = -242.014, y = 386.399, z = 540.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 53003, gadget_id = 70310011, pos = { x = -252.648, y = 382.091, z = 537.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 53004, gadget_id = 70211111, pos = { x = -232.656, y = 399.155, z = 526.945 }, rot = { x = 31.604, y = 319.453, z = 356.394 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 53008, gadget_id = 70310011, pos = { x = -238.186, y = 394.614, z = 529.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1053005, name = "GADGET_STATE_CHANGE_53005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53005", action = "action_EVENT_GADGET_STATE_CHANGE_53005", trigger_count = 0 },
	{ config_id = 1053006, name = "GADGET_STATE_CHANGE_53006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_53006" },
	{ config_id = 1053007, name = "GADGET_CREATE_53007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53007", action = "action_EVENT_GADGET_CREATE_53007" },
	{ config_id = 1053009, name = "GADGET_STATE_CHANGE_53009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53009", action = "action_EVENT_GADGET_STATE_CHANGE_53009" }
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
		gadgets = { 53001, 53002, 53003, 53008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53005", "GADGET_STATE_CHANGE_53006", "GADGET_CREATE_53007", "GADGET_STATE_CHANGE_53009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53009(context, evt)
	if 53008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end