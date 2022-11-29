-- 基础信息
local base_info = {
	group_id = 133308352
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 352001, monster_id = 21020201, pos = { x = -1797.700, y = 168.213, z = 4858.524 }, rot = { x = 0.000, y = 317.659, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 26 },
	{ config_id = 352002, monster_id = 21010101, pos = { x = -1803.740, y = 167.845, z = 4865.691 }, rot = { x = 0.000, y = 66.587, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 26 },
	{ config_id = 352003, monster_id = 21010901, pos = { x = -1805.632, y = 172.901, z = 4869.974 }, rot = { x = 0.000, y = 225.488, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 26 },
	{ config_id = 352004, monster_id = 21020101, pos = { x = -1811.194, y = 168.764, z = 4852.905 }, rot = { x = 0.000, y = 140.687, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 26 },
	{ config_id = 352005, monster_id = 21010601, pos = { x = -1812.552, y = 167.493, z = 4867.328 }, rot = { x = 0.000, y = 137.331, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 26 },
	{ config_id = 352006, monster_id = 21010601, pos = { x = -1808.979, y = 168.935, z = 4848.207 }, rot = { x = 0.000, y = 183.969, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 352007, gadget_id = 70300078, pos = { x = -1796.272, y = 168.434, z = 4853.250 }, rot = { x = 2.608, y = 359.933, z = 357.033 }, level = 1, area_id = 26 },
	{ config_id = 352008, gadget_id = 70300090, pos = { x = -1805.640, y = 167.507, z = 4869.643 }, rot = { x = 5.736, y = 0.040, z = 0.797 }, level = 1, area_id = 26 },
	{ config_id = 352009, gadget_id = 70300101, pos = { x = -1805.327, y = 168.893, z = 4850.258 }, rot = { x = 2.681, y = 359.969, z = 358.795 }, level = 1, area_id = 26 },
	{ config_id = 352010, gadget_id = 70300101, pos = { x = -1796.780, y = 167.710, z = 4864.645 }, rot = { x = 4.055, y = 359.886, z = 356.792 }, level = 1, area_id = 26 },
	{ config_id = 352011, gadget_id = 70300086, pos = { x = -1798.279, y = 168.678, z = 4850.110 }, rot = { x = 2.484, y = 359.955, z = 357.921 }, level = 1, area_id = 26 },
	{ config_id = 352012, gadget_id = 70300086, pos = { x = -1793.915, y = 167.173, z = 4869.157 }, rot = { x = 4.148, y = 359.830, z = 355.320 }, level = 1, area_id = 26 },
	{ config_id = 352013, gadget_id = 70300084, pos = { x = -1796.437, y = 168.567, z = 4846.816 }, rot = { x = 4.204, y = 64.973, z = 359.585 }, level = 1, area_id = 26 },
	{ config_id = 352014, gadget_id = 70300084, pos = { x = -1812.733, y = 166.636, z = 4875.474 }, rot = { x = 1.632, y = 252.672, z = 353.694 }, level = 1, area_id = 26 },
	{ config_id = 352015, gadget_id = 70300084, pos = { x = -1790.863, y = 166.658, z = 4871.183 }, rot = { x = 2.078, y = 332.647, z = 353.326 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1352016, name = "SPECIFIC_GADGET_HP_CHANGE_352016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "352009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_352016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_352016" },
	{ config_id = 1352017, name = "SPECIFIC_GADGET_HP_CHANGE_352017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "352010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_352017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_352017" }
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
		monsters = { 352001, 352002, 352003 },
		gadgets = { 352007, 352008, 352009, 352010, 352011, 352012, 352013, 352014, 352015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_352016", "SPECIFIC_GADGET_HP_CHANGE_352017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_352016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_352016(context, evt)
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
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 352004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 352005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 352006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_352017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_352017(context, evt)
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
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 352004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 352005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 352006, delay_time = 0 }) then
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