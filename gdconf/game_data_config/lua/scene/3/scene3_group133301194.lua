-- 基础信息
local base_info = {
	group_id = 133301194
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 194001, monster_id = 21020201, pos = { x = -361.299, y = 219.644, z = 3842.463 }, rot = { x = 0.000, y = 317.762, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 22 },
	{ config_id = 194002, monster_id = 21010101, pos = { x = -363.693, y = 220.154, z = 3844.606 }, rot = { x = 0.000, y = 66.516, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 22 },
	{ config_id = 194003, monster_id = 21010901, pos = { x = -367.145, y = 226.092, z = 3840.774 }, rot = { x = 0.000, y = 225.207, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 22 },
	{ config_id = 194004, monster_id = 21020201, pos = { x = -376.296, y = 220.679, z = 3838.294 }, rot = { x = 0.000, y = 56.900, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 22 },
	{ config_id = 194005, monster_id = 21010601, pos = { x = -374.798, y = 222.936, z = 3844.734 }, rot = { x = 0.000, y = 97.188, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 22 },
	{ config_id = 194006, monster_id = 21010601, pos = { x = -371.800, y = 220.134, z = 3833.892 }, rot = { x = 0.000, y = 26.561, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 22 },
	{ config_id = 194018, monster_id = 21010901, pos = { x = -363.827, y = 222.099, z = 3852.308 }, rot = { x = 0.000, y = 143.618, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 194007, gadget_id = 70300078, pos = { x = -379.137, y = 219.953, z = 3837.083 }, rot = { x = 342.253, y = 354.014, z = 18.983 }, level = 27, area_id = 22 },
	{ config_id = 194008, gadget_id = 70300090, pos = { x = -367.025, y = 220.332, z = 3840.832 }, rot = { x = 0.000, y = 0.000, z = 355.498 }, level = 33, area_id = 22 },
	{ config_id = 194009, gadget_id = 70300101, pos = { x = -356.324, y = 218.109, z = 3838.527 }, rot = { x = 343.851, y = 0.000, z = 1.970 }, level = 33, area_id = 22 },
	{ config_id = 194010, gadget_id = 70300101, pos = { x = -368.598, y = 221.478, z = 3851.090 }, rot = { x = 344.655, y = 0.905, z = 356.588 }, level = 27, area_id = 22 },
	{ config_id = 194011, gadget_id = 70300086, pos = { x = -356.550, y = 218.055, z = 3838.389 }, rot = { x = 343.851, y = 0.000, z = 1.970 }, level = 27, area_id = 22 },
	{ config_id = 194012, gadget_id = 70300086, pos = { x = -368.758, y = 221.307, z = 3851.057 }, rot = { x = 344.655, y = 0.905, z = 356.588 }, level = 27, area_id = 22 },
	{ config_id = 194013, gadget_id = 70300084, pos = { x = -355.113, y = 217.095, z = 3834.626 }, rot = { x = 0.000, y = 64.988, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 194014, gadget_id = 70300084, pos = { x = -370.265, y = 222.151, z = 3855.117 }, rot = { x = 0.000, y = 252.761, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 194015, gadget_id = 70300084, pos = { x = -382.861, y = 217.812, z = 3833.072 }, rot = { x = 12.111, y = 155.314, z = 341.253 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1194016, name = "SPECIFIC_GADGET_HP_CHANGE_194016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "194009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_194016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_194016" },
	{ config_id = 1194017, name = "SPECIFIC_GADGET_HP_CHANGE_194017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "194010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_194017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_194017" }
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
		monsters = { 194001, 194002, 194003, 194018 },
		gadgets = { 194007, 194008, 194009, 194010, 194011, 194012, 194013, 194014, 194015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_194016", "SPECIFIC_GADGET_HP_CHANGE_194017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_194016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_194016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-366, y=220, z=3843}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-366,y=220,z=3843}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 194004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 194005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 194006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_194017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_194017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-366, y=220, z=3843}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-366,y=220,z=3843}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 194004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 194005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 194006, delay_time = 0 }) then
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