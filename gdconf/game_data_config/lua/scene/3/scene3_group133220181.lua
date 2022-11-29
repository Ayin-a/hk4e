-- 基础信息
local base_info = {
	group_id = 133220181
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181003, monster_id = 25100301, pos = { x = -2539.837, y = 141.425, z = -4401.805 }, rot = { x = 0.660, y = 147.188, z = 0.435 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, climate_area_id = 6, area_id = 11 },
	{ config_id = 181011, monster_id = 25100401, pos = { x = -2546.164, y = 141.287, z = -4404.451 }, rot = { x = 0.000, y = 112.416, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, climate_area_id = 6, area_id = 11 },
	{ config_id = 181058, monster_id = 25100401, pos = { x = -2544.835, y = 141.287, z = -4409.346 }, rot = { x = 0.000, y = 81.409, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, climate_area_id = 6, area_id = 11 },
	{ config_id = 181088, monster_id = 25100301, pos = { x = -2546.164, y = 141.287, z = -4404.451 }, rot = { x = 0.000, y = 112.416, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, climate_area_id = 6, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 181001, gadget_id = 70290067, pos = { x = -2544.198, y = 146.390, z = -4399.825 }, rot = { x = 7.280, y = 112.561, z = 1.129 }, level = 27, state = GadgetState.GearAction1, area_id = 11 },
	{ config_id = 181006, gadget_id = 70290069, pos = { x = -2516.275, y = 143.176, z = -4419.807 }, rot = { x = 5.288, y = 112.808, z = 356.522 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 181007, gadget_id = 70290070, pos = { x = -2517.637, y = 142.424, z = -4402.583 }, rot = { x = 7.457, y = 0.136, z = 3.732 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 181008, gadget_id = 70290070, pos = { x = -2541.758, y = 142.741, z = -4387.355 }, rot = { x = 351.902, y = 5.649, z = 4.773 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 181009, gadget_id = 70290070, pos = { x = -2550.737, y = 142.291, z = -4414.529 }, rot = { x = 357.506, y = 105.701, z = 358.441 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 181010, gadget_id = 70290070, pos = { x = -2529.064, y = 143.139, z = -4425.253 }, rot = { x = 356.531, y = 356.395, z = 11.872 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 181020, gadget_id = 70330096, pos = { x = -2548.057, y = 144.443, z = -4403.101 }, rot = { x = 1.327, y = 129.516, z = 178.853 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 181027, gadget_id = 70290106, pos = { x = -2546.262, y = 143.977, z = -4404.358 }, rot = { x = 3.146, y = 122.627, z = 1.817 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 181035, gadget_id = 70330096, pos = { x = -2548.060, y = 144.439, z = -4403.105 }, rot = { x = 0.709, y = 129.529, z = 178.853 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 181036, gadget_id = 70290168, pos = { x = -2544.198, y = 146.390, z = -4399.825 }, rot = { x = 7.280, y = 112.561, z = 1.129 }, level = 27, state = GadgetState.GearAction2, area_id = 11 },
	{ config_id = 181037, gadget_id = 70330096, pos = { x = -2548.070, y = 144.412, z = -4403.117 }, rot = { x = 1.579, y = 128.986, z = 176.302 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 181060, gadget_id = 70330101, pos = { x = -2548.052, y = 143.381, z = -4403.087 }, rot = { x = 1.327, y = 129.516, z = 178.853 }, level = 27, mark_flag = 3, area_id = 11 },
	{ config_id = 181061, gadget_id = 70330101, pos = { x = -2547.350, y = 144.208, z = -4402.283 }, rot = { x = 1.327, y = 129.516, z = 178.853 }, level = 27, state = GadgetState.GearStart, mark_flag = 3, area_id = 11 },
	{ config_id = 181062, gadget_id = 70330101, pos = { x = -2547.652, y = 145.311, z = -4402.657 }, rot = { x = 1.327, y = 129.516, z = 178.853 }, level = 27, state = GadgetState.GearStop, mark_flag = 3, area_id = 11 },
	{ config_id = 181063, gadget_id = 70330101, pos = { x = -2548.769, y = 144.212, z = -4403.933 }, rot = { x = 1.327, y = 129.516, z = 178.853 }, level = 27, state = GadgetState.GearAction1, mark_flag = 3, area_id = 11 },
	{ config_id = 181064, gadget_id = 70330101, pos = { x = -2548.451, y = 145.227, z = -4403.653 }, rot = { x = 1.327, y = 129.516, z = 178.853 }, level = 27, state = GadgetState.GearAction2, mark_flag = 3, area_id = 11 },
	{ config_id = 181065, gadget_id = 70330103, pos = { x = -2548.052, y = 143.381, z = -4403.087 }, rot = { x = 1.327, y = 129.516, z = 178.853 }, level = 27, area_id = 11 },
	{ config_id = 181067, gadget_id = 70330101, pos = { x = -2548.082, y = 143.377, z = -4403.064 }, rot = { x = 0.709, y = 129.529, z = 178.853 }, level = 27, mark_flag = 3, area_id = 11 },
	{ config_id = 181068, gadget_id = 70330101, pos = { x = -2548.771, y = 144.208, z = -4403.934 }, rot = { x = 0.709, y = 129.529, z = 178.853 }, level = 27, state = GadgetState.GearStart, mark_flag = 3, area_id = 11 },
	{ config_id = 181069, gadget_id = 70330101, pos = { x = -2548.472, y = 145.224, z = -4403.631 }, rot = { x = 0.709, y = 129.529, z = 178.853 }, level = 27, state = GadgetState.GearStop, mark_flag = 3, area_id = 11 },
	{ config_id = 181070, gadget_id = 70330101, pos = { x = -2547.383, y = 144.205, z = -4402.258 }, rot = { x = 0.709, y = 129.529, z = 178.853 }, level = 27, state = GadgetState.GearAction1, mark_flag = 3, area_id = 11 },
	{ config_id = 181071, gadget_id = 70330101, pos = { x = -2547.656, y = 145.307, z = -4402.655 }, rot = { x = 0.709, y = 129.529, z = 178.853 }, level = 27, state = GadgetState.GearAction2, mark_flag = 3, area_id = 11 },
	{ config_id = 181072, gadget_id = 70330103, pos = { x = -2548.082, y = 143.377, z = -4403.064 }, rot = { x = 0.709, y = 129.529, z = 178.853 }, level = 27, area_id = 11 },
	{ config_id = 181077, gadget_id = 70330101, pos = { x = -2548.069, y = 143.354, z = -4403.033 }, rot = { x = 1.579, y = 128.986, z = 176.302 }, level = 27, mark_flag = 3, area_id = 11 },
	{ config_id = 181078, gadget_id = 70330101, pos = { x = -2548.766, y = 144.135, z = -4403.942 }, rot = { x = 1.579, y = 128.986, z = 176.302 }, level = 27, state = GadgetState.GearStart, mark_flag = 3, area_id = 11 },
	{ config_id = 181079, gadget_id = 70330101, pos = { x = -2547.392, y = 144.227, z = -4402.258 }, rot = { x = 1.579, y = 128.986, z = 176.302 }, level = 27, state = GadgetState.GearStart, mark_flag = 3, area_id = 11 },
	{ config_id = 181080, gadget_id = 70330101, pos = { x = -2548.458, y = 145.262, z = -4403.667 }, rot = { x = 1.579, y = 128.986, z = 176.302 }, level = 27, state = GadgetState.GearStop, mark_flag = 3, area_id = 11 },
	{ config_id = 181081, gadget_id = 70330101, pos = { x = -2547.684, y = 145.308, z = -4402.706 }, rot = { x = 1.579, y = 128.986, z = 176.302 }, level = 27, state = GadgetState.GearStop, mark_flag = 3, area_id = 11 },
	{ config_id = 181082, gadget_id = 70330103, pos = { x = -2548.069, y = 143.354, z = -4403.033 }, rot = { x = 1.579, y = 128.986, z = 176.302 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 纹样创生时横幅2
	{ config_id = 1181002, name = "GADGET_CREATE_181002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_181002", action = "action_EVENT_GADGET_CREATE_181002", trigger_count = 0 },
	-- 纹样创生时横幅3
	{ config_id = 1181004, name = "GADGET_CREATE_181004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_181004", action = "action_EVENT_GADGET_CREATE_181004", trigger_count = 0 },
	{ config_id = 1181005, name = "GROUP_LOAD_181005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_181005", action = "action_EVENT_GROUP_LOAD_181005", trigger_count = 0 },
	-- 纹样创生时横幅1
	{ config_id = 1181029, name = "GADGET_CREATE_181029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_181029", action = "action_EVENT_GADGET_CREATE_181029", trigger_count = 0 },
	-- 死亡trigger
	{ config_id = 1181046, name = "ANY_GADGET_DIE_181046", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_181046", action = "action_EVENT_ANY_GADGET_DIE_181046", trigger_count = 0 },
	-- 发射器自杀后切换雷樱瘤到902
	{ config_id = 1181047, name = "ANY_GADGET_DIE_181047", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_181047", action = "action_EVENT_ANY_GADGET_DIE_181047", trigger_count = 0 },
	-- 雷樱瘤战斗流程---第一次连线成功---第一次下地
	{ config_id = 1181049, name = "VARIABLE_CHANGE_181049", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_181049", action = "action_EVENT_VARIABLE_CHANGE_181049" },
	-- 雷樱瘤战斗流程---第二次连线成功---第二次下地
	{ config_id = 1181050, name = "VARIABLE_CHANGE_181050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_181050", action = "action_EVENT_VARIABLE_CHANGE_181050" },
	-- 雷樱瘤战斗流程-第一次上天
	{ config_id = 1181051, name = "GADGET_STATE_CHANGE_181051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_181051", action = "action_EVENT_GADGET_STATE_CHANGE_181051" },
	-- 雷樱瘤战斗流程---第三次连线成功---第三次下地
	{ config_id = 1181052, name = "VARIABLE_CHANGE_181052", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_181052", action = "action_EVENT_VARIABLE_CHANGE_181052" },
	-- 雷樱瘤战斗流程-第二次上天
	{ config_id = 1181053, name = "GADGET_STATE_CHANGE_181053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_181053", action = "action_EVENT_GADGET_STATE_CHANGE_181053" },
	-- 测试
	{ config_id = 1181054, name = "ANY_GADGET_DIE_181054", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_181054", action = "action_EVENT_ANY_GADGET_DIE_181054" },
	-- 测试
	{ config_id = 1181055, name = "ANY_GADGET_DIE_181055", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_181055", action = "action_EVENT_ANY_GADGET_DIE_181055" },
	-- 测试
	{ config_id = 1181056, name = "ANY_GADGET_DIE_181056", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_181056", action = "action_EVENT_ANY_GADGET_DIE_181056" },
	-- 雷樱瘤战斗流程---检测第三波击杀两只怪物
	{ config_id = 1181057, name = "ANY_MONSTER_DIE_181057", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_181057", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "win", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 181040, gadget_id = 70220013, pos = { x = -2545.121, y = 141.486, z = -4399.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
	},
	triggers = {
		{ config_id = 1181028, name = "GADGET_STATE_CHANGE_181028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_181028", action = "action_EVENT_GADGET_STATE_CHANGE_181028", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 4,
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
		monsters = { },
		gadgets = { 181001, 181006, 181007, 181008, 181009, 181010 },
		regions = { },
		triggers = { "GROUP_LOAD_181005", "ANY_GADGET_DIE_181046", "ANY_GADGET_DIE_181047" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 任务表现,
		monsters = { },
		gadgets = { 181006, 181007, 181008, 181009, 181010, 181036 },
		regions = { },
		triggers = { "GROUP_LOAD_181005", "ANY_GADGET_DIE_181046" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 任务表现,
		monsters = { },
		gadgets = { 181006, 181007, 181008, 181009, 181010 },
		regions = { },
		triggers = { "GROUP_LOAD_181005", "ANY_GADGET_DIE_181046" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 一阶段解密出现,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_181049", "GADGET_STATE_CHANGE_181051", "ANY_GADGET_DIE_181054" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 二阶段解密出现,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_181050", "GADGET_STATE_CHANGE_181053", "ANY_GADGET_DIE_181055", "ANY_MONSTER_DIE_181057" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 三阶段解密出现,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_181052", "ANY_GADGET_DIE_181056" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 181020, 181060, 181061, 181062, 181063, 181064, 181065 },
		regions = { },
		triggers = { "GADGET_CREATE_181029" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 181035, 181067, 181068, 181069, 181070, 181071, 181072 },
		regions = { },
		triggers = { "GADGET_CREATE_181002" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 181037, 181077, 181078, 181079, 181080, 181081, 181082 },
		regions = { },
		triggers = { "GADGET_CREATE_181004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_181002(context, evt)
	if 181035 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_181002(context, evt)
	-- 调用提示id为 -1074247295 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247295) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_181004(context, evt)
	if 181037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_181004(context, evt)
	-- 调用提示id为 -1074247295 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247295) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_181005(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_181005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_181029(context, evt)
	if 181020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_181029(context, evt)
	-- 调用提示id为 -1074247295 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247295) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_181046(context, evt)
	if 181001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_181046(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_181047(context, evt)
	if 181027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_181047(context, evt)
	-- 将configid为 181001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_181049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"step"为2
	if ScriptLib.GetGroupVariableValue(context, "step") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_181049(context, evt)
	-- 将configid为 181001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220181, 8)
	
	-- 调用提示id为 7210503 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210503) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_181050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"step"为3
	if ScriptLib.GetGroupVariableValue(context, "step") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_181050(context, evt)
	-- 将configid为 181001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220181, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_181051(context, evt)
	if 181001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"step"为2
	if ScriptLib.GetGroupVariableValue(context, "step") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_181051(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 181011, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 7210504 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210504) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_181052(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"step"为4
	if ScriptLib.GetGroupVariableValue(context, "step") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_181052(context, evt)
	-- 将configid为 181001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220181, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_181053(context, evt)
	if 181001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"step"为3
	if ScriptLib.GetGroupVariableValue(context, "step") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_181053(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 181058, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 181003, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 7210505 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210505) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_181054(context, evt)
	if 181038 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_181054(context, evt)
	-- 将本组内变量名为 "step" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "step", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_181055(context, evt)
	if 181039 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_181055(context, evt)
	-- 将本组内变量名为 "step" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "step", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_181056(context, evt)
	if 181040 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_181056(context, evt)
	-- 将本组内变量名为 "step" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "step", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_181057(context, evt)
	-- 针对当前group内变量名为 "num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "V2_0/RaioCotter"