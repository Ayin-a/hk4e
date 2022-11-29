-- 基础信息
local base_info = {
	group_id = 133106307
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307003, monster_id = 21020301, pos = { x = -844.743, y = 245.043, z = 579.435 }, rot = { x = 0.000, y = 181.244, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 401, area_id = 7 },
	{ config_id = 307004, monster_id = 21030401, pos = { x = -863.721, y = 243.736, z = 570.594 }, rot = { x = 0.000, y = 102.675, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 7 },
	{ config_id = 307005, monster_id = 21010501, pos = { x = -862.798, y = 244.214, z = 565.866 }, rot = { x = 0.000, y = 69.505, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 307006, monster_id = 21011001, pos = { x = -830.252, y = 254.386, z = 574.832 }, rot = { x = 0.000, y = 229.601, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 307010, monster_id = 21011001, pos = { x = -832.858, y = 255.008, z = 581.767 }, rot = { x = 0.000, y = 247.273, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 307011, monster_id = 21010501, pos = { x = -863.777, y = 245.513, z = 562.170 }, rot = { x = 0.000, y = 61.008, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 307012, monster_id = 21011201, pos = { x = -843.107, y = 244.784, z = 572.194 }, rot = { x = 0.000, y = 155.317, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9013, area_id = 7 },
	{ config_id = 307015, monster_id = 21020501, pos = { x = -844.034, y = 242.712, z = 559.101 }, rot = { x = 0.000, y = 325.530, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 307001, gadget_id = 70300083, pos = { x = -858.301, y = 244.047, z = 578.028 }, rot = { x = 0.000, y = 348.437, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 307002, gadget_id = 70300083, pos = { x = -851.197, y = 244.355, z = 579.468 }, rot = { x = 0.000, y = 348.437, z = 5.656 }, level = 24, area_id = 7 },
	{ config_id = 307007, gadget_id = 70220035, pos = { x = -830.983, y = 254.620, z = 576.706 }, rot = { x = 0.000, y = 243.826, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 307008, gadget_id = 70300088, pos = { x = -864.918, y = 243.668, z = 569.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 307009, gadget_id = 70300088, pos = { x = -825.552, y = 254.890, z = 580.438 }, rot = { x = 0.000, y = 132.897, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 307013, gadget_id = 70300089, pos = { x = -842.037, y = 244.705, z = 569.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1307014, name = "ANY_MONSTER_DIE_307014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_307014", action = "action_EVENT_ANY_MONSTER_DIE_307014" },
	{ config_id = 1307017, name = "ANY_GADGET_DIE_307017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307017", action = "action_EVENT_ANY_GADGET_DIE_307017" },
	{ config_id = 1307018, name = "ANY_GADGET_DIE_307018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307018", action = "action_EVENT_ANY_GADGET_DIE_307018" },
	{ config_id = 1307019, name = "VARIABLE_CHANGE_307019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_307019", action = "action_EVENT_VARIABLE_CHANGE_307019" },
	{ config_id = 1307020, name = "ANY_MONSTER_DIE_307020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_307020", action = "action_EVENT_ANY_MONSTER_DIE_307020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "questNum", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 307003, 307004, 307005, 307006, 307010, 307011, 307012 },
		gadgets = { 307001, 307002, 307007, 307008, 307009, 307013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_307014", "ANY_GADGET_DIE_307017", "ANY_GADGET_DIE_307018", "VARIABLE_CHANGE_307019", "ANY_MONSTER_DIE_307020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_307014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_307014(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-853,y=243,z=572}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-853, y=243, z=572}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 307015, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307017(context, evt)
	if 307001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307017(context, evt)
	-- 针对当前group内变量名为 "questNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "questNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307018(context, evt)
	if 307002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307018(context, evt)
	-- 针对当前group内变量名为 "questNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "questNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_307019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"questNum"为3
	if ScriptLib.GetGroupVariableValue(context, "questNum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_307019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331063071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_307020(context, evt)
	if 307015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_307020(context, evt)
	-- 针对当前group内变量名为 "questNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "questNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end