-- 基础信息
local base_info = {
	group_id = 133001308
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1328, monster_id = 21010101, pos = { x = 1979.156, y = 214.619, z = -1465.992 }, rot = { x = 0.000, y = 241.310, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1330, monster_id = 21010501, pos = { x = 1987.103, y = 220.147, z = -1463.415 }, rot = { x = 0.000, y = 335.154, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 1 },
	{ config_id = 1331, monster_id = 21010601, pos = { x = 1996.468, y = 221.565, z = -1490.072 }, rot = { x = 0.000, y = 54.149, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1332, monster_id = 21010501, pos = { x = 1987.281, y = 226.635, z = -1494.106 }, rot = { x = 0.000, y = 339.641, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 1 },
	{ config_id = 1333, monster_id = 21020201, pos = { x = 1981.491, y = 215.874, z = -1477.030 }, rot = { x = 0.000, y = 5.114, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 1 },
	{ config_id = 1334, monster_id = 21030301, pos = { x = 2000.262, y = 221.371, z = -1516.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 1 },
	{ config_id = 1335, monster_id = 21010701, pos = { x = 1998.634, y = 221.440, z = -1512.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1336, monster_id = 21010701, pos = { x = 2002.388, y = 221.388, z = -1509.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1337, monster_id = 21020101, pos = { x = 1964.595, y = 205.020, z = -1430.147 }, rot = { x = 0.000, y = 133.715, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 2 },
	{ config_id = 1338, monster_id = 21030101, pos = { x = 1960.254, y = 203.837, z = -1427.664 }, rot = { x = 0.000, y = 127.790, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3249, gadget_id = 70300090, pos = { x = 1987.363, y = 214.463, z = -1464.125 }, rot = { x = 0.000, y = 338.552, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 3250, gadget_id = 70300101, pos = { x = 1977.483, y = 214.375, z = -1468.094 }, rot = { x = 0.000, y = 336.478, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 3251, gadget_id = 70300101, pos = { x = 1999.029, y = 221.186, z = -1490.033 }, rot = { x = 0.000, y = 336.478, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 3252, gadget_id = 70300090, pos = { x = 1987.705, y = 221.141, z = -1495.167 }, rot = { x = 0.000, y = 337.385, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 3256, gadget_id = 70310001, pos = { x = 2005.533, y = 221.754, z = -1484.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3258, gadget_id = 70310001, pos = { x = 1980.097, y = 221.573, z = -1494.821 }, rot = { x = 0.000, y = 316.473, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000473, name = "GADGET_CREATE_473", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_473", action = "action_EVENT_GADGET_CREATE_473" },
	{ config_id = 1000474, name = "GADGET_CREATE_474", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_474", action = "action_EVENT_GADGET_CREATE_474" },
	{ config_id = 1000475, name = "SPECIFIC_GADGET_HP_CHANGE_475", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3250", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_475", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_475" },
	{ config_id = 1000476, name = "SPECIFIC_GADGET_HP_CHANGE_476", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3251", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_476", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_476" }
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
		monsters = { 1328, 1330, 1331, 1332, 1333 },
		gadgets = { 3249, 3250, 3251, 3252, 3256, 3258 },
		regions = { },
		triggers = { "GADGET_CREATE_473", "GADGET_CREATE_474", "SPECIFIC_GADGET_HP_CHANGE_475", "SPECIFIC_GADGET_HP_CHANGE_476" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_473(context, evt)
	if 3249 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_473(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1330, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_474(context, evt)
	if 3252 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_474(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1332, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_475(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_475(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1976, y=245, z=-1467}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1976,y=245,z=-1467}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1337, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1338, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_476(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_476(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1997, y=245, z=-1490}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1997,y=245,z=-1490}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1335, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1336, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1334, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end