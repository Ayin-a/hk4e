-- 基础信息
local base_info = {
	group_id = 133104409
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 409001, monster_id = 21020201, pos = { x = 560.188, y = 203.982, z = 166.118 }, rot = { x = 358.469, y = 318.008, z = 352.984 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 9 },
	{ config_id = 409002, monster_id = 21010101, pos = { x = 554.265, y = 204.066, z = 171.179 }, rot = { x = 8.763, y = 66.677, z = 6.804 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 9 },
	{ config_id = 409003, monster_id = 21010901, pos = { x = 546.025, y = 210.486, z = 159.217 }, rot = { x = 0.952, y = 24.190, z = 0.245 }, level = 1, drop_tag = "远程丘丘人", area_id = 9 },
	{ config_id = 409004, monster_id = 21020101, pos = { x = 575.119, y = 200.387, z = 148.338 }, rot = { x = 350.727, y = 300.598, z = 1.725 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 409005, monster_id = 21010601, pos = { x = 575.621, y = 200.393, z = 150.330 }, rot = { x = 359.291, y = 307.662, z = 359.453 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 409006, monster_id = 21010601, pos = { x = 573.785, y = 200.387, z = 147.394 }, rot = { x = 0.000, y = 298.308, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 409018, monster_id = 21010101, pos = { x = 558.343, y = 203.879, z = 156.150 }, rot = { x = 356.613, y = 166.711, z = 5.468 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 409007, gadget_id = 70300078, pos = { x = 559.997, y = 203.055, z = 176.822 }, rot = { x = 3.573, y = 359.889, z = 358.207 }, level = 1, area_id = 9 },
	{ config_id = 409008, gadget_id = 70300090, pos = { x = 545.851, y = 204.994, z = 159.215 }, rot = { x = 359.161, y = 359.410, z = 0.512 }, level = 1, area_id = 9 },
	{ config_id = 409009, gadget_id = 70300101, pos = { x = 558.161, y = 202.920, z = 153.189 }, rot = { x = 358.976, y = 0.806, z = 359.712 }, level = 1, area_id = 9 },
	{ config_id = 409010, gadget_id = 70300101, pos = { x = 556.878, y = 202.957, z = 173.120 }, rot = { x = 359.726, y = 359.818, z = 357.246 }, level = 1, area_id = 9 },
	{ config_id = 409011, gadget_id = 70300086, pos = { x = 557.459, y = 204.043, z = 169.364 }, rot = { x = 58.553, y = 351.693, z = 260.759 }, level = 1, area_id = 9 },
	{ config_id = 409012, gadget_id = 70300086, pos = { x = 558.300, y = 203.315, z = 153.113 }, rot = { x = 359.588, y = 1.177, z = 2.412 }, level = 1, area_id = 9 },
	{ config_id = 409013, gadget_id = 70300084, pos = { x = 566.769, y = 202.822, z = 163.710 }, rot = { x = 2.354, y = 29.847, z = 347.132 }, level = 1, area_id = 9 },
	{ config_id = 409014, gadget_id = 70300084, pos = { x = 542.788, y = 203.119, z = 175.860 }, rot = { x = 354.493, y = 219.700, z = 348.637 }, level = 1, area_id = 9 },
	{ config_id = 409015, gadget_id = 70300084, pos = { x = 562.333, y = 202.749, z = 185.811 }, rot = { x = 5.584, y = 297.072, z = 358.606 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1409016, name = "SPECIFIC_GADGET_HP_CHANGE_409016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "409009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_409016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_409016" },
	{ config_id = 1409017, name = "SPECIFIC_GADGET_HP_CHANGE_409017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "409010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_409017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_409017" }
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
		monsters = { 409001, 409002, 409003, 409018 },
		gadgets = { 409007, 409008, 409009, 409010, 409011, 409012, 409013, 409014, 409015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_409016", "SPECIFIC_GADGET_HP_CHANGE_409017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_409016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_409016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=559, y=203, z=173}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=559,y=203,z=173}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409006, delay_time = 0 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_409017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_409017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=559, y=203, z=173}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=559,y=203,z=173}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409006, delay_time = 0 }) then
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