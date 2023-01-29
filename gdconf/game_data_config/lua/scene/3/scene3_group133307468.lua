-- 基础信息
local base_info = {
	group_id = 133307468
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 468001, monster_id = 21020201, pos = { x = -1710.218, y = 117.052, z = 5122.729 }, rot = { x = 0.000, y = 188.262, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 26 },
	{ config_id = 468002, monster_id = 21010101, pos = { x = -1726.643, y = 118.485, z = 5118.229 }, rot = { x = 0.000, y = 66.160, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 26 },
	{ config_id = 468003, monster_id = 21010901, pos = { x = -1727.226, y = 125.703, z = 5130.917 }, rot = { x = 0.000, y = 225.129, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 26 },
	{ config_id = 468004, monster_id = 21020101, pos = { x = -1726.470, y = 117.605, z = 5112.098 }, rot = { x = 0.000, y = 140.366, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 26 },
	{ config_id = 468005, monster_id = 21010601, pos = { x = -1721.670, y = 118.336, z = 5121.959 }, rot = { x = 0.000, y = 137.441, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 26 },
	{ config_id = 468006, monster_id = 21010601, pos = { x = -1724.720, y = 116.257, z = 5102.449 }, rot = { x = 0.000, y = 37.129, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 468007, gadget_id = 70300078, pos = { x = -1713.002, y = 117.943, z = 5128.308 }, rot = { x = 352.893, y = 343.935, z = 354.661 }, level = 1, area_id = 26 },
	{ config_id = 468008, gadget_id = 70300090, pos = { x = -1727.235, y = 120.183, z = 5130.587 }, rot = { x = 353.859, y = 0.723, z = 351.964 }, level = 1, area_id = 26 },
	{ config_id = 468009, gadget_id = 70300101, pos = { x = -1727.388, y = 117.262, z = 5108.661 }, rot = { x = 352.049, y = 0.580, z = 354.615 }, level = 1, area_id = 26 },
	{ config_id = 468010, gadget_id = 70300101, pos = { x = -1711.185, y = 116.291, z = 5114.510 }, rot = { x = 354.704, y = 0.645, z = 354.607 }, level = 1, area_id = 26 },
	{ config_id = 468011, gadget_id = 70300086, pos = { x = -1718.932, y = 116.143, z = 5104.970 }, rot = { x = 356.437, y = 0.296, z = 357.303 }, level = 1, area_id = 26 },
	{ config_id = 468012, gadget_id = 70300086, pos = { x = -1723.303, y = 119.406, z = 5128.830 }, rot = { x = 353.894, y = 0.974, z = 351.937 }, level = 1, area_id = 26 },
	{ config_id = 468013, gadget_id = 70300084, pos = { x = -1715.989, y = 115.418, z = 5098.475 }, rot = { x = 1.370, y = 65.170, z = 354.453 }, level = 1, area_id = 26 },
	{ config_id = 468014, gadget_id = 70300084, pos = { x = -1736.880, y = 121.562, z = 5124.256 }, rot = { x = 7.835, y = 193.625, z = 9.116 }, level = 1, area_id = 26 },
	{ config_id = 468015, gadget_id = 70300084, pos = { x = -1704.089, y = 117.055, z = 5132.455 }, rot = { x = 352.451, y = 333.599, z = 354.833 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1468016, name = "SPECIFIC_GADGET_HP_CHANGE_468016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "352009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_468016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_468016" },
	{ config_id = 1468017, name = "SPECIFIC_GADGET_HP_CHANGE_468017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "352010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_468017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_468017" }
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
		monsters = { 468001, 468002, 468003 },
		gadgets = { 468007, 468008, 468009, 468010, 468011, 468012, 468013, 468014, 468015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_468016", "SPECIFIC_GADGET_HP_CHANGE_468017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_468016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_468016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1804, y=168, z=4862}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1804,y=168,z=4862}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 468004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 468005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 468006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_468017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_468017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1804, y=168, z=4862}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1804,y=168,z=4862}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 468004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 468005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 468006, delay_time = 0 }) then
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