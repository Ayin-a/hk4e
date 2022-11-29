-- 基础信息
local base_info = {
	group_id = 133309671
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 671001, monster_id = 21020201, pos = { x = -2842.193, y = 222.295, z = 5579.320 }, rot = { x = 0.000, y = 317.762, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 27 },
	{ config_id = 671002, monster_id = 21010301, pos = { x = -2845.925, y = 221.422, z = 5588.534 }, rot = { x = 0.000, y = 196.180, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9012, area_id = 27 },
	{ config_id = 671003, monster_id = 21010301, pos = { x = -2848.443, y = 223.224, z = 5581.018 }, rot = { x = 0.000, y = 43.568, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9012, area_id = 27 },
	{ config_id = 671004, monster_id = 21020101, pos = { x = -2857.439, y = 225.236, z = 5579.816 }, rot = { x = 0.000, y = 57.446, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 27 },
	{ config_id = 671005, monster_id = 21010501, pos = { x = -2847.945, y = 226.057, z = 5597.268 }, rot = { x = 0.000, y = 192.813, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 27 },
	{ config_id = 671006, monster_id = 21010701, pos = { x = -2854.967, y = 225.597, z = 5575.524 }, rot = { x = 0.000, y = 10.064, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 27 },
	{ config_id = 671007, monster_id = 21010701, pos = { x = -2855.228, y = 224.833, z = 5587.991 }, rot = { x = 0.000, y = 71.496, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 671008, gadget_id = 70300078, pos = { x = -2836.025, y = 219.892, z = 5584.163 }, rot = { x = 7.347, y = 357.873, z = 342.520 }, level = 1, area_id = 27 },
	{ config_id = 671009, gadget_id = 70300090, pos = { x = -2848.919, y = 220.750, z = 5597.055 }, rot = { x = 2.645, y = 359.774, z = 350.247 }, level = 1, area_id = 27 },
	{ config_id = 671010, gadget_id = 70300101, pos = { x = -2851.608, y = 225.594, z = 5571.974 }, rot = { x = 13.518, y = 357.160, z = 349.013 }, level = 1, area_id = 27 },
	{ config_id = 671011, gadget_id = 70300101, pos = { x = -2855.754, y = 222.439, z = 5593.489 }, rot = { x = 8.812, y = 359.590, z = 350.299 }, level = 1, area_id = 27 },
	{ config_id = 671012, gadget_id = 70300086, pos = { x = -2846.347, y = 224.735, z = 5571.876 }, rot = { x = 13.576, y = 357.253, z = 349.877 }, level = 1, area_id = 27 },
	{ config_id = 671013, gadget_id = 70300086, pos = { x = -2852.766, y = 221.596, z = 5596.060 }, rot = { x = 1.735, y = 326.302, z = 345.198 }, level = 1, area_id = 27 },
	{ config_id = 671014, gadget_id = 70300084, pos = { x = -2851.274, y = 226.522, z = 5567.735 }, rot = { x = 8.346, y = 95.282, z = 15.502 }, level = 1, area_id = 27 },
	{ config_id = 671015, gadget_id = 70300084, pos = { x = -2862.479, y = 223.371, z = 5595.384 }, rot = { x = 350.464, y = 203.069, z = 6.486 }, level = 1, area_id = 27 },
	{ config_id = 671016, gadget_id = 70300084, pos = { x = -2832.578, y = 218.125, z = 5588.877 }, rot = { x = 353.948, y = 321.573, z = 341.588 }, level = 1, area_id = 27 },
	{ config_id = 671017, gadget_id = 70310001, pos = { x = -2846.005, y = 222.150, z = 5584.124 }, rot = { x = 9.579, y = 359.185, z = 347.696 }, level = 1, state = GadgetState.GearStart, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1671018, name = "SPECIFIC_GADGET_HP_CHANGE_671018", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "671010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_671018", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_671018" },
	{ config_id = 1671019, name = "SPECIFIC_GADGET_HP_CHANGE_671019", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "671011", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_671019", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_671019" }
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
		monsters = { 671001, 671002, 671003, 671005 },
		gadgets = { 671008, 671009, 671010, 671011, 671012, 671013, 671014, 671015, 671016, 671017 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_671018", "SPECIFIC_GADGET_HP_CHANGE_671019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_671018(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_671018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2846, y=224, z=5584}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2846,y=224,z=5584}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 671004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 671006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 671007, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_671019(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_671019(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2846, y=224, z=5584}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2846,y=224,z=5584}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 671004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 671006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 671007, delay_time = 0 }) then
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