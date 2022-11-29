-- 基础信息
local base_info = {
	group_id = 133103303
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 303001, monster_id = 21011201, pos = { x = 765.315, y = 318.263, z = 1791.112 }, rot = { x = 356.167, y = 321.696, z = 8.831 }, level = 24, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 303002, monster_id = 28020301, pos = { x = 765.399, y = 318.426, z = 1791.297 }, rot = { x = 356.167, y = 321.696, z = 8.831 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 303003, monster_id = 28020102, pos = { x = 765.356, y = 318.436, z = 1791.273 }, rot = { x = 356.167, y = 321.696, z = 8.831 }, level = 24, drop_tag = "走兽", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 303004, gadget_id = 70360045, pos = { x = 765.321, y = 317.796, z = 1791.035 }, rot = { x = 356.167, y = 321.696, z = 8.831 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 303005, gadget_id = 70211101, pos = { x = 765.275, y = 318.329, z = 1791.166 }, rot = { x = 356.167, y = 321.696, z = 8.831 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1303006, name = "GADGET_STATE_CHANGE_303006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303006", action = "action_EVENT_GADGET_STATE_CHANGE_303006", trigger_count = 0 },
	{ config_id = 1303007, name = "GADGET_STATE_CHANGE_303007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303007", action = "action_EVENT_GADGET_STATE_CHANGE_303007" },
	{ config_id = 1303008, name = "GADGET_STATE_CHANGE_303008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303008", action = "action_EVENT_GADGET_STATE_CHANGE_303008" }
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
		gadgets = { 303004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_303006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 303004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_303007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 303004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_303008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303006(context, evt)
	if 303004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303006(context, evt)
	-- 创建id为303005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 303005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 303003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303007(context, evt)
	if 303004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 303001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303008(context, evt)
	if 303004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 303002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end