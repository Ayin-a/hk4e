-- 基础信息
local base_info = {
	group_id = 133003300
}

-- Trigger变量
local defs = {
	gadget_id_1 = 980,
	gadget_id_2 = 981,
	gadget_id_3 = 982,
	gadget_id_4 = 983
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 980, monster_id = 20011001, pos = { x = 2405.939, y = 208.425, z = -1184.132 }, rot = { x = 0.000, y = 102.278, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 981, monster_id = 20011001, pos = { x = 2408.413, y = 208.744, z = -1190.185 }, rot = { x = 0.000, y = 40.141, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 982, monster_id = 20011001, pos = { x = 2413.510, y = 208.216, z = -1188.724 }, rot = { x = 0.000, y = 285.571, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 983, monster_id = 20011001, pos = { x = 2412.172, y = 208.078, z = -1182.780 }, rot = { x = 0.000, y = 192.262, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3206, gadget_id = 70211101, pos = { x = 2410.182, y = 208.353, z = -1186.463 }, rot = { x = 347.544, y = 122.991, z = 358.318 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3207, gadget_id = 70500000, pos = { x = 2407.583, y = 208.399, z = -1184.587 }, rot = { x = 0.000, y = 178.580, z = 0.000 }, level = 2, point_type = 2003, isOneoff = true, area_id = 1 },
	{ config_id = 3208, gadget_id = 70500000, pos = { x = 2408.737, y = 208.610, z = -1188.921 }, rot = { x = 0.000, y = 103.917, z = 0.000 }, level = 2, point_type = 2003, isOneoff = true, area_id = 1 },
	{ config_id = 3209, gadget_id = 70500000, pos = { x = 2412.353, y = 208.303, z = -1188.012 }, rot = { x = 0.000, y = 24.245, z = 0.000 }, level = 2, point_type = 2003, isOneoff = true, area_id = 1 },
	{ config_id = 3210, gadget_id = 70500000, pos = { x = 2411.470, y = 208.307, z = -1184.212 }, rot = { x = 0.000, y = 299.286, z = 0.000 }, level = 2, point_type = 2003, isOneoff = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000218, name = "GATHER_218", event = EventType.EVENT_GATHER, source = "3207", condition = "", action = "action_EVENT_GATHER_218" },
	{ config_id = 1000219, name = "GATHER_219", event = EventType.EVENT_GATHER, source = "3208", condition = "", action = "action_EVENT_GATHER_219" },
	{ config_id = 1000220, name = "GATHER_220", event = EventType.EVENT_GATHER, source = "3209", condition = "", action = "action_EVENT_GATHER_220" },
	{ config_id = 1000221, name = "GATHER_221", event = EventType.EVENT_GATHER, source = "3210", condition = "", action = "action_EVENT_GATHER_221" },
	{ config_id = 1000222, name = "ANY_MONSTER_DIE_222", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_222", action = "action_EVENT_ANY_MONSTER_DIE_222", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "v980", value = 0, no_refresh = true },
	{ config_id = 2, name = "v981", value = 0, no_refresh = true },
	{ config_id = 3, name = "v982", value = 0, no_refresh = true },
	{ config_id = 4, name = "v983", value = 0, no_refresh = true }
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
		gadgets = { 3207, 3208, 3209, 3210 },
		regions = { },
		triggers = { "GATHER_218", "GATHER_219", "GATHER_220", "GATHER_221", "ANY_MONSTER_DIE_222" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_218(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 980, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_219(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 981, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_220(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 982, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_221(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 983, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_222(context, evt)
	if defs.gadget_id_1 == evt.param1 then
		-- 将本组内变量名为 "v980" 的变量设置为 1
	 
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "v980", 1) then
	    return -1
	  end
	
	end
	
	if defs.gadget_id_2 == evt.param1 then
		-- 将本组内变量名为 "v981" 的变量设置为 1
	 
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "v981", 1) then
	    return -1
	  end
	
	end
	
	if defs.gadget_id_3 == evt.param1 then
		-- 将本组内变量名为 "v982" 的变量设置为 1
	 
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "v982", 1) then
	    return -1
	  end
	
	end
	
	if defs.gadget_id_4 == evt.param1 then
		-- 将本组内变量名为 "v983" 的变量设置为 1
	 
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "v983", 1) then
	    return -1
	  end
	
	end
	
	-- 获取本组内变量名为 "v980" 的变量值
	if ScriptLib.GetGroupVariableValue(context, "v980") + ScriptLib.GetGroupVariableValue(context, "v981") + ScriptLib.GetGroupVariableValue(context, "v982") + ScriptLib.GetGroupVariableValue(context, "v983") == 4  then
	  
	return true
	
	end
	
	
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_222(context, evt)
	-- 创建id为3206的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3206 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end