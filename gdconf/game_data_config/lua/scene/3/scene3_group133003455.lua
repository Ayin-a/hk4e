-- 基础信息
local base_info = {
	group_id = 133003455
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1668, monster_id = 21010601, pos = { x = 2429.003, y = 205.970, z = -1258.124 }, rot = { x = 0.000, y = 67.973, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1670, monster_id = 21010601, pos = { x = 2435.492, y = 207.284, z = -1277.297 }, rot = { x = 0.000, y = 219.482, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1671, monster_id = 21010501, pos = { x = 2442.293, y = 212.247, z = -1263.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 1672, monster_id = 21020201, pos = { x = 2429.661, y = 206.831, z = -1276.684 }, rot = { x = 0.000, y = 128.169, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 },
	{ config_id = 1673, monster_id = 21010301, pos = { x = 2413.934, y = 208.571, z = -1280.987 }, rot = { x = 0.000, y = 57.984, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1674, monster_id = 21010301, pos = { x = 2415.732, y = 208.571, z = -1283.222 }, rot = { x = 0.000, y = 57.984, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1675, monster_id = 21010301, pos = { x = 2415.973, y = 208.571, z = -1280.792 }, rot = { x = 0.000, y = 70.710, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1676, monster_id = 21030101, pos = { x = 2411.951, y = 208.571, z = -1282.988 }, rot = { x = 0.000, y = 70.710, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 1 },
	{ config_id = 1677, monster_id = 21020101, pos = { x = 2448.503, y = 209.547, z = -1283.699 }, rot = { x = 0.000, y = 279.418, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 },
	{ config_id = 1678, monster_id = 21011001, pos = { x = 2452.935, y = 209.950, z = -1285.357 }, rot = { x = 0.000, y = 272.677, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 1679, monster_id = 21011001, pos = { x = 2453.794, y = 210.061, z = -1281.765 }, rot = { x = 0.000, y = 269.074, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4285, gadget_id = 70300090, pos = { x = 2442.382, y = 206.446, z = -1264.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4286, gadget_id = 70300101, pos = { x = 2431.187, y = 205.558, z = -1256.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4287, gadget_id = 70300101, pos = { x = 2434.319, y = 206.852, z = -1279.636 }, rot = { x = 0.000, y = 321.005, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4288, gadget_id = 70300086, pos = { x = 2433.783, y = 207.090, z = -1278.013 }, rot = { x = 282.194, y = 279.728, z = 87.356 }, level = 1, area_id = 1 },
	{ config_id = 4289, gadget_id = 70300086, pos = { x = 2433.984, y = 205.671, z = -1260.024 }, rot = { x = 276.072, y = 25.136, z = 80.054 }, level = 1, area_id = 1 },
	{ config_id = 4292, gadget_id = 70310001, pos = { x = 2420.574, y = 205.983, z = -1255.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4293, gadget_id = 70310001, pos = { x = 2419.104, y = 208.478, z = -1276.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4294, gadget_id = 70310001, pos = { x = 2421.482, y = 208.477, z = -1282.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4295, gadget_id = 70310001, pos = { x = 2448.707, y = 205.418, z = -1250.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4296, gadget_id = 70310001, pos = { x = 2439.845, y = 205.632, z = -1239.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4297, gadget_id = 70310001, pos = { x = 2409.224, y = 208.455, z = -1277.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4298, gadget_id = 70310001, pos = { x = 2417.395, y = 208.455, z = -1289.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4299, gadget_id = 70310001, pos = { x = 2441.657, y = 208.116, z = -1278.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4300, gadget_id = 70310001, pos = { x = 2436.776, y = 207.435, z = -1287.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4301, gadget_id = 70220013, pos = { x = 2407.463, y = 208.455, z = -1279.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4302, gadget_id = 70220013, pos = { x = 2406.881, y = 208.455, z = -1281.449 }, rot = { x = 0.000, y = 34.363, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4303, gadget_id = 70220013, pos = { x = 2415.534, y = 208.455, z = -1289.646 }, rot = { x = 0.000, y = 34.363, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4304, gadget_id = 70220014, pos = { x = 2421.051, y = 205.981, z = -1257.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4305, gadget_id = 70220014, pos = { x = 2420.184, y = 206.723, z = -1274.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4306, gadget_id = 70220014, pos = { x = 2420.162, y = 206.699, z = -1273.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000577, name = "GADGET_CREATE_577", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_577", action = "action_EVENT_GADGET_CREATE_577" },
	{ config_id = 1000578, name = "SPECIFIC_GADGET_HP_CHANGE_578", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "4286", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_578", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_578" },
	{ config_id = 1000579, name = "SPECIFIC_GADGET_HP_CHANGE_579", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "4287", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_579", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_579" }
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
		monsters = { 1668, 1670, 1672 },
		gadgets = { 4285, 4286, 4287, 4288, 4289, 4292, 4293, 4294, 4295, 4296, 4297, 4298, 4299, 4300, 4301, 4302, 4303, 4304, 4305, 4306 },
		regions = { },
		triggers = { "GADGET_CREATE_577", "SPECIFIC_GADGET_HP_CHANGE_578", "SPECIFIC_GADGET_HP_CHANGE_579" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_577(context, evt)
	if 4285 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_577(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1671, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_578(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_578(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2431, y=200, z=-1258}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2431,y=200,z=-1258}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1673, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1674, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1675, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1676, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_579(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_579(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2435, y=200, z=-1278}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2435,y=200,z=-1278}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1677, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1678, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1679, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end