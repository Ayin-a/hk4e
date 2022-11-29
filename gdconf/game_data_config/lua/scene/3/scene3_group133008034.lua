-- 基础信息
local base_info = {
	group_id = 133008034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 28020305, pos = { x = 1028.999, y = 316.805, z = -1129.648 }, rot = { x = 0.000, y = 265.144, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 34004, monster_id = 28020304, pos = { x = 995.835, y = 316.473, z = -1110.490 }, rot = { x = 0.000, y = 159.618, z = 0.000 }, level = 30, drop_id = 1050112, disableWander = true, title_id = 10003, special_name_id = 10019, climate_area_id = 1, area_id = 10 },
	{ config_id = 34005, monster_id = 28020305, pos = { x = 1008.785, y = 316.173, z = -1131.847 }, rot = { x = 0.000, y = 78.959, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 34007, monster_id = 28020305, pos = { x = 1021.271, y = 316.115, z = -1122.678 }, rot = { x = 0.000, y = 76.323, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34009, gadget_id = 70211147, pos = { x = 1000.064, y = 316.012, z = -1119.255 }, rot = { x = 0.000, y = 143.763, z = 0.000 }, level = 26, drop_tag = "雪山玉髓超级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034002, name = "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_34002", event = EventType.EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR, source = "", condition = "condition_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_34002", action = "action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_34002" },
	{ config_id = 1034003, name = "ANY_MONSTER_DIE_34003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34003", action = "action_EVENT_ANY_MONSTER_DIE_34003" },
	{ config_id = 1034006, name = "ANY_MONSTER_DIE_34006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34006", action = "action_EVENT_ANY_MONSTER_DIE_34006", trigger_count = 0 },
	{ config_id = 1034011, name = "VARIABLE_CHANGE_34011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34011", action = "action_EVENT_VARIABLE_CHANGE_34011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "kill", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 34012, monster_id = 28020308, pos = { x = 1028.999, y = 316.805, z = -1129.648 }, rot = { x = 0.000, y = 265.144, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
		{ config_id = 34013, monster_id = 28020308, pos = { x = 1008.785, y = 316.173, z = -1131.847 }, rot = { x = 0.000, y = 78.959, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
		{ config_id = 34014, monster_id = 28020308, pos = { x = 1021.271, y = 316.115, z = -1122.678 }, rot = { x = 0.000, y = 76.323, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
	}
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
		monsters = { 34001, 34005, 34007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_34002", "ANY_MONSTER_DIE_34003", "ANY_MONSTER_DIE_34006", "VARIABLE_CHANGE_34011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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
function condition_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_34002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_34002(context, evt)
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "kill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34003(context, evt)
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "kill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34006(context, evt)
	--判断死亡怪物的configid是否为 34004
	if evt.param1 ~= 34004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34006(context, evt)
	-- 创建id为34009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 34009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"kill"为1
	if ScriptLib.GetGroupVariableValue(context, "kill") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 34004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 30080301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end