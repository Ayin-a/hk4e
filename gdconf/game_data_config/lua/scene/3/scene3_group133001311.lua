-- 基础信息
local base_info = {
	group_id = 133001311
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1360, monster_id = 21020201, pos = { x = 1611.838, y = 251.640, z = -1342.985 }, rot = { x = 0.000, y = 105.206, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 2 },
	{ config_id = 1362, monster_id = 21010601, pos = { x = 1622.241, y = 251.521, z = -1358.966 }, rot = { x = 0.000, y = 287.553, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1363, monster_id = 21010601, pos = { x = 1625.335, y = 248.040, z = -1329.642 }, rot = { x = 0.000, y = 344.657, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1365, monster_id = 21010501, pos = { x = 1632.439, y = 258.960, z = -1344.535 }, rot = { x = 0.000, y = 183.412, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 2 },
	{ config_id = 1366, monster_id = 21010301, pos = { x = 1632.888, y = 252.805, z = -1370.416 }, rot = { x = 0.000, y = 329.030, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1367, monster_id = 21010301, pos = { x = 1637.591, y = 252.992, z = -1369.859 }, rot = { x = 0.000, y = 329.030, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1368, monster_id = 21030101, pos = { x = 1633.415, y = 252.984, z = -1374.471 }, rot = { x = 0.000, y = 329.030, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 2 },
	{ config_id = 1369, monster_id = 21020101, pos = { x = 1642.353, y = 245.704, z = -1313.508 }, rot = { x = 0.000, y = 210.271, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 2 },
	{ config_id = 1370, monster_id = 21010901, pos = { x = 1642.427, y = 245.858, z = -1308.891 }, rot = { x = 0.000, y = 186.782, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3269, gadget_id = 70300090, pos = { x = 1633.549, y = 253.466, z = -1343.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3270, gadget_id = 70300101, pos = { x = 1619.679, y = 250.979, z = -1357.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3271, gadget_id = 70300101, pos = { x = 1623.762, y = 247.778, z = -1327.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3273, gadget_id = 70300086, pos = { x = 1623.698, y = 248.265, z = -1325.655 }, rot = { x = 69.497, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3274, gadget_id = 70300086, pos = { x = 1625.597, y = 251.585, z = -1359.064 }, rot = { x = 343.942, y = 331.988, z = 67.925 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000482, name = "SPECIFIC_GADGET_HP_CHANGE_482", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3270", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_482", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_482" },
	{ config_id = 1000483, name = "SPECIFIC_GADGET_HP_CHANGE_483", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3271", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_483", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_483" },
	{ config_id = 1000484, name = "GADGET_CREATE_484", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_484", action = "action_EVENT_GADGET_CREATE_484" }
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
		monsters = { 1360, 1362, 1363 },
		gadgets = { 3269, 3270, 3271, 3273, 3274 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_482", "SPECIFIC_GADGET_HP_CHANGE_483", "GADGET_CREATE_484" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_482(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_482(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1619, y=251, z=-1356}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1619,y=251,z=-1356}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1366, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1367, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1368, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_483(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_483(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1619, y=251, z=-1356}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1619,y=251,z=-1356}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1369, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1370, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_484(context, evt)
	if 3269 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_484(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1365, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end