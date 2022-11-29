-- 基础信息
local base_info = {
	group_id = 133102550
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 550001, monster_id = 21020201, pos = { x = 1313.681, y = 200.772, z = 502.242 }, rot = { x = 0.000, y = 343.840, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 550002, monster_id = 21010101, pos = { x = 1323.754, y = 200.475, z = 523.914 }, rot = { x = 0.000, y = 184.332, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 5 },
	{ config_id = 550003, monster_id = 21011001, pos = { x = 1300.335, y = 205.085, z = 504.216 }, rot = { x = 0.000, y = 73.387, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 550004, monster_id = 21020101, pos = { x = 1310.333, y = 201.039, z = 482.619 }, rot = { x = 0.000, y = 16.124, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 5 },
	{ config_id = 550005, monster_id = 21010601, pos = { x = 1308.584, y = 200.888, z = 482.873 }, rot = { x = 0.000, y = 39.284, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 550006, monster_id = 21010601, pos = { x = 1312.042, y = 201.204, z = 484.049 }, rot = { x = 0.000, y = 354.816, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 550018, monster_id = 21010101, pos = { x = 1303.250, y = 200.484, z = 524.038 }, rot = { x = 0.000, y = 293.024, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 550007, gadget_id = 70300078, pos = { x = 1300.345, y = 200.423, z = 512.493 }, rot = { x = 0.000, y = 1.010, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 550008, gadget_id = 70300090, pos = { x = 1300.161, y = 199.646, z = 504.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 550009, gadget_id = 70300101, pos = { x = 1300.383, y = 199.994, z = 524.723 }, rot = { x = 0.000, y = 1.010, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 550010, gadget_id = 70300101, pos = { x = 1322.009, y = 200.038, z = 521.712 }, rot = { x = 0.000, y = 1.010, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 550011, gadget_id = 70300086, pos = { x = 1291.917, y = 199.501, z = 524.624 }, rot = { x = 285.436, y = 305.311, z = 336.718 }, level = 1, area_id = 5 },
	{ config_id = 550012, gadget_id = 70300086, pos = { x = 1322.060, y = 200.209, z = 521.739 }, rot = { x = 0.000, y = 1.010, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 550013, gadget_id = 70300083, pos = { x = 1316.108, y = 201.646, z = 493.055 }, rot = { x = 5.603, y = 359.646, z = 12.727 }, level = 1, area_id = 5 },
	{ config_id = 550014, gadget_id = 70300083, pos = { x = 1304.476, y = 199.973, z = 494.420 }, rot = { x = 359.512, y = 202.890, z = 358.322 }, level = 1, area_id = 5 },
	{ config_id = 550015, gadget_id = 70300083, pos = { x = 1329.132, y = 200.450, z = 539.243 }, rot = { x = 1.541, y = 25.125, z = 3.131 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1550016, name = "SPECIFIC_GADGET_HP_CHANGE_550016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "550009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_550016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_550016" },
	{ config_id = 1550017, name = "SPECIFIC_GADGET_HP_CHANGE_550017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "550010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_550017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_550017" }
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
		monsters = { 550001, 550002, 550003, 550018 },
		gadgets = { 550007, 550008, 550009, 550010, 550011, 550012, 550013, 550014, 550015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_550016", "SPECIFIC_GADGET_HP_CHANGE_550017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_550016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_550016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1321, y=200, z=522}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1321,y=200,z=522}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_550017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_550017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1321, y=200, z=522}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1321,y=200,z=522}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550006, delay_time = 0 }) then
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