-- 基础信息
local base_info = {
	group_id = 133220013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 21010502, pos = { x = -2709.943, y = 200.485, z = -3961.646 }, rot = { x = 0.000, y = 178.834, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 11 },
	{ config_id = 13002, monster_id = 21030601, pos = { x = -2715.894, y = 200.334, z = -3965.836 }, rot = { x = 0.000, y = 88.545, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 13003, monster_id = 21010901, pos = { x = -2708.138, y = 200.402, z = -4007.552 }, rot = { x = 0.000, y = 349.563, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 11 },
	{ config_id = 13004, monster_id = 22010401, pos = { x = -2700.700, y = 200.223, z = -4001.753 }, rot = { x = 0.000, y = 143.613, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 11 },
	{ config_id = 13005, monster_id = 21011002, pos = { x = -2697.070, y = 201.626, z = -4004.681 }, rot = { x = 0.000, y = 164.004, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 11 },
	{ config_id = 13006, monster_id = 21010601, pos = { x = -2699.403, y = 200.334, z = -4010.797 }, rot = { x = 0.000, y = 317.715, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13007, gadget_id = 70310004, pos = { x = -2710.323, y = 200.375, z = -3963.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 13008, gadget_id = 70300086, pos = { x = -2714.711, y = 200.777, z = -3957.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 13009, gadget_id = 70300101, pos = { x = -2701.525, y = 200.440, z = -4009.371 }, rot = { x = 0.000, y = 298.273, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 13010, gadget_id = 70300101, pos = { x = -2714.726, y = 200.266, z = -3957.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 13011, gadget_id = 70300086, pos = { x = -2701.593, y = 200.445, z = -4009.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 13012, gadget_id = 70300086, pos = { x = -2704.257, y = 200.367, z = -4007.438 }, rot = { x = 85.929, y = 180.000, z = 180.000 }, level = 19, area_id = 11 },
	{ config_id = 13013, gadget_id = 70330064, pos = { x = -2693.969, y = 200.000, z = -4010.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	{ config_id = 13014, gadget_id = 70300084, pos = { x = -2722.527, y = 200.230, z = -3950.385 }, rot = { x = 0.000, y = 252.761, z = 0.000 }, level = 19, area_id = 11 },
	{ config_id = 13015, gadget_id = 70300084, pos = { x = -2705.210, y = 200.170, z = -3959.313 }, rot = { x = 0.000, y = 344.606, z = 0.000 }, level = 19, area_id = 11 },
	{ config_id = 13021, gadget_id = 70300107, pos = { x = -2699.971, y = 200.349, z = -4003.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 13022, gadget_id = 70900380, pos = { x = -2694.423, y = 212.916, z = -4006.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 13023, gadget_id = 70300089, pos = { x = -2714.808, y = 200.266, z = -3966.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 13025, gadget_id = 70220013, pos = { x = -2709.873, y = 199.363, z = -3955.478 }, rot = { x = 27.325, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 13032, gadget_id = 70310001, pos = { x = -2698.472, y = 200.207, z = -4012.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 13033, gadget_id = 70310001, pos = { x = -2705.811, y = 200.462, z = -4008.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 13034, gadget_id = 70220013, pos = { x = -2693.116, y = 199.300, z = -4005.249 }, rot = { x = 359.126, y = 277.802, z = 346.692 }, level = 27, area_id = 11 },
	{ config_id = 13035, gadget_id = 70220013, pos = { x = -2697.031, y = 200.169, z = -4016.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 13036, gadget_id = 70220013, pos = { x = -2695.034, y = 200.034, z = -4015.588 }, rot = { x = 0.000, y = 332.597, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 13039, gadget_id = 70900380, pos = { x = -2696.073, y = 213.041, z = -3988.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 13040, gadget_id = 70310001, pos = { x = -2709.144, y = 200.427, z = -3957.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 13041, gadget_id = 70900380, pos = { x = -2702.669, y = 211.305, z = -3975.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013016, name = "SPECIFIC_GADGET_HP_CHANGE_13016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "53006", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_13016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_13016" },
	{ config_id = 1013017, name = "SPECIFIC_GADGET_HP_CHANGE_13017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "53007", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_13017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_13017" }
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
		monsters = { 13001, 13002, 13003, 13004, 13005, 13006 },
		gadgets = { 13007, 13008, 13009, 13010, 13011, 13012, 13013, 13014, 13015, 13021, 13022, 13023, 13025, 13032, 13033, 13034, 13035, 13036, 13039, 13040, 13041 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_13016", "SPECIFIC_GADGET_HP_CHANGE_13017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_13016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_13016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13006, delay_time = 2 }) then
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_13017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_13017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13006, delay_time = 2 }) then
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

require "V2_0/ElectricCore"