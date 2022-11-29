-- 基础信息
local base_info = {
	group_id = 133220675
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 675001, gadget_id = 70710407, pos = { x = -2587.658, y = 274.233, z = -4624.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675002, gadget_id = 70710407, pos = { x = -2576.954, y = 274.187, z = -4609.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675003, gadget_id = 70710407, pos = { x = -2578.675, y = 274.161, z = -4617.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675004, gadget_id = 70710407, pos = { x = -2588.201, y = 274.201, z = -4614.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675005, gadget_id = 70710407, pos = { x = -2587.882, y = 274.240, z = -4606.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675006, gadget_id = 70710407, pos = { x = -2586.471, y = 274.209, z = -4603.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675008, gadget_id = 71700318, pos = { x = -2577.787, y = 274.024, z = -4600.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675016, gadget_id = 70300118, pos = { x = -2587.699, y = 274.816, z = -4624.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675017, gadget_id = 70300118, pos = { x = -2577.028, y = 274.904, z = -4609.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675018, gadget_id = 70300118, pos = { x = -2578.770, y = 274.919, z = -4617.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675019, gadget_id = 70300118, pos = { x = -2588.456, y = 275.880, z = -4615.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675020, gadget_id = 70300118, pos = { x = -2588.435, y = 275.212, z = -4606.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675021, gadget_id = 70300118, pos = { x = -2586.702, y = 275.879, z = -4603.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675027, gadget_id = 71700105, pos = { x = -2577.784, y = 274.027, z = -4600.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675030, gadget_id = 71700105, pos = { x = -2585.345, y = 274.217, z = -4600.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675031, gadget_id = 71700105, pos = { x = -2585.345, y = 274.217, z = -4600.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675032, gadget_id = 71700105, pos = { x = -2577.784, y = 274.027, z = -4600.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 675033, gadget_id = 71700105, pos = { x = -2585.345, y = 274.217, z = -4600.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 675011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2582.916, y = 274.004, z = -4612.911 }, area_id = 11 },
	{ config_id = 675029, shape = RegionShape.SPHERE, radius = 4, pos = { x = -2582.710, y = 274.732, z = -4608.884 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1675007, name = "ANY_GADGET_DIE_675007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_675007", action = "action_EVENT_ANY_GADGET_DIE_675007", trigger_count = 0 },
	{ config_id = 1675009, name = "VARIABLE_CHANGE_675009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_675009", action = "action_EVENT_VARIABLE_CHANGE_675009", trigger_count = 10 },
	{ config_id = 1675010, name = "ANY_GADGET_DIE_675010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_675010", action = "action_EVENT_ANY_GADGET_DIE_675010", trigger_count = 0 },
	{ config_id = 1675011, name = "ENTER_REGION_675011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_675011" },
	{ config_id = 1675013, name = "VARIABLE_CHANGE_675013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_675013", action = "action_EVENT_VARIABLE_CHANGE_675013", trigger_count = 10 },
	{ config_id = 1675014, name = "CHALLENGE_FAIL_675014", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_675014" },
	{ config_id = 1675015, name = "CHALLENGE_SUCCESS_675015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_675015" },
	{ config_id = 1675022, name = "ANY_GADGET_DIE_675022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_675022", action = "action_EVENT_ANY_GADGET_DIE_675022", trigger_count = 0 },
	{ config_id = 1675023, name = "ANY_GADGET_DIE_675023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_675023", action = "action_EVENT_ANY_GADGET_DIE_675023", trigger_count = 0 },
	{ config_id = 1675024, name = "ANY_GADGET_DIE_675024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_675024", action = "action_EVENT_ANY_GADGET_DIE_675024", trigger_count = 0 },
	{ config_id = 1675025, name = "ANY_GADGET_DIE_675025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_675025", action = "action_EVENT_ANY_GADGET_DIE_675025", trigger_count = 0 },
	{ config_id = 1675026, name = "QUEST_FINISH_675026", event = EventType.EVENT_QUEST_FINISH, source = "1911502", condition = "condition_EVENT_QUEST_FINISH_675026", action = "action_EVENT_QUEST_FINISH_675026", tag = "888" },
	{ config_id = 1675029, name = "ENTER_REGION_675029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_675029" }
}

-- 变量
variables = {
	{ config_id = 1, name = "variable1", value = 0, no_refresh = false },
	{ config_id = 2, name = "variable2", value = 0, no_refresh = false }
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
		gadgets = { 675001, 675002, 675003, 675004, 675005, 675006, 675016, 675017, 675018, 675019, 675020, 675021, 675030, 675032 },
		regions = { 675029 },
		triggers = { "ANY_GADGET_DIE_675007", "VARIABLE_CHANGE_675009", "ANY_GADGET_DIE_675010", "VARIABLE_CHANGE_675013", "CHALLENGE_FAIL_675014", "CHALLENGE_SUCCESS_675015", "ANY_GADGET_DIE_675022", "ANY_GADGET_DIE_675023", "ANY_GADGET_DIE_675024", "ANY_GADGET_DIE_675025", "QUEST_FINISH_675026", "ENTER_REGION_675029" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 675008, 675027, 675031 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 675033 },
		regions = { 675011 },
		triggers = { "ENTER_REGION_675011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_675007(context, evt)
	if 675001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_675007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220675, EntityType.GADGET, 675016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "variable1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "variable1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_675009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"variable1"为6
	if ScriptLib.GetGroupVariableValueByGroup(context, "variable1", 133220675) ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_675009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220675, 2)
	
	-- 调用提示id为 191110183 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 191110183) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_675010(context, evt)
	if 675004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_675010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220675, EntityType.GADGET, 675019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "variable1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "variable1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_675011(context, evt)
	-- 调用提示id为 191110184 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 191110184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_675013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"variable1"为3
	if ScriptLib.GetGroupVariableValue(context, "variable1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_675013(context, evt)
	-- 调用提示id为 191110182 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 191110182) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_675014(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220675, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220675, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "191150202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_675015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "191150201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_675022(context, evt)
	if 675002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_675022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220675, EntityType.GADGET, 675017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "variable1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "variable1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_675023(context, evt)
	if 675003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_675023(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220675, EntityType.GADGET, 675018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "variable1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "variable1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_675024(context, evt)
	if 675005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_675024(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220675, EntityType.GADGET, 675020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "variable1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "variable1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_675025(context, evt)
	if 675006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_675025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220675, EntityType.GADGET, 675021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "variable1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "variable1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_675026(context, evt)
	--检查ID为1911502的任务的完成状态是否为3（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1911502 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 3 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_675026(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_675029(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为253的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 253, 62, 2, 888, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end