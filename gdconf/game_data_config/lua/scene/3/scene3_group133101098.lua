-- 基础信息
local base_info = {
	group_id = 133101098
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 98001, monster_id = 21020201, pos = { x = 1183.401, y = 242.834, z = 1152.255 }, rot = { x = 0.000, y = 73.919, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 98003, monster_id = 21011001, pos = { x = 1198.149, y = 245.025, z = 1139.057 }, rot = { x = 0.000, y = 323.785, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 98004, monster_id = 21010601, pos = { x = 1199.683, y = 245.695, z = 1148.162 }, rot = { x = 0.000, y = 108.684, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 6 },
	{ config_id = 98005, monster_id = 21010601, pos = { x = 1195.882, y = 245.332, z = 1160.759 }, rot = { x = 0.000, y = 187.661, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9010, area_id = 6 },
	{ config_id = 98006, monster_id = 21010601, pos = { x = 1182.241, y = 243.489, z = 1154.648 }, rot = { x = 0.000, y = 117.034, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9010, area_id = 6 },
	{ config_id = 98023, monster_id = 21020301, pos = { x = 1199.357, y = 245.928, z = 1163.083 }, rot = { x = 0.000, y = 183.491, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 98024, monster_id = 21010601, pos = { x = 1180.423, y = 242.531, z = 1145.572 }, rot = { x = 0.000, y = 70.939, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 6 },
	{ config_id = 98025, monster_id = 21030301, pos = { x = 1190.743, y = 244.448, z = 1142.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 98002, gadget_id = 70310001, pos = { x = 1190.647, y = 243.883, z = 1144.525 }, rot = { x = 9.734, y = 359.695, z = 356.424 }, level = 1, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 98007, gadget_id = 70300089, pos = { x = 1193.371, y = 244.766, z = 1139.124 }, rot = { x = 0.000, y = 90.473, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 98008, gadget_id = 70300090, pos = { x = 1198.785, y = 244.642, z = 1138.395 }, rot = { x = 0.000, y = 110.194, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 98009, gadget_id = 70300101, pos = { x = 1183.360, y = 242.759, z = 1146.778 }, rot = { x = 348.533, y = 89.855, z = 6.147 }, level = 1, area_id = 6 },
	{ config_id = 98010, gadget_id = 70300101, pos = { x = 1202.809, y = 245.493, z = 1147.857 }, rot = { x = 0.000, y = 90.473, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 98011, gadget_id = 70300086, pos = { x = 1194.158, y = 245.003, z = 1137.847 }, rot = { x = 0.000, y = 90.473, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 98012, gadget_id = 70300086, pos = { x = 1185.879, y = 244.446, z = 1137.977 }, rot = { x = 0.000, y = 90.473, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 98013, gadget_id = 70300084, pos = { x = 1173.774, y = 243.039, z = 1136.883 }, rot = { x = 345.632, y = 144.201, z = 359.561 }, level = 1, area_id = 6 },
	{ config_id = 98014, gadget_id = 70300084, pos = { x = 1209.461, y = 247.128, z = 1149.963 }, rot = { x = 358.734, y = 318.020, z = 11.806 }, level = 1, area_id = 6 },
	{ config_id = 98015, gadget_id = 70300084, pos = { x = 1208.676, y = 244.729, z = 1133.477 }, rot = { x = 6.090, y = 16.996, z = 355.352 }, level = 1, area_id = 6 },
	{ config_id = 98018, gadget_id = 70220014, pos = { x = 1208.306, y = 246.442, z = 1146.274 }, rot = { x = 347.684, y = 359.475, z = 2.734 }, level = 1, area_id = 6 },
	{ config_id = 98019, gadget_id = 70220014, pos = { x = 1189.611, y = 245.002, z = 1159.730 }, rot = { x = 342.645, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 98020, gadget_id = 70220013, pos = { x = 1188.155, y = 244.545, z = 1158.470 }, rot = { x = 342.645, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 98021, gadget_id = 70220013, pos = { x = 1191.049, y = 245.066, z = 1160.719 }, rot = { x = 352.333, y = 42.644, z = 342.654 }, level = 1, area_id = 6 },
	{ config_id = 98022, gadget_id = 70300089, pos = { x = 1187.033, y = 244.214, z = 1139.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1098016, name = "SPECIFIC_GADGET_HP_CHANGE_98016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "98009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_98016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_98016" },
	{ config_id = 1098017, name = "SPECIFIC_GADGET_HP_CHANGE_98017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "98010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_98017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_98017" }
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
		monsters = { 98001, 98003, 98004, 98024, 98025 },
		gadgets = { 98002, 98007, 98008, 98009, 98010, 98011, 98012, 98013, 98014, 98015, 98018, 98019, 98020, 98021, 98022 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_98016", "SPECIFIC_GADGET_HP_CHANGE_98017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_98016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_98016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1192, y=244, z=1142}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98023, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98024, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1152,y=244,z=1142}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_98017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_98017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1192, y=244, z=1142}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98023, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98024, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1192,y=244,z=1142}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end