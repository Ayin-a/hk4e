-- 基础信息
local base_info = {
	group_id = 133001291
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1245, monster_id = 21020201, pos = { x = 1551.991, y = 291.054, z = -1174.109 }, rot = { x = 0.000, y = 136.684, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 2 },
	{ config_id = 1282, monster_id = 21010101, pos = { x = 1556.594, y = 291.440, z = -1183.913 }, rot = { x = 0.000, y = 193.581, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1287, monster_id = 21020101, pos = { x = 1538.185, y = 292.418, z = -1189.965 }, rot = { x = 0.000, y = 51.823, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 2 },
	{ config_id = 1288, monster_id = 21010601, pos = { x = 1538.314, y = 292.817, z = -1193.280 }, rot = { x = 0.000, y = 71.612, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1289, monster_id = 21010601, pos = { x = 1535.415, y = 292.606, z = -1190.471 }, rot = { x = 0.000, y = 47.170, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1290, monster_id = 21010901, pos = { x = 1558.249, y = 297.966, z = -1167.330 }, rot = { x = 0.000, y = 179.931, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3191, gadget_id = 70300078, pos = { x = 1550.690, y = 291.343, z = -1172.304 }, rot = { x = 6.895, y = 56.155, z = 351.177 }, level = 1, area_id = 2 },
	{ config_id = 3192, gadget_id = 70300090, pos = { x = 1557.998, y = 292.282, z = -1167.167 }, rot = { x = 0.000, y = 57.878, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3197, gadget_id = 70300101, pos = { x = 1557.331, y = 291.103, z = -1186.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3198, gadget_id = 70300101, pos = { x = 1543.954, y = 291.806, z = -1176.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3199, gadget_id = 70300086, pos = { x = 1561.240, y = 293.115, z = -1189.850 }, rot = { x = 356.217, y = 352.788, z = 90.000 }, level = 1, area_id = 2 },
	{ config_id = 3200, gadget_id = 70300086, pos = { x = 1544.283, y = 292.566, z = -1175.720 }, rot = { x = 343.590, y = 336.243, z = 82.065 }, level = 1, area_id = 2 },
	{ config_id = 3201, gadget_id = 70300084, pos = { x = 1567.677, y = 290.353, z = -1179.973 }, rot = { x = 5.406, y = 5.891, z = 358.376 }, level = 1, area_id = 2 },
	{ config_id = 3202, gadget_id = 70300084, pos = { x = 1562.416, y = 290.033, z = -1171.729 }, rot = { x = 0.000, y = 284.615, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000497, name = "SPECIFIC_GADGET_HP_CHANGE_497", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3197", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_497", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_497" },
	{ config_id = 1000498, name = "SPECIFIC_GADGET_HP_CHANGE_498", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3198", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_498", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_498" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ison", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 3203, gadget_id = 70300084, pos = { x = 1547.080, y = 293.113, z = -1193.479 }, rot = { x = 0.000, y = 118.245, z = 0.000 }, level = 1, area_id = 2 }
	}
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
		monsters = { 1245, 1282, 1290 },
		gadgets = { 3191, 3192, 3197, 3198, 3199, 3200, 3201, 3202 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_497", "SPECIFIC_GADGET_HP_CHANGE_498" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_497(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是1
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_497(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1550, y=292, z=-1179}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1550,y=292,z=-1179}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1287, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1289, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1288, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_498(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_498(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1542, y=292, z=-1173}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1542,y=292,z=-1173}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1287, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1289, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1288, delay_time = 0 }) then
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