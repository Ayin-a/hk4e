-- 基础信息
local base_info = {
	group_id = 133302161
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 21020201, pos = { x = -599.552, y = 228.423, z = 2367.964 }, rot = { x = 0.000, y = 317.762, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 24 },
	{ config_id = 161002, monster_id = 21010101, pos = { x = -603.695, y = 227.039, z = 2370.539 }, rot = { x = 0.000, y = 66.516, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 24 },
	{ config_id = 161003, monster_id = 21010901, pos = { x = -608.579, y = 230.191, z = 2360.413 }, rot = { x = 0.000, y = 162.724, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 24 },
	{ config_id = 161004, monster_id = 21020101, pos = { x = -614.607, y = 223.826, z = 2372.771 }, rot = { x = 0.000, y = 148.554, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 24 },
	{ config_id = 161005, monster_id = 21010701, pos = { x = -612.246, y = 224.220, z = 2375.472 }, rot = { x = 0.000, y = 145.022, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 161006, monster_id = 21010701, pos = { x = -618.281, y = 222.981, z = 2371.848 }, rot = { x = 0.000, y = 138.757, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 161018, monster_id = 21010601, pos = { x = -620.473, y = 223.113, z = 2360.673 }, rot = { x = 0.000, y = 16.194, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9016, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 161007, gadget_id = 70300078, pos = { x = -615.543, y = 223.231, z = 2376.602 }, rot = { x = 1.809, y = 0.192, z = 6.071 }, level = 27, area_id = 24 },
	{ config_id = 161008, gadget_id = 70300090, pos = { x = -606.389, y = 225.017, z = 2359.861 }, rot = { x = 353.111, y = 358.194, z = 18.993 }, level = 27, area_id = 24 },
	{ config_id = 161009, gadget_id = 70300101, pos = { x = -595.819, y = 228.023, z = 2373.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 161010, gadget_id = 70300101, pos = { x = -624.916, y = 221.160, z = 2369.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 161011, gadget_id = 70300086, pos = { x = -595.676, y = 228.844, z = 2373.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 161012, gadget_id = 70300086, pos = { x = -624.682, y = 221.474, z = 2369.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 161013, gadget_id = 70300084, pos = { x = -616.638, y = 222.607, z = 2379.549 }, rot = { x = 6.479, y = 256.286, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 161014, gadget_id = 70300084, pos = { x = -633.823, y = 221.304, z = 2355.923 }, rot = { x = 347.525, y = 184.592, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 161015, gadget_id = 70300084, pos = { x = -590.237, y = 228.790, z = 2376.320 }, rot = { x = 14.873, y = 332.768, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161016, name = "SPECIFIC_GADGET_HP_CHANGE_161016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "161009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_161016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_161016" },
	{ config_id = 1161017, name = "SPECIFIC_GADGET_HP_CHANGE_161017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "161010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_161017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_161017" }
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
		monsters = { 161001, 161002, 161003, 161018 },
		gadgets = { 161007, 161008, 161009, 161010, 161011, 161012, 161013, 161014, 161015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_161016", "SPECIFIC_GADGET_HP_CHANGE_161017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_161016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_161016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-594, y=230, z=2371}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-594,y=230,z=2371}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 161004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 161005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 161006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_161017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_161017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-594, y=230, z=2371}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-594,y=230,z=2371}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 161004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 161005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 161006, delay_time = 0 }) then
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