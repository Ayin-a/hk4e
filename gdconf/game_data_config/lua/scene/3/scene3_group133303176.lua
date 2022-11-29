-- 基础信息
local base_info = {
	group_id = 133303176
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 176001, monster_id = 21020201, pos = { x = -1550.467, y = 268.829, z = 3691.749 }, rot = { x = 0.000, y = 286.259, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 176002, monster_id = 21010101, pos = { x = -1566.412, y = 272.074, z = 3690.010 }, rot = { x = 0.000, y = 40.210, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 23 },
	{ config_id = 176003, monster_id = 21010901, pos = { x = -1561.438, y = 273.943, z = 3700.449 }, rot = { x = 0.000, y = 128.970, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 23 },
	{ config_id = 176004, monster_id = 21020101, pos = { x = -1564.981, y = 270.878, z = 3694.002 }, rot = { x = 0.000, y = 110.257, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 23 },
	{ config_id = 176005, monster_id = 21010601, pos = { x = -1545.158, y = 271.275, z = 3697.619 }, rot = { x = 0.000, y = 265.296, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9013, area_id = 23 },
	{ config_id = 176006, monster_id = 21010601, pos = { x = -1555.345, y = 271.553, z = 3687.831 }, rot = { x = 0.000, y = 26.561, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9013, area_id = 23 },
	{ config_id = 176018, monster_id = 21010101, pos = { x = -1566.578, y = 269.725, z = 3697.787 }, rot = { x = 0.000, y = 108.954, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 176007, gadget_id = 70300078, pos = { x = -1548.331, y = 270.916, z = 3699.598 }, rot = { x = 355.468, y = 30.140, z = 10.176 }, level = 30, area_id = 23 },
	{ config_id = 176008, gadget_id = 70300090, pos = { x = -1561.617, y = 268.554, z = 3700.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 176009, gadget_id = 70300101, pos = { x = -1561.980, y = 272.161, z = 3688.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 176010, gadget_id = 70300101, pos = { x = -1540.388, y = 271.180, z = 3697.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 176011, gadget_id = 70300086, pos = { x = -1563.673, y = 269.679, z = 3698.340 }, rot = { x = 350.817, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 176012, gadget_id = 70300086, pos = { x = -1558.911, y = 268.057, z = 3701.990 }, rot = { x = 8.713, y = 1.691, z = 347.843 }, level = 30, area_id = 23 },
	{ config_id = 176013, gadget_id = 70300084, pos = { x = -1544.014, y = 268.111, z = 3684.641 }, rot = { x = 356.785, y = 60.067, z = 0.847 }, level = 30, area_id = 23 },
	{ config_id = 176014, gadget_id = 70300084, pos = { x = -1566.633, y = 272.751, z = 3684.675 }, rot = { x = 352.809, y = 153.359, z = 353.910 }, level = 30, area_id = 23 },
	{ config_id = 176015, gadget_id = 70300084, pos = { x = -1541.369, y = 270.712, z = 3703.181 }, rot = { x = 9.934, y = 298.185, z = 352.798 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1176016, name = "SPECIFIC_GADGET_HP_CHANGE_176016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "176009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_176016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_176016" },
	{ config_id = 1176017, name = "SPECIFIC_GADGET_HP_CHANGE_176017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "176010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_176017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_176017" }
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
		monsters = { 176001, 176003, 176005, 176006 },
		gadgets = { 176007, 176008, 176009, 176010, 176011, 176012, 176013, 176014, 176015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_176016", "SPECIFIC_GADGET_HP_CHANGE_176017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_176016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_176016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1556, y=270, z=3693}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1556.46,y=270.4006,z=3693.307}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 176002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 176004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 176018, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_176017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_176017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1556, y=270, z=3693}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1556,y=270,z=3693}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 176002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 176004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 176018, delay_time = 0 }) then
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