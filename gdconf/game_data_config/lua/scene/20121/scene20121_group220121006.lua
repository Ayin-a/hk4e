-- 基础信息
local base_info = {
	group_id = 220121006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20010501, pos = { x = -41.345, y = -259.570, z = -37.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6002, monster_id = 20010501, pos = { x = -35.272, y = -259.570, z = -41.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, monster_id = 20010501, pos = { x = -28.689, y = -259.570, z = -37.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, monster_id = 20011201, pos = { x = -29.002, y = -259.570, z = -22.713 }, rot = { x = 0.000, y = 180.829, z = 0.000 }, level = 1 },
	{ config_id = 6006, monster_id = 20011201, pos = { x = -35.022, y = -259.570, z = -19.020 }, rot = { x = 0.000, y = 180.829, z = 0.000 }, level = 1 },
	{ config_id = 6007, monster_id = 20011201, pos = { x = -41.659, y = -259.570, z = -22.697 }, rot = { x = 0.000, y = 180.829, z = 0.000 }, level = 1 },
	{ config_id = 6008, monster_id = 20011301, pos = { x = -38.138, y = -259.570, z = -24.527 }, rot = { x = 0.000, y = 180.829, z = 0.000 }, level = 1 },
	{ config_id = 6009, monster_id = 20011301, pos = { x = -32.051, y = -259.570, z = -25.023 }, rot = { x = 0.000, y = 180.829, z = 0.000 }, level = 1 },
	{ config_id = 6011, monster_id = 20011201, pos = { x = -35.244, y = -259.570, z = -22.713 }, rot = { x = 0.000, y = 180.829, z = 0.000 }, level = 1 },
	{ config_id = 6027, monster_id = 20010601, pos = { x = -32.236, y = -259.570, z = -35.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6028, monster_id = 20010701, pos = { x = -38.330, y = -259.570, z = -35.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6010, gadget_id = 70290254, pos = { x = -35.481, y = -259.592, z = -31.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6020, gadget_id = 70290256, pos = { x = -35.418, y = -259.570, z = -31.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 玩家进入范围，解开机关封印
	{ config_id = 6013, shape = RegionShape.SPHERE, radius = 20, pos = { x = -35.728, y = -258.384, z = -30.990 } },
	-- 开局提醒要激活机关
	{ config_id = 6023, shape = RegionShape.SPHERE, radius = 20, pos = { x = -35.668, y = -259.570, z = -31.142 } }
}

-- 触发器
triggers = {
	{ config_id = 1006004, name = "VARIABLE_CHANGE_6004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6004", action = "action_EVENT_VARIABLE_CHANGE_6004", trigger_count = 0 },
	-- 对话结束清场1层
	{ config_id = 1006012, name = "QUEST_FINISH_6012", event = EventType.EVENT_QUEST_FINISH, source = "1101311", condition = "", action = "action_EVENT_QUEST_FINISH_6012" },
	-- 玩家进入范围，解开机关封印
	{ config_id = 1006013, name = "ENTER_REGION_6013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_6013" },
	{ config_id = 1006014, name = "ANY_MONSTER_DIE_6014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_6014", trigger_count = 0 },
	{ config_id = 1006015, name = "VARIABLE_CHANGE_6015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6015", action = "action_EVENT_VARIABLE_CHANGE_6015", trigger_count = 0 },
	-- 监听转到101召唤第一波怪
	{ config_id = 1006016, name = "GADGET_STATE_CHANGE_6016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6016", action = "action_EVENT_GADGET_STATE_CHANGE_6016", trigger_count = 0 },
	-- 监听转到103，召唤第二波怪
	{ config_id = 1006017, name = "GADGET_STATE_CHANGE_6017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6017", action = "action_EVENT_GADGET_STATE_CHANGE_6017", trigger_count = 0 },
	-- 监听转到201，召唤第三波怪
	{ config_id = 1006018, name = "GADGET_STATE_CHANGE_6018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6018", action = "action_EVENT_GADGET_STATE_CHANGE_6018", trigger_count = 0 },
	{ config_id = 1006019, name = "GADGET_CREATE_6019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6019", action = "action_EVENT_GADGET_CREATE_6019", trigger_count = 0 },
	{ config_id = 1006021, name = "TIME_AXIS_PASS_6021", event = EventType.EVENT_TIME_AXIS_PASS, source = "_wave_tick", condition = "", action = "action_EVENT_TIME_AXIS_PASS_6021", trigger_count = 0 },
	-- 监听变为可攻击状态。
	{ config_id = 1006022, name = "GADGET_STATE_CHANGE_6022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6022", action = "action_EVENT_GADGET_STATE_CHANGE_6022", trigger_count = 0 },
	-- 开局提醒要激活机关
	{ config_id = 1006023, name = "ENTER_REGION_6023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6023", action = "action_EVENT_ENTER_REGION_6023", trigger_count = 0 },
	-- 机关被摧毁，通知任务摧毁机关与触发器
	{ config_id = 1006026, name = "ANY_GADGET_DIE_6026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6026", action = "action_EVENT_ANY_GADGET_DIE_6026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "_stage1_monster", value = 0, no_refresh = false },
	{ config_id = 2, name = "_stage2_monster", value = 0, no_refresh = false },
	{ config_id = 3, name = "_stage3_monster", value = 0, no_refresh = false }
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
		gadgets = { 6010 },
		regions = { 6023 },
		triggers = { "QUEST_FINISH_6012", "GADGET_STATE_CHANGE_6016", "GADGET_STATE_CHANGE_6017", "GADGET_STATE_CHANGE_6018", "GADGET_CREATE_6019", "GADGET_STATE_CHANGE_6022", "ENTER_REGION_6023", "ANY_GADGET_DIE_6026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 阶段1-怪物,
		monsters = { 6001, 6002, 6003, 6027, 6028 },
		gadgets = { 6020 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_6004", "ANY_MONSTER_DIE_6014", "VARIABLE_CHANGE_6015", "TIME_AXIS_PASS_6021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 阶段2-怪物,
		monsters = { 6005, 6006, 6007, 6008, 6009, 6011 },
		gadgets = { 6020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 6013 },
		triggers = { "ENTER_REGION_6013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage1_monster"为5
	if ScriptLib.GetGroupVariableValue(context, "_stage1_monster") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121006, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121006, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121002, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121011, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121012, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_6013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121006, 2)
	
	-- 创建标识为"_wave_tick"，时间节点为{4}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "_wave_tick", {4}, true)
	
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-35,y=-258,z=-30}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 500660110, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-35,y=-258,z=-30}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400121, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6014(context, evt)
	-- 针对当前group内变量名为 "_stage1_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage1_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage1_monster"为11
	if ScriptLib.GetGroupVariableValue(context, "_stage1_monster") ~= 11 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6015(context, evt)
	-- 将configid为 6010 的物件更改为状态 GadgetState.ChestOpened
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6010, GadgetState.ChestOpened) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6016(context, evt)
	if 6010 ~= evt.param2 or GadgetState.ChestLocked ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6016(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121006, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6017(context, evt)
	if 6010 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121006, 3)
	
	-- 创建标识为"_thunder_tick"，时间节点为{5}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "_thunder_tick", {5}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6018(context, evt)
	if 6010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121006, 4)
	
	-- 创建标识为"_wave_tick"，时间节点为{8}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "_wave_tick", {8}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_6019(context, evt)
	if 6010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_6019(context, evt)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, 6010, "SGV_Mechanic_Type", 0)
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_6021(context, evt)
	-- 将configid为 6020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6022(context, evt)
	if 6010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6022(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-35.61409,y=-259.57,z=-29.9867}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 500660120, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-35.61409,y=-259.57,z=-29.9867}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400122, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6023(context, evt)
	if evt.param1 ~= 6023 then return false end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220121006, 6010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6023(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-35,y=-259,z=-30}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400120, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6026(context, evt)
	if 6010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210061") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121006, EntityType.GADGET, 6020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end