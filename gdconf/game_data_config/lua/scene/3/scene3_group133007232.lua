-- 基础信息
local base_info = {
	group_id = 133007232
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 437, monster_id = 21010101, pos = { x = 2038.947, y = 208.101, z = -59.690 }, rot = { x = 0.000, y = 103.644, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 4 },
	{ config_id = 440, monster_id = 21010601, pos = { x = 2037.534, y = 204.843, z = -38.651 }, rot = { x = 0.000, y = 76.885, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 4 },
	{ config_id = 442, monster_id = 21010501, pos = { x = 2025.400, y = 210.565, z = -38.546 }, rot = { x = 0.000, y = 176.622, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 4 },
	{ config_id = 443, monster_id = 21020201, pos = { x = 2053.256, y = 202.988, z = -27.415 }, rot = { x = 0.000, y = 234.742, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 4 },
	{ config_id = 444, monster_id = 21030201, pos = { x = 2053.422, y = 203.243, z = -23.400 }, rot = { x = 0.000, y = 201.354, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 4 },
	{ config_id = 445, monster_id = 21020101, pos = { x = 2016.804, y = 207.778, z = -67.819 }, rot = { x = 0.000, y = 55.449, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 4 },
	{ config_id = 446, monster_id = 21030101, pos = { x = 2012.327, y = 207.881, z = -69.919 }, rot = { x = 0.000, y = 73.538, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 985, gadget_id = 70300101, pos = { x = 2041.008, y = 207.819, z = -61.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 986, gadget_id = 70300101, pos = { x = 2039.593, y = 204.303, z = -37.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 987, gadget_id = 70300084, pos = { x = 2050.965, y = 208.238, z = -54.955 }, rot = { x = 0.000, y = 330.277, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 988, gadget_id = 70300084, pos = { x = 2052.426, y = 208.113, z = -62.773 }, rot = { x = 0.000, y = 6.340, z = 0.000 }, level = 1, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000324, name = "SPECIFIC_GADGET_HP_CHANGE_324", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "985", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_324", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_324" },
	{ config_id = 1000325, name = "SPECIFIC_GADGET_HP_CHANGE_325", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "986", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_325", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_325" }
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
		monsters = { 437, 440, 442 },
		gadgets = { 985, 986, 987, 988 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_324", "SPECIFIC_GADGET_HP_CHANGE_325" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_324(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_324(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2041, y=209, z=-59}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2041,y=209,z=-59}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 445, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 446, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_325(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_325(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2042, y=209, z=-36}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2042,y=209,z=-36}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 443, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 444, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end