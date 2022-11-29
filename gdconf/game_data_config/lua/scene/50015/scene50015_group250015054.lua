-- 基础信息
local base_info = {
	group_id = 250015054
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 54001, monster_id = 21020201, pos = { x = 419.059, y = 0.500, z = 74.424 }, rot = { x = 0.000, y = 317.762, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 54002, monster_id = 21010101, pos = { x = 416.922, y = 0.500, z = 82.233 }, rot = { x = 0.000, y = 66.516, z = 0.000 }, level = 1, disableWander = true, pose_id = 9011 },
	{ config_id = 54003, monster_id = 21010901, pos = { x = 414.151, y = 0.500, z = 86.238 }, rot = { x = 0.000, y = 225.207, z = 0.000 }, level = 1 },
	{ config_id = 54004, monster_id = 21020101, pos = { x = 404.563, y = 0.500, z = 74.085 }, rot = { x = 0.000, y = 56.900, z = 0.000 }, level = 1 },
	{ config_id = 54005, monster_id = 21010601, pos = { x = 407.770, y = 0.500, z = 80.674 }, rot = { x = 0.000, y = 97.188, z = 0.000 }, level = 1 },
	{ config_id = 54006, monster_id = 21010601, pos = { x = 410.246, y = 0.500, z = 71.465 }, rot = { x = 0.000, y = 26.561, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 54007, gadget_id = 70300078, pos = { x = 423.614, y = 0.500, z = 78.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54008, gadget_id = 70300090, pos = { x = 414.291, y = 0.500, z = 86.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54009, gadget_id = 70300101, pos = { x = 413.987, y = 0.500, z = 70.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54010, gadget_id = 70300101, pos = { x = 406.827, y = 0.500, z = 84.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54011, gadget_id = 70300086, pos = { x = 420.001, y = 0.500, z = 71.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54012, gadget_id = 70300086, pos = { x = 420.160, y = 0.500, z = 81.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54013, gadget_id = 70300084, pos = { x = 423.723, y = 0.500, z = 67.790 }, rot = { x = 0.000, y = 64.988, z = 0.000 }, level = 1 },
	{ config_id = 54014, gadget_id = 70300084, pos = { x = 409.474, y = 0.500, z = 93.208 }, rot = { x = 0.000, y = 252.761, z = 0.000 }, level = 1 },
	{ config_id = 54015, gadget_id = 70300084, pos = { x = 425.428, y = 0.500, z = 86.760 }, rot = { x = 0.000, y = 332.768, z = 0.000 }, level = 1 },
	{ config_id = 54018, gadget_id = 70300101, pos = { x = 420.750, y = 0.500, z = 84.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1054016, name = "SPECIFIC_GADGET_HP_CHANGE_54016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "54009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_54016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_54016" },
	{ config_id = 1054017, name = "SPECIFIC_GADGET_HP_CHANGE_54017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "54010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_54017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_54017" },
	{ config_id = 1054019, name = "SPECIFIC_GADGET_HP_CHANGE_54019", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "54018", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_54019", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_54019" }
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
		monsters = { 54001, 54002, 54003 },
		gadgets = { 54007, 54008, 54009, 54010, 54011, 54012, 54013, 54014, 54015, 54018 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_54016", "SPECIFIC_GADGET_HP_CHANGE_54017", "SPECIFIC_GADGET_HP_CHANGE_54019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_54016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_54016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54006, delay_time = 2 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_54017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_54017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54006, delay_time = 2 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_54019(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_54019(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54006, delay_time = 2 }) then
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