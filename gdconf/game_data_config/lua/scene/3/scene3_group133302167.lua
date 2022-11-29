-- 基础信息
local base_info = {
	group_id = 133302167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 21020201, pos = { x = -366.735, y = 278.955, z = 2142.819 }, rot = { x = 0.000, y = 317.762, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 24 },
	{ config_id = 167002, monster_id = 21010101, pos = { x = -370.819, y = 279.908, z = 2145.563 }, rot = { x = 0.000, y = 67.283, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 24 },
	{ config_id = 167003, monster_id = 21010901, pos = { x = -371.764, y = 283.350, z = 2155.167 }, rot = { x = 0.000, y = 225.207, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 24 },
	{ config_id = 167004, monster_id = 21020101, pos = { x = -373.162, y = 282.206, z = 2135.236 }, rot = { x = 0.000, y = 359.661, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 24 },
	{ config_id = 167005, monster_id = 21010601, pos = { x = -369.988, y = 281.265, z = 2134.884 }, rot = { x = 0.000, y = 355.253, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 167006, monster_id = 21010601, pos = { x = -377.058, y = 283.653, z = 2137.649 }, rot = { x = 0.000, y = 26.561, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 167018, monster_id = 21010901, pos = { x = -364.085, y = 275.816, z = 2158.784 }, rot = { x = 0.000, y = 225.207, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167007, gadget_id = 70300078, pos = { x = -362.492, y = 276.612, z = 2146.808 }, rot = { x = 7.296, y = 358.578, z = 348.936 }, level = 27, area_id = 24 },
	{ config_id = 167008, gadget_id = 70300090, pos = { x = -371.815, y = 277.891, z = 2155.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 167009, gadget_id = 70300101, pos = { x = -377.046, y = 282.197, z = 2144.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 167010, gadget_id = 70300101, pos = { x = -358.452, y = 274.643, z = 2155.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 167011, gadget_id = 70300086, pos = { x = -377.007, y = 282.923, z = 2143.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 167012, gadget_id = 70300086, pos = { x = -358.499, y = 274.764, z = 2155.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 167013, gadget_id = 70300084, pos = { x = -364.406, y = 279.132, z = 2137.368 }, rot = { x = 17.741, y = 64.988, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 167014, gadget_id = 70300084, pos = { x = -374.962, y = 279.230, z = 2159.567 }, rot = { x = 336.609, y = 252.761, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 167015, gadget_id = 70300084, pos = { x = -355.252, y = 274.384, z = 2156.873 }, rot = { x = 355.444, y = 332.768, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1167016, name = "SPECIFIC_GADGET_HP_CHANGE_167016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "167009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_167016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_167016" },
	{ config_id = 1167017, name = "SPECIFIC_GADGET_HP_CHANGE_167017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "167010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_167017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_167017" }
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
		monsters = { 167001, 167002, 167003, 167018 },
		gadgets = { 167007, 167008, 167009, 167010, 167011, 167012, 167013, 167014, 167015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_167016", "SPECIFIC_GADGET_HP_CHANGE_167017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_167016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_167016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-370, y=279, z=2147}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-370,y=279,z=2147}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 167004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 167005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 167006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_167017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_167017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-370, y=279, z=2147}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-370,y=279,z=2147}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 167004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 167005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 167006, delay_time = 0 }) then
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