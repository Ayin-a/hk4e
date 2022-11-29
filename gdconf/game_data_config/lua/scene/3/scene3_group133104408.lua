-- 基础信息
local base_info = {
	group_id = 133104408
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 408001, monster_id = 21020201, pos = { x = 106.328, y = 255.921, z = 197.584 }, rot = { x = 353.219, y = 257.862, z = 359.736 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 7 },
	{ config_id = 408002, monster_id = 21010201, pos = { x = 97.108, y = 255.747, z = 205.418 }, rot = { x = 5.582, y = 119.113, z = 356.134 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 7 },
	{ config_id = 408003, monster_id = 21011001, pos = { x = 105.927, y = 261.245, z = 188.136 }, rot = { x = 358.588, y = 359.013, z = 359.972 }, level = 1, drop_tag = "远程丘丘人", area_id = 7 },
	{ config_id = 408004, monster_id = 21020101, pos = { x = 112.821, y = 252.717, z = 214.572 }, rot = { x = 341.300, y = 221.026, z = 20.228 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 408005, monster_id = 21010601, pos = { x = 113.744, y = 252.299, z = 213.274 }, rot = { x = 346.264, y = 243.557, z = 356.088 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 408006, monster_id = 21010601, pos = { x = 111.734, y = 253.215, z = 215.336 }, rot = { x = 350.853, y = 204.100, z = 17.620 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 408019, monster_id = 21010101, pos = { x = 95.378, y = 256.141, z = 192.724 }, rot = { x = 354.010, y = 200.688, z = 3.197 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 7 },
	{ config_id = 408020, monster_id = 21010201, pos = { x = 109.933, y = 256.014, z = 195.701 }, rot = { x = 358.177, y = 119.033, z = 5.115 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 408007, gadget_id = 70300078, pos = { x = 91.436, y = 256.490, z = 205.911 }, rot = { x = 355.647, y = 0.613, z = 349.364 }, level = 1, area_id = 7 },
	{ config_id = 408008, gadget_id = 70300090, pos = { x = 105.994, y = 255.751, z = 188.353 }, rot = { x = 0.865, y = 1.414, z = 1.117 }, level = 1, area_id = 7 },
	{ config_id = 408009, gadget_id = 70300101, pos = { x = 112.881, y = 255.538, z = 195.097 }, rot = { x = 2.647, y = 359.666, z = 353.749 }, level = 1, area_id = 7 },
	{ config_id = 408010, gadget_id = 70300101, pos = { x = 94.378, y = 256.036, z = 189.245 }, rot = { x = 4.464, y = 0.084, z = 2.682 }, level = 1, area_id = 7 },
	{ config_id = 408011, gadget_id = 70300086, pos = { x = 108.854, y = 254.046, z = 206.232 }, rot = { x = 6.199, y = 359.442, z = 355.498 }, level = 1, area_id = 9 },
	{ config_id = 408012, gadget_id = 70300086, pos = { x = 105.083, y = 254.599, z = 212.122 }, rot = { x = 356.478, y = 0.321, z = 350.246 }, level = 1, area_id = 9 },
	{ config_id = 408013, gadget_id = 70300084, pos = { x = 112.545, y = 255.930, z = 188.567 }, rot = { x = 2.141, y = 53.257, z = 2.865 }, level = 1, area_id = 7 },
	{ config_id = 408014, gadget_id = 70300084, pos = { x = 112.686, y = 254.466, z = 203.147 }, rot = { x = 6.239, y = 322.014, z = 350.703 }, level = 1, area_id = 9 },
	{ config_id = 408015, gadget_id = 70300084, pos = { x = 101.070, y = 255.657, z = 214.110 }, rot = { x = 348.959, y = 260.499, z = 8.892 }, level = 1, area_id = 7 },
	{ config_id = 408018, gadget_id = 70300084, pos = { x = 84.300, y = 257.896, z = 193.730 }, rot = { x = 17.559, y = 135.822, z = 14.987 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1408016, name = "SPECIFIC_GADGET_HP_CHANGE_408016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "408009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_408016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_408016" },
	{ config_id = 1408017, name = "SPECIFIC_GADGET_HP_CHANGE_408017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "408010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_408017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_408017" }
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
		monsters = { 408001, 408002, 408003, 408019, 408020 },
		gadgets = { 408007, 408008, 408009, 408010, 408011, 408012, 408013, 408014, 408015, 408018 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_408016", "SPECIFIC_GADGET_HP_CHANGE_408017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_408016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_408016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=109, y=255, z=195}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=109,y=255,z=195}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_408017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_408017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=109, y=255, z=195}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=109,y=255,z=195}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408006, delay_time = 0 }) then
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