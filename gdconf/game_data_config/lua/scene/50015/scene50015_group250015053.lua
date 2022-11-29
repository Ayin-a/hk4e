-- 基础信息
local base_info = {
	group_id = 250015053
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53001, monster_id = 21020201, pos = { x = 415.668, y = 0.500, z = 120.475 }, rot = { x = 0.000, y = 317.762, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 53002, monster_id = 21010101, pos = { x = 413.532, y = 0.500, z = 128.285 }, rot = { x = 0.000, y = 66.516, z = 0.000 }, level = 1, disableWander = true, pose_id = 9011 },
	{ config_id = 53003, monster_id = 21010901, pos = { x = 410.760, y = 0.500, z = 132.290 }, rot = { x = 0.000, y = 225.207, z = 0.000 }, level = 1 },
	{ config_id = 53004, monster_id = 21020101, pos = { x = 401.172, y = 0.500, z = 120.137 }, rot = { x = 0.000, y = 56.900, z = 0.000 }, level = 1 },
	{ config_id = 53005, monster_id = 21010601, pos = { x = 404.380, y = 0.500, z = 126.725 }, rot = { x = 0.000, y = 97.188, z = 0.000 }, level = 1 },
	{ config_id = 53006, monster_id = 21010601, pos = { x = 406.856, y = 0.500, z = 117.517 }, rot = { x = 0.000, y = 26.561, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53007, gadget_id = 70300078, pos = { x = 420.223, y = 0.500, z = 124.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53008, gadget_id = 70300090, pos = { x = 410.901, y = 0.500, z = 132.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53009, gadget_id = 70300101, pos = { x = 411.440, y = 0.500, z = 122.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53010, gadget_id = 70300101, pos = { x = 417.360, y = 0.500, z = 130.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53011, gadget_id = 70300086, pos = { x = 416.610, y = 0.500, z = 118.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53012, gadget_id = 70300086, pos = { x = 416.769, y = 0.500, z = 127.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53013, gadget_id = 70300084, pos = { x = 418.459, y = 0.500, z = 114.750 }, rot = { x = 0.000, y = 64.988, z = 0.000 }, level = 1 },
	{ config_id = 53014, gadget_id = 70300084, pos = { x = 407.993, y = 0.500, z = 136.157 }, rot = { x = 0.000, y = 252.761, z = 0.000 }, level = 1 },
	{ config_id = 53015, gadget_id = 70300084, pos = { x = 422.038, y = 0.500, z = 132.811 }, rot = { x = 0.000, y = 332.768, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1053016, name = "SPECIFIC_GADGET_HP_CHANGE_53016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "53006", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_53016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_53016" },
	{ config_id = 1053017, name = "SPECIFIC_GADGET_HP_CHANGE_53017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "53007", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_53017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_53017" }
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
		monsters = { 53001, 53002, 53003 },
		gadgets = { 53007, 53008, 53009, 53010, 53011, 53012 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_53016", "SPECIFIC_GADGET_HP_CHANGE_53017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_53016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_53016(context, evt)
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
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53006, delay_time = 2 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_53017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_53017(context, evt)
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
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 53006, delay_time = 2 }) then
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