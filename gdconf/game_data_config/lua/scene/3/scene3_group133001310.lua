-- 基础信息
local base_info = {
	group_id = 133001310
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1349, monster_id = 21010101, pos = { x = 1865.328, y = 223.850, z = -1101.455 }, rot = { x = 0.000, y = 225.333, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 1351, monster_id = 21010101, pos = { x = 1845.813, y = 225.188, z = -1099.072 }, rot = { x = 0.000, y = 204.608, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 1352, monster_id = 21020201, pos = { x = 1861.032, y = 224.347, z = -1097.686 }, rot = { x = 0.000, y = 181.441, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 3 },
	{ config_id = 1353, monster_id = 21010501, pos = { x = 1864.883, y = 232.498, z = -1088.474 }, rot = { x = 0.000, y = 85.317, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 1354, monster_id = 21011001, pos = { x = 1826.245, y = 226.701, z = -1096.939 }, rot = { x = 0.000, y = 97.341, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 1355, monster_id = 21011001, pos = { x = 1823.100, y = 227.082, z = -1096.067 }, rot = { x = 0.000, y = 97.341, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 1356, monster_id = 21011001, pos = { x = 1823.698, y = 227.359, z = -1101.695 }, rot = { x = 0.000, y = 63.463, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 1357, monster_id = 21030101, pos = { x = 1892.238, y = 222.648, z = -1101.827 }, rot = { x = 0.000, y = 281.920, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 3 },
	{ config_id = 1358, monster_id = 21030101, pos = { x = 1897.624, y = 222.185, z = -1101.226 }, rot = { x = 0.000, y = 256.355, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 3 },
	{ config_id = 1359, monster_id = 21020101, pos = { x = 1889.299, y = 223.044, z = -1098.690 }, rot = { x = 0.000, y = 291.304, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3264, gadget_id = 70300090, pos = { x = 1864.006, y = 226.927, z = -1087.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 3265, gadget_id = 70300101, pos = { x = 1863.399, y = 223.601, z = -1103.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 3266, gadget_id = 70300101, pos = { x = 1844.271, y = 224.970, z = -1101.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 3267, gadget_id = 70300086, pos = { x = 1860.264, y = 224.671, z = -1104.339 }, rot = { x = 84.092, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 3268, gadget_id = 70300086, pos = { x = 1844.331, y = 225.740, z = -1103.798 }, rot = { x = 82.870, y = 282.353, z = 286.915 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000479, name = "GADGET_CREATE_479", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_479", action = "action_EVENT_GADGET_CREATE_479" },
	{ config_id = 1000480, name = "SPECIFIC_GADGET_HP_CHANGE_480", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3266", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_480", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_480" },
	{ config_id = 1000481, name = "SPECIFIC_GADGET_HP_CHANGE_481", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3265", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_481", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_481" }
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
		monsters = { 1349, 1351, 1352 },
		gadgets = { 3264, 3265, 3266, 3267, 3268 },
		regions = { },
		triggers = { "GADGET_CREATE_479", "SPECIFIC_GADGET_HP_CHANGE_480", "SPECIFIC_GADGET_HP_CHANGE_481" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_479(context, evt)
	if 3264 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_479(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1353, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_480(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_480(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1843, y=226, z=-1099}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1843,y=226,z=-1099}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1354, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1355, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1356, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_481(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_481(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1843, y=226, z=-1099}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1843,y=226,z=-1099}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1359, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1357, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1358, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end