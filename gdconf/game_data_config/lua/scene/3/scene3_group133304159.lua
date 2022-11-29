-- 基础信息
local base_info = {
	group_id = 133304159
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 159001, monster_id = 21020101, pos = { x = -1102.061, y = 242.014, z = 2805.865 }, rot = { x = 0.000, y = 116.353, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 21 },
	{ config_id = 159002, monster_id = 21010401, pos = { x = -1104.539, y = 242.804, z = 2802.453 }, rot = { x = 0.000, y = 193.954, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 21 },
	{ config_id = 159003, monster_id = 21010901, pos = { x = -1106.011, y = 246.871, z = 2812.239 }, rot = { x = 0.000, y = 225.207, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 21 },
	{ config_id = 159004, monster_id = 21010401, pos = { x = -1101.648, y = 242.292, z = 2800.019 }, rot = { x = 0.000, y = 255.992, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 21 },
	{ config_id = 159005, monster_id = 21020201, pos = { x = -1091.089, y = 239.720, z = 2802.287 }, rot = { x = 0.000, y = 297.070, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 21 },
	{ config_id = 159006, monster_id = 21010301, pos = { x = -1087.591, y = 240.048, z = 2806.336 }, rot = { x = 0.000, y = 302.869, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 21 },
	{ config_id = 159018, monster_id = 21010301, pos = { x = -1094.347, y = 239.378, z = 2797.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 159007, gadget_id = 70300078, pos = { x = -1098.161, y = 241.293, z = 2811.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 159008, gadget_id = 70300090, pos = { x = -1105.870, y = 241.420, z = 2812.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 159009, gadget_id = 70300101, pos = { x = -1111.795, y = 245.240, z = 2802.386 }, rot = { x = 0.000, y = 0.000, z = 343.289 }, level = 30, area_id = 21 },
	{ config_id = 159010, gadget_id = 70300101, pos = { x = -1089.145, y = 240.135, z = 2812.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 159011, gadget_id = 70300086, pos = { x = -1111.264, y = 245.764, z = 2800.203 }, rot = { x = 348.266, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 159012, gadget_id = 70300086, pos = { x = -1103.484, y = 241.190, z = 2812.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 159013, gadget_id = 70300084, pos = { x = -1101.813, y = 243.216, z = 2793.051 }, rot = { x = 17.543, y = 64.988, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 159014, gadget_id = 70300084, pos = { x = -1105.223, y = 239.593, z = 2818.897 }, rot = { x = 353.329, y = 252.761, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 159015, gadget_id = 70300084, pos = { x = -1084.690, y = 239.632, z = 2814.399 }, rot = { x = 0.000, y = 332.768, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 159019, gadget_id = 70300088, pos = { x = -1107.000, y = 244.526, z = 2797.665 }, rot = { x = 0.000, y = 317.501, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 159020, gadget_id = 70300088, pos = { x = -1103.534, y = 243.339, z = 2796.138 }, rot = { x = 0.000, y = 269.848, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 159021, gadget_id = 70300088, pos = { x = -1108.932, y = 245.062, z = 2801.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1159016, name = "SPECIFIC_GADGET_HP_CHANGE_159016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "159010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_159016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_159016" },
	{ config_id = 1159017, name = "SPECIFIC_GADGET_HP_CHANGE_159017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "159009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_159017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_159017" }
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
		monsters = { 159001, 159002, 159003, 159004 },
		gadgets = { 159007, 159008, 159009, 159010, 159011, 159012, 159013, 159014, 159015, 159019, 159020, 159021 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_159016", "SPECIFIC_GADGET_HP_CHANGE_159017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_159016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_159016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1104, y=242, z=2804}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1104,y=242,z=2804}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 159005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 159006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 159018, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_159017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_159017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1104, y=242, z=2804}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1104,y=242,z=2804}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 159005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 159006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 159018, delay_time = 0 }) then
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