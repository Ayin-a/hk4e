-- 基础信息
local base_info = {
	group_id = 201011049
}

-- Trigger变量
local defs = {
	gadget_id_1 = 49009,
	gadget_id_2 = 49010,
	gadget_id_3 = 49011,
	gadget_id_4 = 49012,
	gadget_id_5 = 49013,
	gadget_id_6 = 49014,
	monster_id_1 = 250,
	monster_id_2 = 251,
	monster_id_3 = 252,
	monster_id_4 = 253,
	gadget_id_7 = 49008,
	gadget_id_8 = 7096,
	gadget_id_9 = 258,
	gadget_id_10 = 260,
	gadget_id_11 = 261,
	gadget_id_12 = 259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49001, monster_id = 20011301, pos = { x = -127.520, y = 0.800, z = -142.228 }, rot = { x = 0.000, y = 88.153, z = 0.000 }, level = 7, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 49002, monster_id = 20011201, pos = { x = -126.837, y = 0.800, z = -138.637 }, rot = { x = 0.000, y = 95.244, z = 0.000 }, level = 7, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 49003, monster_id = 20011201, pos = { x = -126.268, y = 0.800, z = -145.457 }, rot = { x = 0.000, y = 62.030, z = 0.000 }, level = 7, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 49004, monster_id = 20011201, pos = { x = -124.701, y = 0.800, z = -142.059 }, rot = { x = 0.000, y = 83.321, z = 0.000 }, level = 7, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 49005, monster_id = 21010501, pos = { x = -125.639, y = 0.800, z = -132.562 }, rot = { x = 0.000, y = 126.815, z = 0.000 }, level = 7, disableWander = true, affix = { 1010, 1019 }, pose_id = 32 },
	{ config_id = 49006, monster_id = 21010501, pos = { x = -125.345, y = 0.800, z = -152.667 }, rot = { x = 0.000, y = 40.273, z = 0.000 }, level = 7, disableWander = true, affix = { 1010, 1019 }, pose_id = 32 },
	{ config_id = 49007, monster_id = 21010501, pos = { x = -134.315, y = 0.800, z = -143.035 }, rot = { x = 0.000, y = 89.455, z = 0.000 }, level = 7, disableWander = true, affix = { 1010, 1019 }, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 49008, gadget_id = 70360002, pos = { x = -99.843, y = 0.800, z = -141.164 }, rot = { x = 0.000, y = 88.149, z = 0.000 }, level = 1 },
	{ config_id = 49009, gadget_id = 70350006, pos = { x = -92.036, y = 1.334, z = -139.820 }, rot = { x = 0.000, y = 271.444, z = 0.000 }, level = 1 },
	{ config_id = 49010, gadget_id = 70350006, pos = { x = -92.043, y = 1.331, z = -133.880 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 49011, gadget_id = 70350006, pos = { x = -92.017, y = 1.336, z = -127.990 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 49012, gadget_id = 70350006, pos = { x = -151.279, y = 1.463, z = -139.845 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 49013, gadget_id = 70350006, pos = { x = -151.297, y = 0.800, z = -133.916 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 49014, gadget_id = 70350006, pos = { x = -151.290, y = 0.800, z = -127.978 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 49015, gadget_id = 70220021, pos = { x = -130.521, y = -0.906, z = -158.466 }, rot = { x = 0.000, y = 132.836, z = 0.000 }, level = 1 },
	{ config_id = 49016, gadget_id = 70220021, pos = { x = -140.141, y = -0.997, z = -152.149 }, rot = { x = 359.616, y = 49.736, z = 3.169 }, level = 1 },
	{ config_id = 49017, gadget_id = 70220021, pos = { x = -135.749, y = -2.316, z = -132.582 }, rot = { x = 3.148, y = 322.323, z = 0.526 }, level = 1 },
	{ config_id = 49018, gadget_id = 70220021, pos = { x = -126.085, y = -0.874, z = -121.576 }, rot = { x = 1.137, y = 325.199, z = 253.949 }, level = 1 },
	{ config_id = 49019, gadget_id = 70220021, pos = { x = -118.684, y = -1.324, z = -163.509 }, rot = { x = 1.137, y = 325.199, z = 253.949 }, level = 1 },
	{ config_id = 49020, gadget_id = 70220021, pos = { x = -115.742, y = -2.564, z = -124.982 }, rot = { x = 1.137, y = 325.199, z = 352.929 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000141, name = "GADGET_CREATE_141", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_141", action = "action_EVENT_GADGET_CREATE_141" },
	{ config_id = 1000142, name = "SELECT_OPTION_142", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_142", action = "action_EVENT_SELECT_OPTION_142", forbid_guest = false },
	{ config_id = 1000162, name = "ANY_MONSTER_DIE_162", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162", action = "action_EVENT_ANY_MONSTER_DIE_162", trigger_count = 0 },
	{ config_id = 1000163, name = "ANY_MONSTER_DIE_163", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163", action = "action_EVENT_ANY_MONSTER_DIE_163", trigger_count = 0 },
	{ config_id = 1000164, name = "ANY_MONSTER_DIE_164", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164", action = "action_EVENT_ANY_MONSTER_DIE_164", trigger_count = 0 },
	{ config_id = 1000165, name = "ANY_MONSTER_DIE_165", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_165", action = "action_EVENT_ANY_MONSTER_DIE_165" },
	{ config_id = 1000166, name = "ANY_MONSTER_DIE_166", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_166", action = "action_EVENT_ANY_MONSTER_DIE_166", trigger_count = 0 },
	{ config_id = 1000167, name = "ANY_MONSTER_DIE_167", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167", action = "action_EVENT_ANY_MONSTER_DIE_167", trigger_count = 0 },
	{ config_id = 1000168, name = "ANY_MONSTER_DIE_168", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168", action = "action_EVENT_ANY_MONSTER_DIE_168", trigger_count = 0 }
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
		gadgets = { 49008, 49015, 49016, 49017, 49018, 49019, 49020 },
		regions = { },
		triggers = { "GADGET_CREATE_141", "SELECT_OPTION_142", "ANY_MONSTER_DIE_162", "ANY_MONSTER_DIE_163", "ANY_MONSTER_DIE_164", "ANY_MONSTER_DIE_165", "ANY_MONSTER_DIE_166", "ANY_MONSTER_DIE_167", "ANY_MONSTER_DIE_168" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_141(context, evt)
	if 49008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_141(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {105}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_142(context, evt)
	if 49008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_142(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49006, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49007, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001, 60, 201011049, 275, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162(context, evt)
	if 49003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163(context, evt)
	if 49002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_163(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164(context, evt)
	if 49004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_165(context, evt)
	if 49001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_165(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011049, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_166(context, evt)
	if 49005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_166(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167(context, evt)
	if 49006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168(context, evt)
	if 49007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end