-- 基础信息
local base_info = {
	group_id = 133103306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 306001, monster_id = 21011201, pos = { x = 709.539, y = 391.169, z = 1906.294 }, rot = { x = 5.593, y = 73.781, z = 4.287 }, level = 24, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 306002, monster_id = 28020301, pos = { x = 709.706, y = 391.300, z = 1906.142 }, rot = { x = 5.593, y = 73.781, z = 4.287 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 306003, monster_id = 28020102, pos = { x = 709.702, y = 391.312, z = 1906.190 }, rot = { x = 5.593, y = 73.781, z = 4.287 }, level = 24, drop_tag = "走兽", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 306004, gadget_id = 70360045, pos = { x = 709.385, y = 390.724, z = 1906.331 }, rot = { x = 5.593, y = 73.781, z = 4.287 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 306005, gadget_id = 70211101, pos = { x = 709.616, y = 391.223, z = 1906.309 }, rot = { x = 5.593, y = 73.781, z = 4.287 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1306006, name = "GADGET_STATE_CHANGE_306006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_306006", action = "action_EVENT_GADGET_STATE_CHANGE_306006", trigger_count = 0 },
	{ config_id = 1306007, name = "GADGET_STATE_CHANGE_306007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_306007", action = "action_EVENT_GADGET_STATE_CHANGE_306007" },
	{ config_id = 1306008, name = "GADGET_STATE_CHANGE_306008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_306008", action = "action_EVENT_GADGET_STATE_CHANGE_306008" }
}

-- 变量
variables = {
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
	rand_suite = true
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
		gadgets = { 306004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_306006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 306004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_306007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 306004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_306008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_306006(context, evt)
	if 306004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_306006(context, evt)
	-- 创建id为306005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 306005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 306003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_306007(context, evt)
	if 306004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_306007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 306001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_306008(context, evt)
	if 306004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_306008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 306002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end