-- 基础信息
local base_info = {
	group_id = 133303119
}

-- DEFS_MISCS
function LF_CheckAllValve(context)
    local state1 = ScriptLib.GetGadgetStateByConfigId(context, 0, 119002)
    local state2 = ScriptLib.GetGadgetStateByConfigId(context, 0, 119004)
    local state3 = ScriptLib.GetGadgetStateByConfigId(context, 0, 119003)
    if 201 == state1 then
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone01", 1)
    else
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone01", 0)
    end
    if 201 == state2 then
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone02", 1)
    else
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone02", 0)
    end
    if 201 == state3 then
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone03", 1)
    else
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone03", 0)
    end
    return 0
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
	-- 在地图模式上会有红色数字1,2,3。分别对应不同SGV。
	{ config_id = 119001, gadget_id = 70290416, pos = { x = -1778.818, y = 165.384, z = 3611.889 }, rot = { x = 0.000, y = 266.480, z = 0.000 }, level = 30, isOneoff = true, persistent = true, logic_state = {"SGV_VarunaStone01","SGV_VarunaStone02","SGV_VarunaStone03"}, area_id = 23 },
	-- 指向1
	{ config_id = 119002, gadget_id = 70290415, pos = { x = -1793.446, y = 168.695, z = 3626.314 }, rot = { x = 0.000, y = 58.668, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 指向3
	{ config_id = 119003, gadget_id = 70290415, pos = { x = -1759.210, y = 167.205, z = 3611.395 }, rot = { x = 0.000, y = 176.227, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 指向2
	{ config_id = 119004, gadget_id = 70290415, pos = { x = -1787.480, y = 166.192, z = 3591.590 }, rot = { x = 0.000, y = 293.621, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 1
	{ config_id = 119007, gadget_id = 70330255, pos = { x = -1780.295, y = 165.824, z = 3613.587 }, rot = { x = 0.000, y = 310.541, z = 0.000 }, level = 30, area_id = 23 },
	-- 2
	{ config_id = 119008, gadget_id = 70330255, pos = { x = -1779.767, y = 165.500, z = 3608.760 }, rot = { x = 0.000, y = 201.130, z = 0.000 }, level = 30, area_id = 23 },
	-- 3
	{ config_id = 119009, gadget_id = 70330255, pos = { x = -1774.568, y = 165.500, z = 3611.967 }, rot = { x = 356.205, y = 93.742, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 通知任务完成，净雨石留待任务转201
	{ config_id = 1119005, name = "LUA_NOTIFY_119005", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_119005", action = "action_EVENT_LUA_NOTIFY_119005" },
	-- 净雨阀201后通知SGV_VarunaStone01设1
	{ config_id = 1119006, name = "LUA_NOTIFY_119006", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "", action = "action_EVENT_LUA_NOTIFY_119006", trigger_count = 0 },
	-- 1转对
	{ config_id = 1119010, name = "GADGET_STATE_CHANGE_119010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119010", action = "action_EVENT_GADGET_STATE_CHANGE_119010", trigger_count = 0 },
	-- 2转对
	{ config_id = 1119011, name = "GADGET_STATE_CHANGE_119011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119011", action = "action_EVENT_GADGET_STATE_CHANGE_119011", trigger_count = 0 },
	-- 3转对
	{ config_id = 1119012, name = "GADGET_STATE_CHANGE_119012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119012", action = "action_EVENT_GADGET_STATE_CHANGE_119012", trigger_count = 0 },
	-- 1转错
	{ config_id = 1119013, name = "GADGET_STATE_CHANGE_119013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119013", action = "action_EVENT_GADGET_STATE_CHANGE_119013", trigger_count = 0 },
	-- 1转错
	{ config_id = 1119014, name = "GADGET_STATE_CHANGE_119014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119014", action = "action_EVENT_GADGET_STATE_CHANGE_119014", trigger_count = 0 },
	-- 2转错
	{ config_id = 1119015, name = "GADGET_STATE_CHANGE_119015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119015", action = "action_EVENT_GADGET_STATE_CHANGE_119015", trigger_count = 0 },
	-- 2转错
	{ config_id = 1119016, name = "GADGET_STATE_CHANGE_119016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119016", action = "action_EVENT_GADGET_STATE_CHANGE_119016", trigger_count = 0 },
	-- 3转错
	{ config_id = 1119017, name = "GADGET_STATE_CHANGE_119017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119017", action = "action_EVENT_GADGET_STATE_CHANGE_119017", trigger_count = 0 },
	-- 3转错
	{ config_id = 1119018, name = "GADGET_STATE_CHANGE_119018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119018", action = "action_EVENT_GADGET_STATE_CHANGE_119018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_VarunaStone01", value = 0, no_refresh = true, variable_type = 1 },
	{ config_id = 2, name = "SGV_VarunaStone02", value = 0, no_refresh = true, variable_type = 1 },
	{ config_id = 3, name = "SGV_VarunaStone03", value = 0, no_refresh = true, variable_type = 1 }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	sub_flow_type = 1,
	secure_suite_index = 1,
	suite = 1,
	end_suite = 3,
	rand_suite = false,
	father_quest = 73016,
	quest_config = {
	}
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 119001, state = 0 },
			{ config_id = 119002, state = 902 },
			{ config_id = 119003, state = 903 },
			{ config_id = 119004, state = 902 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = -1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = -1, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = -1, no_refresh = true, variable_type = 1 }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 119001, state = 901 },
			{ config_id = 119002, state = 202 },
			{ config_id = 119003, state = 203 },
			{ config_id = 119004, state = 202 },
			{ config_id = 119007, state = 0 },
			{ config_id = 119008, state = 0 },
			{ config_id = 119009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "LUA_NOTIFY_119005", "LUA_NOTIFY_119006", "GADGET_STATE_CHANGE_119010", "GADGET_STATE_CHANGE_119011", "GADGET_STATE_CHANGE_119012", "GADGET_STATE_CHANGE_119013", "GADGET_STATE_CHANGE_119014", "GADGET_STATE_CHANGE_119015", "GADGET_STATE_CHANGE_119016", "GADGET_STATE_CHANGE_119017", "GADGET_STATE_CHANGE_119018" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = 0, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = 0, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = 0, no_refresh = true, variable_type = 1 }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 119001, state = 901 },
			{ config_id = 119002, state = 901 },
			{ config_id = 119003, state = 901 },
			{ config_id = 119004, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = 1, no_refresh = true, variable_type = 1 }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 119001, state = 201 },
			{ config_id = 119002, state = 901 },
			{ config_id = 119003, state = 901 },
			{ config_id = 119004, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = 1, no_refresh = true, variable_type = 1 }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LUA_NOTIFY_119005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303119, 119002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303119, 119003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303119, 119004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_119005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301613_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_119006(context, evt)
	LF_CheckAllValve(context)
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119010(context, evt)
	if 119002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303119, EntityType.GADGET, 119007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119011(context, evt)
	if 119004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303119, EntityType.GADGET, 119008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119012(context, evt)
	if 119003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303119, EntityType.GADGET, 119009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119013(context, evt)
	if 119002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119013(context, evt)
	-- 创建id为119007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 119007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119014(context, evt)
	if 119002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119014(context, evt)
	-- 创建id为119007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 119007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119015(context, evt)
	if 119004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119015(context, evt)
	-- 创建id为119008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 119008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119016(context, evt)
	if 119004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119016(context, evt)
	-- 创建id为119008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 119008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119017(context, evt)
	if 119003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119017(context, evt)
	-- 创建id为119009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 119009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119018(context, evt)
	if 119003 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119018(context, evt)
	-- 创建id为119009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 119009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end