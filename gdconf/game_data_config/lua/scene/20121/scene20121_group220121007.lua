-- 基础信息
local base_info = {
	group_id = 220121007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 21010701, pos = { x = -40.965, y = -396.120, z = -38.189 }, rot = { x = 0.250, y = 351.267, z = 0.430 }, level = 1, drop_id = 1000100 },
	{ config_id = 7002, monster_id = 21020201, pos = { x = -34.684, y = -396.120, z = -40.307 }, rot = { x = 0.250, y = 351.267, z = 0.430 }, level = 1, drop_id = 1000100 },
	{ config_id = 7003, monster_id = 21010701, pos = { x = -29.410, y = -396.120, z = -36.370 }, rot = { x = 0.250, y = 351.267, z = 0.430 }, level = 1, drop_id = 1000100 },
	{ config_id = 7005, monster_id = 20011201, pos = { x = -42.402, y = -396.120, z = -24.706 }, rot = { x = 0.000, y = 144.765, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7006, monster_id = 20011301, pos = { x = -35.670, y = -396.120, z = -21.642 }, rot = { x = 0.000, y = 184.587, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7009, monster_id = 21020501, pos = { x = -45.073, y = -396.120, z = -30.928 }, rot = { x = 0.000, y = 90.072, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7032, monster_id = 20011201, pos = { x = -29.195, y = -396.120, z = -23.256 }, rot = { x = 0.000, y = 207.702, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7010, gadget_id = 70290296, pos = { x = -35.849, y = -395.987, z = -30.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, gadget_id = 70290255, pos = { x = -36.116, y = -395.679, z = -30.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7012, gadget_id = 70290256, pos = { x = -35.849, y = -395.987, z = -30.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7027, gadget_id = 70900201, pos = { x = -35.849, y = -393.035, z = -30.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 玩家进入范围，解开机关封印
	{ config_id = 7013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -35.932, y = -395.503, z = -29.972 } },
	{ config_id = 7026, shape = RegionShape.CUBIC, size = { x = 130.000, y = 135.000, z = 130.000 }, pos = { x = -35.164, y = -335.410, z = -31.060 } },
	-- 下落完成
	{ config_id = 7029, shape = RegionShape.CUBIC, size = { x = 40.000, y = 15.000, z = 40.000 }, pos = { x = -35.833, y = -397.860, z = -30.686 } }
}

-- 触发器
triggers = {
	-- 监听变为可攻击状态。
	{ config_id = 1007004, name = "GADGET_STATE_CHANGE_7004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7004", action = "action_EVENT_GADGET_STATE_CHANGE_7004", trigger_count = 0 },
	-- 玩家进入范围，解开机关封印
	{ config_id = 1007013, name = "ENTER_REGION_7013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7013", action = "action_EVENT_ENTER_REGION_7013" },
	{ config_id = 1007014, name = "ANY_MONSTER_DIE_7014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_7014", trigger_count = 0 },
	{ config_id = 1007015, name = "VARIABLE_CHANGE_7015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7015", action = "action_EVENT_VARIABLE_CHANGE_7015", trigger_count = 0 },
	-- 监听转到101召唤第一波怪
	{ config_id = 1007016, name = "GADGET_STATE_CHANGE_7016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7016", action = "action_EVENT_GADGET_STATE_CHANGE_7016", trigger_count = 0 },
	-- 监听转到103，召唤第二波怪
	{ config_id = 1007017, name = "GADGET_STATE_CHANGE_7017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7017", action = "action_EVENT_GADGET_STATE_CHANGE_7017", trigger_count = 0 },
	-- 监听转到201，召唤第三波怪
	{ config_id = 1007018, name = "GADGET_STATE_CHANGE_7018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7018", action = "action_EVENT_GADGET_STATE_CHANGE_7018", trigger_count = 0 },
	{ config_id = 1007019, name = "GADGET_CREATE_7019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7019", action = "action_EVENT_GADGET_CREATE_7019", trigger_count = 0 },
	{ config_id = 1007020, name = "ANY_MONSTER_DIE_7020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_7020", trigger_count = 0 },
	{ config_id = 1007021, name = "VARIABLE_CHANGE_7021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7021", action = "action_EVENT_VARIABLE_CHANGE_7021", trigger_count = 0 },
	{ config_id = 1007022, name = "ANY_MONSTER_DIE_7022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_7022", trigger_count = 0 },
	{ config_id = 1007023, name = "VARIABLE_CHANGE_7023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7023", action = "action_EVENT_VARIABLE_CHANGE_7023", trigger_count = 0 },
	{ config_id = 1007024, name = "TIME_AXIS_PASS_7024", event = EventType.EVENT_TIME_AXIS_PASS, source = "_wave_tick", condition = "", action = "action_EVENT_TIME_AXIS_PASS_7024", trigger_count = 0 },
	{ config_id = 1007025, name = "TIME_AXIS_PASS_7025", event = EventType.EVENT_TIME_AXIS_PASS, source = "_wave_tick", condition = "", action = "action_EVENT_TIME_AXIS_PASS_7025", trigger_count = 0 },
	{ config_id = 1007026, name = "ENTER_REGION_7026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7026", action = "action_EVENT_ENTER_REGION_7026" },
	-- 下落完成
	{ config_id = 1007029, name = "ENTER_REGION_7029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7029", action = "action_EVENT_ENTER_REGION_7029" },
	-- 机关被摧毁逻辑处理
	{ config_id = 1007031, name = "ANY_GADGET_DIE_7031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7031", action = "action_EVENT_ANY_GADGET_DIE_7031" },
	-- 对话结束清场2层
	{ config_id = 1007034, name = "QUEST_FINISH_7034", event = EventType.EVENT_QUEST_FINISH, source = "1101313", condition = "", action = "action_EVENT_QUEST_FINISH_7034" }
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
	suite = 5,
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
		gadgets = { 7010, 7027 },
		regions = { 7013, 7026, 7029 },
		triggers = { "GADGET_STATE_CHANGE_7004", "ENTER_REGION_7013", "GADGET_STATE_CHANGE_7016", "GADGET_STATE_CHANGE_7017", "GADGET_STATE_CHANGE_7018", "GADGET_CREATE_7019", "ENTER_REGION_7026", "ENTER_REGION_7029", "ANY_GADGET_DIE_7031", "QUEST_FINISH_7034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 阶段1-怪物,
		monsters = { 7001, 7002, 7003, 7005, 7006, 7032 },
		gadgets = { 7011, 7012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7014", "VARIABLE_CHANGE_7015", "TIME_AXIS_PASS_7024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 阶段2-怪物,
		monsters = { 7009 },
		gadgets = { 7012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7020", "VARIABLE_CHANGE_7021" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 7011, 7012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7022", "VARIABLE_CHANGE_7023", "TIME_AXIS_PASS_7024", "TIME_AXIS_PASS_7025" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7004(context, evt)
	if 7010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7004(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-36,y=-395,z=-37}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400122, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7013(context, evt)
	if evt.param1 ~= 7013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7013(context, evt)
	-- 将configid为 7010 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7010, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-35,y=-395,z=-29}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400121, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7014(context, evt)
	-- 针对当前group内变量名为 "_stage1_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage1_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage1_monster"为6
	if ScriptLib.GetGroupVariableValue(context, "_stage1_monster") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7015(context, evt)
	-- 将configid为 7010 的物件更改为状态 GadgetState.ChestOpened
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7010, GadgetState.ChestOpened) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7016(context, evt)
	if 7010 ~= evt.param2 or GadgetState.ChestLocked ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121007, 2)
	
	-- 创建标识为"_wave_tick"，时间节点为{4}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "_wave_tick", {4}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7017(context, evt)
	if 7010 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121007, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-36,y=-395,z=-33}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400121, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7018(context, evt)
	if 7010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121007, 4)
	
	-- 创建标识为"_wave_tick"，时间节点为{8}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "_wave_tick", {8}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7019(context, evt)
	if 7010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7019(context, evt)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, 7010, "SGV_Mechanic_Type", 1)
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7020(context, evt)
	-- 针对当前group内变量名为 "_stage2_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage2_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage2_monster"为1
	if ScriptLib.GetGroupVariableValue(context, "_stage2_monster") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7021(context, evt)
	-- 将configid为 7010 的物件更改为状态 GadgetState.ChestBramble
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7010, GadgetState.ChestBramble) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7022(context, evt)
	-- 针对当前group内变量名为 "_stage3_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage3_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage3_monster"为3
	if ScriptLib.GetGroupVariableValue(context, "_stage3_monster") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7023(context, evt)
	-- 将configid为 7010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_7024(context, evt)
	-- 将configid为 7012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_7025(context, evt)
	-- 将configid为 7012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7026(context, evt)
	if evt.param1 ~= 7026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	ScriptLib.SetWeatherAreaState(context, 10068,1)
	ScriptLib.EnterWeatherArea(context, 10068)
	
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210072") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7029(context, evt)
	if evt.param1 ~= 7029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7031(context, evt)
	if 7010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121007, EntityType.GADGET, 7012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_7034(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121007, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121004, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end