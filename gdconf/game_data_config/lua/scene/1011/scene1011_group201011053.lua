-- 基础信息
local base_info = {
	group_id = 201011053
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 267, monster_id = 21010501, pos = { x = 116.294, y = 2.264, z = -126.453 }, rot = { x = 0.000, y = 271.562, z = 0.000 }, level = 7, affix = { 1011 }, isElite = true, pose_id = 32 },
	{ config_id = 268, monster_id = 21010501, pos = { x = 116.361, y = 2.350, z = -128.526 }, rot = { x = 0.000, y = 271.562, z = 0.000 }, level = 7, affix = { 1011 }, isElite = true, pose_id = 32 },
	{ config_id = 269, monster_id = 21010501, pos = { x = 116.346, y = 2.350, z = -130.596 }, rot = { x = 0.000, y = 271.562, z = 0.000 }, level = 7, affix = { 1011 }, isElite = true, pose_id = 32 },
	{ config_id = 270, monster_id = 21010501, pos = { x = 116.252, y = 2.350, z = -132.818 }, rot = { x = 0.000, y = 271.562, z = 0.000 }, level = 7, affix = { 1011 }, isElite = true, pose_id = 32 },
	{ config_id = 271, monster_id = 21010501, pos = { x = 116.204, y = 2.350, z = -135.117 }, rot = { x = 0.000, y = 271.562, z = 0.000 }, level = 7, affix = { 1011 }, isElite = true, pose_id = 32 },
	{ config_id = 272, monster_id = 21010501, pos = { x = 116.220, y = 2.350, z = -137.226 }, rot = { x = 0.000, y = 271.562, z = 0.000 }, level = 7, affix = { 1011 }, isElite = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 289, gadget_id = 70220019, pos = { x = 116.403, y = -4.256, z = -126.454 }, rot = { x = 0.000, y = 359.641, z = 0.000 }, level = 1 },
	{ config_id = 290, gadget_id = 70220019, pos = { x = 116.410, y = -4.170, z = -128.661 }, rot = { x = 0.000, y = 359.641, z = 0.000 }, level = 1 },
	{ config_id = 291, gadget_id = 70220019, pos = { x = 116.410, y = -4.170, z = -130.812 }, rot = { x = 0.000, y = 359.641, z = 0.000 }, level = 1 },
	{ config_id = 292, gadget_id = 70220019, pos = { x = 116.377, y = -4.170, z = -133.017 }, rot = { x = 0.000, y = 359.641, z = 0.000 }, level = 1 },
	{ config_id = 293, gadget_id = 70220019, pos = { x = 116.286, y = -4.170, z = -135.216 }, rot = { x = 0.000, y = 359.641, z = 0.000 }, level = 1 },
	{ config_id = 294, gadget_id = 70220019, pos = { x = 116.335, y = -4.170, z = -137.395 }, rot = { x = 0.000, y = 359.641, z = 0.000 }, level = 1 },
	{ config_id = 295, gadget_id = 70360002, pos = { x = 98.025, y = 0.800, z = -127.857 }, rot = { x = 0.000, y = 271.721, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000160, name = "GADGET_CREATE_160", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_160", action = "action_EVENT_GADGET_CREATE_160" },
	{ config_id = 1000161, name = "SELECT_OPTION_161", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_161", action = "action_EVENT_SELECT_OPTION_161", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 289, 290, 291, 292, 293, 294, 295 },
		regions = { },
		triggers = { "GADGET_CREATE_160", "SELECT_OPTION_161" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_160(context, evt)
	if 295 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_160(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {105}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_161(context, evt)
	if 295 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_161(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 267, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 269, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 270, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 271, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 272, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end