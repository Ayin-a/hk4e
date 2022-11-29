-- 基础信息
local base_info = {
	group_id = 240050006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 23010301, pos = { x = 64.414, y = 76.948, z = -82.707 }, rot = { x = 0.000, y = 21.166, z = 0.000 }, level = 1, title_id = 155, special_name_id = 10093 },
	{ config_id = 6021, monster_id = 25080301, pos = { x = 70.316, y = 76.956, z = -73.743 }, rot = { x = 0.000, y = 212.356, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 6022, monster_id = 25080201, pos = { x = 70.209, y = 76.940, z = -89.430 }, rot = { x = 0.000, y = 319.836, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 6029, monster_id = 23020101, pos = { x = 65.185, y = 76.958, z = -80.093 }, rot = { x = 0.000, y = 240.197, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, title_id = 155, special_name_id = 10092 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6008, gadget_id = 70220070, pos = { x = 69.233, y = 76.940, z = -79.040 }, rot = { x = 0.000, y = 83.272, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 70220071, pos = { x = 69.064, y = 76.941, z = -83.543 }, rot = { x = 0.000, y = 104.365, z = 0.000 }, level = 1 },
	{ config_id = 6010, gadget_id = 70220070, pos = { x = 69.327, y = 76.940, z = -81.288 }, rot = { x = 0.000, y = 91.265, z = 0.000 }, level = 1 },
	{ config_id = 6011, gadget_id = 70220070, pos = { x = 65.084, y = 76.940, z = -76.512 }, rot = { x = 0.000, y = 3.470, z = 0.000 }, level = 1 },
	{ config_id = 6012, gadget_id = 70220070, pos = { x = 65.082, y = 76.941, z = -85.685 }, rot = { x = 0.000, y = 179.310, z = 0.000 }, level = 1 },
	{ config_id = 6013, gadget_id = 70220071, pos = { x = 62.867, y = 76.938, z = -85.720 }, rot = { x = 0.000, y = 179.310, z = 0.000 }, level = 1 },
	{ config_id = 6014, gadget_id = 70220071, pos = { x = 62.812, y = 76.941, z = -76.457 }, rot = { x = 0.000, y = 359.145, z = 0.000 }, level = 1 },
	{ config_id = 6015, gadget_id = 70220071, pos = { x = 64.016, y = 76.940, z = -74.795 }, rot = { x = 0.000, y = 94.352, z = 0.000 }, level = 1 },
	{ config_id = 6016, gadget_id = 70220070, pos = { x = 63.923, y = 76.940, z = -87.048 }, rot = { x = 0.000, y = 87.147, z = 0.000 }, level = 1 },
	{ config_id = 6017, gadget_id = 70220070, pos = { x = 45.532, y = 77.040, z = -77.762 }, rot = { x = 0.000, y = 62.093, z = 0.000 }, level = 1 },
	{ config_id = 6018, gadget_id = 70220071, pos = { x = 44.398, y = 77.040, z = -84.062 }, rot = { x = 0.000, y = 149.947, z = 0.000 }, level = 1 },
	{ config_id = 6019, gadget_id = 70220070, pos = { x = 34.563, y = 77.040, z = -78.389 }, rot = { x = 0.000, y = 68.653, z = 0.000 }, level = 1 },
	{ config_id = 6020, gadget_id = 70220070, pos = { x = 36.059, y = 77.005, z = -83.523 }, rot = { x = 0.000, y = 114.012, z = 0.000 }, level = 1 },
	{ config_id = 6023, gadget_id = 70290136, pos = { x = 68.016, y = 76.857, z = -81.334 }, rot = { x = 0.000, y = 270.175, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6025, gadget_id = 70360001, pos = { x = 67.698, y = 78.287, z = -81.297 }, rot = { x = 0.000, y = 259.085, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 标记完成
	{ config_id = 1006007, name = "QUEST_FINISH_6007", event = EventType.EVENT_QUEST_FINISH, source = "7226612", condition = "", action = "action_EVENT_QUEST_FINISH_6007", trigger_count = 0 },
	{ config_id = 1006024, name = "GADGET_CREATE_6024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6024", action = "action_EVENT_GADGET_CREATE_6024", trigger_count = 0 },
	{ config_id = 1006026, name = "SELECT_OPTION_6026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6026", action = "action_EVENT_SELECT_OPTION_6026", trigger_count = 0 },
	{ config_id = 1006031, name = "MONSTER_BATTLE_6031", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_6031", action = "action_EVENT_MONSTER_BATTLE_6031", trigger_count = 0 },
	{ config_id = 1006032, name = "ANY_MONSTER_DIE_6032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6032", action = "action_EVENT_ANY_MONSTER_DIE_6032", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 6027, shape = RegionShape.CUBIC, size = { x = 2.000, y = 2.000, z = 10.000 }, pos = { x = 29.304, y = 77.040, z = -80.994 } }
	},
	triggers = {
		{ config_id = 1006003, name = "GATHER_6003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_6003", action = "action_EVENT_GATHER_6003", trigger_count = 0 },
		{ config_id = 1006006, name = "GATHER_6006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_6006", action = "action_EVENT_GATHER_6006", trigger_count = 0 },
		{ config_id = 1006027, name = "ENTER_REGION_6027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6027", action = "action_EVENT_ENTER_REGION_6027" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
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
		monsters = { 6001, 6029 },
		gadgets = { 6008, 6009, 6010, 6011, 6012, 6013, 6014, 6015, 6016, 6017, 6018, 6019, 6020, 6023, 6025 },
		regions = { },
		triggers = { "QUEST_FINISH_6007", "GADGET_CREATE_6024", "SELECT_OPTION_6026", "MONSTER_BATTLE_6031", "ANY_MONSTER_DIE_6032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6021, 6022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6032" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 6008, 6009, 6010, 6011, 6012, 6013, 6014, 6015, 6016, 6017, 6018, 6019, 6020, 6023 },
		regions = { },
		triggers = { "QUEST_FINISH_6007", "GADGET_CREATE_6024", "SELECT_OPTION_6026", "MONSTER_BATTLE_6031", "ANY_MONSTER_DIE_6032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_6007(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_6024(context, evt)
	if 6025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_6024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050006, 6025, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6026(context, evt)
	-- 判断是gadgetid 6025 option_id 72
	if 6025 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6026(context, evt)
	-- 删除指定group： 240050006 ；指定config：6025；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050006, 6025, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 6023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_6031(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_6031(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240050006, 2)
	
	-- 调用提示id为 500660231 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660231) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6032(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226621") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end