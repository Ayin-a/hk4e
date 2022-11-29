-- 基础信息
local base_info = {
	group_id = 133301192
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 192001, monster_id = 21020201, pos = { x = -792.583, y = 239.322, z = 3484.761 }, rot = { x = 0.000, y = 317.762, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 192002, monster_id = 21010101, pos = { x = -796.574, y = 237.836, z = 3491.785 }, rot = { x = 0.000, y = 73.675, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 23 },
	{ config_id = 192003, monster_id = 21010901, pos = { x = -798.677, y = 242.184, z = 3496.092 }, rot = { x = 0.000, y = 225.207, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 23 },
	{ config_id = 192004, monster_id = 21020101, pos = { x = -801.086, y = 242.572, z = 3477.495 }, rot = { x = 0.000, y = 56.900, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 23 },
	{ config_id = 192005, monster_id = 21010601, pos = { x = -803.773, y = 241.831, z = 3480.557 }, rot = { x = 0.000, y = 97.188, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 23 },
	{ config_id = 192006, monster_id = 21010601, pos = { x = -799.376, y = 243.760, z = 3473.731 }, rot = { x = 0.000, y = 26.561, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 23 },
	{ config_id = 192018, monster_id = 21030101, pos = { x = -790.584, y = 243.842, z = 3473.781 }, rot = { x = 0.000, y = 130.788, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 192019, monster_id = 21010201, pos = { x = -788.507, y = 244.367, z = 3471.181 }, rot = { x = 0.000, y = 336.207, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 192007, gadget_id = 70300078, pos = { x = -791.183, y = 244.750, z = 3469.026 }, rot = { x = 7.057, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 192008, gadget_id = 70300090, pos = { x = -798.535, y = 236.390, z = 3496.148 }, rot = { x = 1.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 192009, gadget_id = 70300101, pos = { x = -783.622, y = 244.098, z = 3472.820 }, rot = { x = 6.466, y = 0.000, z = 3.592 }, level = 30, area_id = 23 },
	{ config_id = 192010, gadget_id = 70300101, pos = { x = -792.064, y = 237.259, z = 3494.177 }, rot = { x = 10.154, y = 0.062, z = 1.466 }, level = 30, area_id = 23 },
	{ config_id = 192011, gadget_id = 70300086, pos = { x = -783.801, y = 243.944, z = 3472.983 }, rot = { x = 5.139, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 192012, gadget_id = 70300086, pos = { x = -792.125, y = 237.277, z = 3494.202 }, rot = { x = 6.068, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 192013, gadget_id = 70300084, pos = { x = -782.418, y = 244.728, z = 3467.720 }, rot = { x = 357.162, y = 64.988, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 192014, gadget_id = 70300084, pos = { x = -801.452, y = 235.997, z = 3499.953 }, rot = { x = 350.332, y = 252.760, z = 347.926 }, level = 30, area_id = 23 },
	{ config_id = 192015, gadget_id = 70300084, pos = { x = -787.371, y = 237.350, z = 3496.546 }, rot = { x = 10.497, y = 332.768, z = 5.998 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192016, name = "SPECIFIC_GADGET_HP_CHANGE_192016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "192009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_192016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_192016" },
	{ config_id = 1192017, name = "SPECIFIC_GADGET_HP_CHANGE_192017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "192010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_192017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_192017" }
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
		monsters = { 192001, 192002, 192003, 192018, 192019 },
		gadgets = { 192007, 192008, 192009, 192010, 192011, 192012, 192013, 192014, 192015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_192016", "SPECIFIC_GADGET_HP_CHANGE_192017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_192016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_192016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-797, y=239, z=3489}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-797,y=239,z=3489}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 192004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 192005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 192006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_192017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_192017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-797, y=239, z=3489}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-797,y=239,z=3489}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 192004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 192005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 192006, delay_time = 0 }) then
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