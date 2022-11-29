-- 基础信息
local base_info = {
	group_id = 155007011
}

-- DEFS_MISCS
function refreshgadgetStateByGroupVar(context, groupid)

end

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
	{ config_id = 11001, gadget_id = 70290194, pos = { x = -95.846, y = 221.838, z = 1574.306 }, rot = { x = 0.000, y = 56.900, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 11002, gadget_id = 70290195, pos = { x = -35.400, y = 213.100, z = 1488.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 1
	{ config_id = 11004, gadget_id = 70230085, pos = { x = -91.383, y = 240.020, z = 1578.664 }, rot = { x = 0.000, y = 326.000, z = 0.000 }, level = 36, area_id = 200 },
	-- 2
	{ config_id = 11005, gadget_id = 70230086, pos = { x = -91.344, y = 233.970, z = 1578.570 }, rot = { x = 0.000, y = 326.000, z = 0.000 }, level = 36, area_id = 200 },
	-- 3
	{ config_id = 11006, gadget_id = 70230087, pos = { x = -101.524, y = 240.630, z = 1571.487 }, rot = { x = 0.000, y = 326.000, z = 0.000 }, level = 36, area_id = 200 },
	-- 4
	{ config_id = 11007, gadget_id = 70230088, pos = { x = -101.507, y = 234.250, z = 1571.498 }, rot = { x = 0.000, y = 326.000, z = 0.000 }, level = 36, area_id = 200 },
	-- 5
	{ config_id = 11008, gadget_id = 70230089, pos = { x = -101.426, y = 247.490, z = 1571.324 }, rot = { x = 0.000, y = 329.266, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 11013, gadget_id = 70350081, pos = { x = -105.378, y = 220.893, z = 1588.724 }, rot = { x = 0.000, y = 284.742, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 11023, shape = RegionShape.CUBIC, size = { x = 50.000, y = 25.000, z = 70.000 }, pos = { x = -108.976, y = 220.903, z = 1579.847 }, area_id = 200 },
	{ config_id = 11024, shape = RegionShape.CUBIC, size = { x = 50.000, y = 25.000, z = 70.000 }, pos = { x = -108.976, y = 220.903, z = 1579.847 }, area_id = 200 }
}

-- 触发器
triggers = {
	-- 1
	{ config_id = 1011003, name = "VARIABLE_CHANGE_11003", event = EventType.EVENT_VARIABLE_CHANGE, source = "Rune_01", condition = "condition_EVENT_VARIABLE_CHANGE_11003", action = "action_EVENT_VARIABLE_CHANGE_11003", trigger_count = 0 },
	-- 2
	{ config_id = 1011009, name = "VARIABLE_CHANGE_11009", event = EventType.EVENT_VARIABLE_CHANGE, source = "Rune_02", condition = "condition_EVENT_VARIABLE_CHANGE_11009", action = "action_EVENT_VARIABLE_CHANGE_11009", trigger_count = 0 },
	-- 3
	{ config_id = 1011010, name = "VARIABLE_CHANGE_11010", event = EventType.EVENT_VARIABLE_CHANGE, source = "Rune_03", condition = "condition_EVENT_VARIABLE_CHANGE_11010", action = "action_EVENT_VARIABLE_CHANGE_11010", trigger_count = 0 },
	-- 4
	{ config_id = 1011011, name = "VARIABLE_CHANGE_11011", event = EventType.EVENT_VARIABLE_CHANGE, source = "Rune_04", condition = "condition_EVENT_VARIABLE_CHANGE_11011", action = "action_EVENT_VARIABLE_CHANGE_11011", trigger_count = 0 },
	-- 5
	{ config_id = 1011012, name = "VARIABLE_CHANGE_11012", event = EventType.EVENT_VARIABLE_CHANGE, source = "Rune_05", condition = "condition_EVENT_VARIABLE_CHANGE_11012", action = "action_EVENT_VARIABLE_CHANGE_11012", trigger_count = 0 },
	-- 回滚保护
	{ config_id = 1011014, name = "GROUP_LOAD_11014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_11014", trigger_count = 0 },
	-- 7224220 Start
	{ config_id = 1011015, name = "QUEST_START_11015", event = EventType.EVENT_QUEST_START, source = "7224220", condition = "", action = "action_EVENT_QUEST_START_11015", trigger_count = 0 },
	{ config_id = 1011016, name = "SELECT_OPTION_11016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11016", action = "action_EVENT_SELECT_OPTION_11016", trigger_count = 0 },
	-- 7224208 Start
	{ config_id = 1011017, name = "QUEST_START_11017", event = EventType.EVENT_QUEST_START, source = "7224208", condition = "", action = "action_EVENT_QUEST_START_11017", trigger_count = 0 },
	{ config_id = 1011018, name = "GADGET_STATE_CHANGE_11018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11018", action = "action_EVENT_GADGET_STATE_CHANGE_11018", trigger_count = 0 },
	-- 7224209 Start
	{ config_id = 1011019, name = "QUEST_START_11019", event = EventType.EVENT_QUEST_START, source = "7224209", condition = "", action = "action_EVENT_QUEST_START_11019", trigger_count = 0 },
	-- 检测玩家是否已经全部激活
	{ config_id = 1011020, name = "QUEST_START_11020", event = EventType.EVENT_QUEST_START, source = "7224219", condition = "", action = "action_EVENT_QUEST_START_11020", trigger_count = 0 },
	-- 回滚保护增加option
	{ config_id = 1011021, name = "GROUP_LOAD_11021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_11021", trigger_count = 0 },
	-- 断线重连保护
	{ config_id = 1011022, name = "GROUP_LOAD_11022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_11022", action = "action_EVENT_GROUP_LOAD_11022", trigger_count = 0 },
	{ config_id = 1011023, name = "ENTER_REGION_11023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11023", action = "action_EVENT_ENTER_REGION_11023", trigger_count = 0 },
	{ config_id = 1011024, name = "LEAVE_REGION_11024", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_11024", action = "action_EVENT_LEAVE_REGION_11024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "activecount", value = 0, no_refresh = true },
	{ config_id = 2, name = "Rune_01", value = 0, no_refresh = true },
	{ config_id = 3, name = "Rune_02", value = 0, no_refresh = true },
	{ config_id = 4, name = "Rune_03", value = 0, no_refresh = true },
	{ config_id = 5, name = "Rune_04", value = 0, no_refresh = true },
	{ config_id = 6, name = "Rune_05", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 11001, state = 0 },
			{ config_id = 11002, state = 0 },
			{ config_id = 11004, state = 0 },
			{ config_id = 11005, state = 0 },
			{ config_id = 11006, state = 0 },
			{ config_id = 11007, state = 0 },
			{ config_id = 11008, state = 0 },
			{ config_id = 11013, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_11003", "VARIABLE_CHANGE_11009", "VARIABLE_CHANGE_11010", "VARIABLE_CHANGE_11011", "VARIABLE_CHANGE_11012", "GROUP_LOAD_11014", "QUEST_START_11015", "QUEST_START_11020" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "activecount", value = 0, no_refresh = true },
			{ config_id = 2, name = "Rune_01", value = 0, no_refresh = true },
			{ config_id = 3, name = "Rune_02", value = 0, no_refresh = true },
			{ config_id = 4, name = "Rune_03", value = 0, no_refresh = true },
			{ config_id = 5, name = "Rune_04", value = 0, no_refresh = true },
			{ config_id = 6, name = "Rune_05", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 11001, state = 0 },
			{ config_id = 11002, state = 0 },
			{ config_id = 11004, state = 201 },
			{ config_id = 11005, state = 201 },
			{ config_id = 11006, state = 201 },
			{ config_id = 11007, state = 201 },
			{ config_id = 11008, state = 201 },
			{ config_id = 11013, state = 0 }
		},
		monsters = {
		},
		regions = { 11023, 11024 },
		triggers = { "SELECT_OPTION_11016", "QUEST_START_11017", "GROUP_LOAD_11021", "ENTER_REGION_11023", "LEAVE_REGION_11024" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "activecount", value = 5, no_refresh = true },
			{ config_id = 2, name = "Rune_01", value = 1, no_refresh = true },
			{ config_id = 3, name = "Rune_02", value = 1, no_refresh = true },
			{ config_id = 4, name = "Rune_03", value = 1, no_refresh = true },
			{ config_id = 5, name = "Rune_04", value = 1, no_refresh = true },
			{ config_id = 6, name = "Rune_05", value = 1, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 11001, state = 201 },
			{ config_id = 11002, state = 201 },
			{ config_id = 11013, state = 201 }
		},
		monsters = {
		},
		regions = { 11023, 11024 },
		triggers = { "GADGET_STATE_CHANGE_11018", "QUEST_START_11019", "GROUP_LOAD_11022", "ENTER_REGION_11023", "LEAVE_REGION_11024" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "activecount", value = 5, no_refresh = true },
			{ config_id = 2, name = "Rune_01", value = 1, no_refresh = true },
			{ config_id = 3, name = "Rune_02", value = 1, no_refresh = true },
			{ config_id = 4, name = "Rune_03", value = 1, no_refresh = true },
			{ config_id = 5, name = "Rune_04", value = 1, no_refresh = true },
			{ config_id = 6, name = "Rune_05", value = 1, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 11001, state = 201 },
			{ config_id = 11013, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_11022" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "activecount", value = 5, no_refresh = true },
			{ config_id = 2, name = "Rune_01", value = 1, no_refresh = true },
			{ config_id = 3, name = "Rune_02", value = 1, no_refresh = true },
			{ config_id = 4, name = "Rune_03", value = 1, no_refresh = true },
			{ config_id = 5, name = "Rune_04", value = 1, no_refresh = true },
			{ config_id = 6, name = "Rune_05", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Rune_01"为1
	if ScriptLib.GetGroupVariableValue(context, "Rune_01") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_ActiveRune_01") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 11008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Rune_02"为1
	if ScriptLib.GetGroupVariableValue(context, "Rune_02") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_ActiveRune_02") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 11005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Rune_03"为1
	if ScriptLib.GetGroupVariableValue(context, "Rune_03") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_ActiveRune_03") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 11007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Rune_04"为1
	if ScriptLib.GetGroupVariableValue(context, "Rune_04") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_ActiveRune_04") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 11006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Rune_05"为1
	if ScriptLib.GetGroupVariableValue(context, "Rune_05") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_ActiveRune_05") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 11004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11014(context, evt)
		if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_01", 155007092)  == 1 then 
				if ScriptLib.GetGroupVariableValue(context, "Rune_01") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_01", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11008, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_01")
				end
		
			end
		
			if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_02", 155007092) == 1 then 
				if ScriptLib.GetGroupVariableValue(context, "Rune_02") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_02", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11005, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_02")
				end
			
			end
		
			if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_03", 155007092) == 1 then 
				if ScriptLib.GetGroupVariableValue(context, "Rune_03") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_03", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11007, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_03")
				end
		
			end
		
			if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_04", 155007092) == 1 then 
		
				if ScriptLib.GetGroupVariableValue(context, "Rune_04") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_04", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11006, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_04")
				end
		
			end
		
			if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_05", 155007092) == 1 then 
		
				if ScriptLib.GetGroupVariableValue(context, "Rune_05") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_05", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11004, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_05")
				end
		
			end
			
			return 0
end

-- 触发操作
function action_EVENT_QUEST_START_11015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155007011, 11013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155007011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11016(context, evt)
	-- 判断是gadgetid 11013 option_id 7
	if 11013 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_ActiveGate") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 155007011 ；指定config：11013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 155007011, 11013, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 11013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_11017(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155007011, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11018(context, evt)
	if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 155007011, 11002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_ThroughGate") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_11019(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155007011, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_11020(context, evt)
		if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_01", 155007092)  == 1 then 
				if ScriptLib.GetGroupVariableValue(context, "Rune_01") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_01", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11008, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_01")
				end
		
			end
		
			if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_02", 155007092) == 1 then 
				if ScriptLib.GetGroupVariableValue(context, "Rune_02") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_02", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11005, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_02")
				end
			
			end
		
			if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_03", 155007092) == 1 then 
				if ScriptLib.GetGroupVariableValue(context, "Rune_03") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_03", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11007, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_03")
				end
		
			end
		
			if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_04", 155007092) == 1 then 
		
				if ScriptLib.GetGroupVariableValue(context, "Rune_04") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_04", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11006, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_04")
				end
		
			end
		
			if ScriptLib.GetGroupVariableValueByGroup(context, "Rune_05", 155007092) == 1 then 
		
				if ScriptLib.GetGroupVariableValue(context, "Rune_05") ~= 1 then 
					ScriptLib.SetGroupVariableValue(context, "Rune_05", 1) 
				else
					ScriptLib.SetGadgetStateByConfigId(context, 11004, GadgetState.GearStart)
					ScriptLib.AddQuestProgress(context, "72242_ActiveRune_05")
				end
		
			end
			
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155007011, 11013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_11022(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 155007011, 11002) == 101 then
	return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_ThroughGate") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11023(context, evt)
	if evt.param1 ~= 11023 then return false end
	
	-- 判断是区域11023
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 11023 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11023(context, evt)
	
	
		ScriptLib.PrintContextLog(context, "NonEuclid : 非欧门玩家进入区域，去掉普通石头")
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 11002,"SGV_No_Normal_Gate", 1)
		return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_11024(context, evt)
	-- 判断是区域11024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 11024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_11024(context, evt)
	
		ScriptLib.PrintContextLog(context, "NonEuclid : 非欧门玩家离开区域，加载普通石头")	
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 11002,"SGV_No_Normal_Gate", 0)
		return 0
end