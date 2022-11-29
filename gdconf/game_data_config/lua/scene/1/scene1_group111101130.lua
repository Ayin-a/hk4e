-- 基础信息
local base_info = {
	group_id = 111101130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130001, monster_id = 21011201, pos = { x = 2698.552, y = 280.903, z = -1474.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘人" },
	{ config_id = 130002, monster_id = 28020301, pos = { x = 2698.755, y = 281.030, z = -1473.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "走兽" },
	{ config_id = 130003, monster_id = 28020102, pos = { x = 2698.708, y = 281.047, z = -1473.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130004, gadget_id = 70360045, pos = { x = 2698.439, y = 280.454, z = -1474.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24 },
	{ config_id = 130005, gadget_id = 70211101, pos = { x = 2698.563, y = 280.964, z = -1473.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1130006, name = "GADGET_STATE_CHANGE_130006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130006", action = "action_EVENT_GADGET_STATE_CHANGE_130006", trigger_count = 0 },
	{ config_id = 1130007, name = "GADGET_STATE_CHANGE_130007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130007", action = "action_EVENT_GADGET_STATE_CHANGE_130007" },
	{ config_id = 1130008, name = "GADGET_STATE_CHANGE_130008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130008", action = "action_EVENT_GADGET_STATE_CHANGE_130008" }
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
		gadgets = { 130004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_130006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 130004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_130007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 130004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_130008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130006(context, evt)
	if 130004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130006(context, evt)
	-- 创建id为130005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130007(context, evt)
	if 130004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130008(context, evt)
	if 130004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end