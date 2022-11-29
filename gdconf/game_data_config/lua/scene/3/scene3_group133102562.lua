-- 基础信息
local base_info = {
	group_id = 133102562
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 562001, monster_id = 21020201, pos = { x = 1173.058, y = 201.575, z = 493.380 }, rot = { x = 353.913, y = 126.194, z = 354.791 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 562002, monster_id = 21010101, pos = { x = 1187.379, y = 201.142, z = 485.962 }, rot = { x = 6.101, y = 42.696, z = 356.312 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 5 },
	{ config_id = 562003, monster_id = 21010901, pos = { x = 1178.635, y = 202.290, z = 501.947 }, rot = { x = 355.921, y = 162.934, z = 357.970 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 562004, monster_id = 21020101, pos = { x = 1196.911, y = 198.068, z = 513.571 }, rot = { x = 356.798, y = 215.023, z = 0.383 }, level = 1, drop_tag = "丘丘暴徒", area_id = 5 },
	{ config_id = 562005, monster_id = 21010601, pos = { x = 1195.632, y = 198.116, z = 512.659 }, rot = { x = 0.895, y = 188.149, z = -0.003 }, level = 1, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 562006, monster_id = 21010601, pos = { x = 1198.164, y = 198.591, z = 512.349 }, rot = { x = 349.206, y = 187.431, z = 347.284 }, level = 1, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 562008, monster_id = 21010101, pos = { x = 1176.410, y = 200.988, z = 489.612 }, rot = { x = 6.101, y = 217.211, z = 356.312 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 562007, gadget_id = 70300078, pos = { x = 1206.817, y = 200.271, z = 497.132 }, rot = { x = 352.938, y = 261.931, z = 7.242 }, level = 1, area_id = 5 },
	{ config_id = 562009, gadget_id = 70300101, pos = { x = 1188.936, y = 200.747, z = 488.174 }, rot = { x = 359.527, y = 262.414, z = 356.455 }, level = 1, area_id = 5 },
	{ config_id = 562010, gadget_id = 70300101, pos = { x = 1174.897, y = 200.603, z = 487.200 }, rot = { x = 0.340, y = 262.720, z = 2.662 }, level = 1, area_id = 5 },
	{ config_id = 562011, gadget_id = 70300086, pos = { x = 1188.864, y = 201.066, z = 488.261 }, rot = { x = 357.454, y = 262.594, z = 1.233 }, level = 1, area_id = 5 },
	{ config_id = 562012, gadget_id = 70300086, pos = { x = 1176.503, y = 200.651, z = 484.306 }, rot = { x = 51.838, y = 316.533, z = 63.441 }, level = 1, area_id = 5 },
	{ config_id = 562013, gadget_id = 70300084, pos = { x = 1222.967, y = 200.132, z = 514.645 }, rot = { x = 0.925, y = 343.988, z = 1.066 }, level = 1, area_id = 5 },
	{ config_id = 562014, gadget_id = 70300084, pos = { x = 1165.310, y = 200.565, z = 488.010 }, rot = { x = 358.786, y = 175.166, z = 355.453 }, level = 1, area_id = 5 },
	{ config_id = 562015, gadget_id = 70300084, pos = { x = 1179.070, y = 200.372, z = 479.694 }, rot = { x = 2.854, y = 86.031, z = 356.807 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1562016, name = "SPECIFIC_GADGET_HP_CHANGE_562016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "562009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_562016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_562016" },
	{ config_id = 1562017, name = "SPECIFIC_GADGET_HP_CHANGE_562017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "562010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_562017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_562017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ison", value = 0, no_refresh = false }
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
		monsters = { 562001, 562002, 562003, 562008 },
		gadgets = { 562007, 562009, 562010, 562011, 562012, 562013, 562014, 562015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_562016", "SPECIFIC_GADGET_HP_CHANGE_562017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_562016(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_562016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1188, y=200, z=488}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1188,y=200,z=488}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_562017(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_562017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1194, y=200, z=497}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1194,y=200,z=497}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end