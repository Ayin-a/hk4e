-- 基础信息
local base_info = {
	group_id = 133310386
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 386001, monster_id = 21020201, pos = { x = -2475.573, y = 254.913, z = 4336.541 }, rot = { x = 0.000, y = 320.505, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 26 },
	{ config_id = 386002, monster_id = 21010101, pos = { x = -2479.655, y = 255.394, z = 4343.597 }, rot = { x = 0.000, y = 67.654, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 26 },
	{ config_id = 386003, monster_id = 21010901, pos = { x = -2481.305, y = 261.097, z = 4347.009 }, rot = { x = 0.000, y = 219.816, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 26 },
	{ config_id = 386004, monster_id = 21020101, pos = { x = -2484.165, y = 252.820, z = 4329.307 }, rot = { x = 0.000, y = 52.148, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 26 },
	{ config_id = 386005, monster_id = 21010601, pos = { x = -2486.880, y = 253.152, z = 4332.379 }, rot = { x = 0.000, y = 94.982, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 26 },
	{ config_id = 386006, monster_id = 21010601, pos = { x = -2482.100, y = 252.288, z = 4325.419 }, rot = { x = 0.000, y = 22.236, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 26 },
	{ config_id = 386007, monster_id = 21030101, pos = { x = -2477.012, y = 253.537, z = 4328.767 }, rot = { x = 0.000, y = 132.939, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 26 },
	{ config_id = 386008, monster_id = 21010201, pos = { x = -2475.905, y = 253.406, z = 4327.304 }, rot = { x = 0.000, y = 338.212, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 386009, gadget_id = 70300078, pos = { x = -2472.095, y = 254.041, z = 4328.397 }, rot = { x = 350.430, y = 358.516, z = 7.273 }, level = 1, area_id = 26 },
	{ config_id = 386010, gadget_id = 70300090, pos = { x = -2481.663, y = 255.788, z = 4347.979 }, rot = { x = 352.797, y = 358.717, z = 356.611 }, level = 1, area_id = 26 },
	{ config_id = 386011, gadget_id = 70300101, pos = { x = -2464.532, y = 255.400, z = 4332.200 }, rot = { x = 352.910, y = 358.880, z = 1.915 }, level = 1, area_id = 26 },
	{ config_id = 386012, gadget_id = 70300101, pos = { x = -2475.076, y = 255.708, z = 4345.973 }, rot = { x = 357.365, y = 359.368, z = 4.492 }, level = 1, area_id = 26 },
	{ config_id = 386013, gadget_id = 70300086, pos = { x = -2477.512, y = 252.954, z = 4325.849 }, rot = { x = 349.564, y = 358.505, z = 7.278 }, level = 1, area_id = 26 },
	{ config_id = 386014, gadget_id = 70300086, pos = { x = -2489.657, y = 255.555, z = 4342.661 }, rot = { x = 347.481, y = 358.461, z = 353.369 }, level = 1, area_id = 26 },
	{ config_id = 386015, gadget_id = 70300084, pos = { x = -2463.327, y = 254.687, z = 4327.098 }, rot = { x = 352.943, y = 64.206, z = 351.620 }, level = 1, area_id = 26 },
	{ config_id = 386016, gadget_id = 70300084, pos = { x = -2484.568, y = 256.092, z = 4351.793 }, rot = { x = 1.242, y = 250.910, z = 0.260 }, level = 1, area_id = 26 },
	{ config_id = 386017, gadget_id = 70300084, pos = { x = -2470.492, y = 255.808, z = 4348.374 }, rot = { x = 1.627, y = 332.197, z = 1.166 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1386018, name = "SPECIFIC_GADGET_HP_CHANGE_386018", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "386011", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_386018", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_386018" },
	{ config_id = 1386019, name = "SPECIFIC_GADGET_HP_CHANGE_386019", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "386012", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_386019", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_386019" }
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
		monsters = { 386001, 386002, 386003, 386007, 386008 },
		gadgets = { 386009, 386010, 386011, 386012, 386013, 386014, 386015, 386016, 386017 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_386018", "SPECIFIC_GADGET_HP_CHANGE_386019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_386018(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_386018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2480, y=255, z=4341}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2480,y=255,z=4341}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 386004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 386005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 386006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_386019(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_386019(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2480, y=255, z=4341}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2480,y=255,z=4341}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 386004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 386005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 386006, delay_time = 0 }) then
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