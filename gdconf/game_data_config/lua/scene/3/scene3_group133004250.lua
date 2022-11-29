-- 基础信息
local base_info = {
	group_id = 133004250
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 712, monster_id = 21010101, pos = { x = 2209.663, y = 210.555, z = -511.718 }, rot = { x = 0.000, y = 160.822, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 714, monster_id = 21010601, pos = { x = 2224.890, y = 203.501, z = -499.890 }, rot = { x = 0.000, y = 13.428, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 715, monster_id = 22010201, pos = { x = 2205.944, y = 210.157, z = -509.314 }, rot = { x = 0.000, y = 110.837, z = 0.000 }, level = 1, drop_tag = "深渊法师", pose_id = 9013, area_id = 3 },
	{ config_id = 716, monster_id = 21010501, pos = { x = 2194.199, y = 215.192, z = -516.211 }, rot = { x = 0.000, y = 65.795, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 717, monster_id = 21010501, pos = { x = 2196.631, y = 215.613, z = -520.715 }, rot = { x = 0.000, y = 49.090, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 718, monster_id = 21010501, pos = { x = 2195.212, y = 215.258, z = -518.317 }, rot = { x = 0.000, y = 65.795, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 719, monster_id = 21020101, pos = { x = 2239.607, y = 203.177, z = -510.033 }, rot = { x = 0.000, y = 298.102, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 3 },
	{ config_id = 720, monster_id = 21030101, pos = { x = 2241.067, y = 202.973, z = -513.363 }, rot = { x = 0.000, y = 309.379, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1446, gadget_id = 70300101, pos = { x = 2209.375, y = 210.377, z = -514.290 }, rot = { x = 0.000, y = 331.273, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 1447, gadget_id = 70300101, pos = { x = 2225.460, y = 203.029, z = -497.316 }, rot = { x = 0.000, y = 331.273, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 1448, gadget_id = 70300084, pos = { x = 2213.126, y = 210.481, z = -514.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 1449, gadget_id = 70300084, pos = { x = 2208.423, y = 210.919, z = -520.323 }, rot = { x = 0.000, y = 77.836, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000309, name = "SPECIFIC_GADGET_HP_CHANGE_309", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "1447", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_309", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_309" },
	{ config_id = 1000310, name = "SPECIFIC_GADGET_HP_CHANGE_310", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "1446", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_310", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_310" }
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
		monsters = { 712, 714, 715 },
		gadgets = { 1446, 1447, 1448, 1449 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_309", "SPECIFIC_GADGET_HP_CHANGE_310" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_309(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_309(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2226, y=205, z=-498}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2226,y=205,z=-498}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 719, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 720, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_310(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_310(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2208, y=211, z=-515}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2208,y=211,z=-515}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 716, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 717, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 718, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end