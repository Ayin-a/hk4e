-- 基础信息
local base_info = {
	group_id = 133303118
}

-- DEFS_MISCS
function LF_CheckAllValve(context)
    local state1 = ScriptLib.GetGadgetStateByConfigId(context, 0, 118002)
    local state2 = ScriptLib.GetGadgetStateByConfigId(context, 0, 118004)
    local state3 = ScriptLib.GetGadgetStateByConfigId(context, 0, 118003)
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
	{ config_id = 118001, gadget_id = 70290416, pos = { x = -1118.870, y = 168.850, z = 3657.060 }, rot = { x = 0.000, y = 203.651, z = 0.000 }, level = 30, isOneoff = true, persistent = true, logic_state = {"SGV_VarunaStone01","SGV_VarunaStone02","SGV_VarunaStone03"}, area_id = 23 },
	-- 指向1
	{ config_id = 118002, gadget_id = 70290415, pos = { x = -1141.279, y = 197.976, z = 3652.994 }, rot = { x = 0.000, y = 348.437, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 指向3
	{ config_id = 118003, gadget_id = 70290415, pos = { x = -1113.128, y = 181.719, z = 3670.610 }, rot = { x = 0.000, y = 112.181, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 指向2
	{ config_id = 118004, gadget_id = 70290415, pos = { x = -1102.981, y = 206.173, z = 3639.253 }, rot = { x = 0.000, y = 234.301, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 3
	{ config_id = 118007, gadget_id = 70330255, pos = { x = -1118.703, y = 168.700, z = 3658.449 }, rot = { x = 314.419, y = 14.570, z = 349.483 }, level = 30, area_id = 23 },
	-- 1
	{ config_id = 118008, gadget_id = 70330255, pos = { x = -1120.340, y = 168.700, z = 3656.799 }, rot = { x = 311.176, y = 255.010, z = 0.000 }, level = 30, area_id = 23 },
	-- 2
	{ config_id = 118009, gadget_id = 70330255, pos = { x = -1117.591, y = 168.700, z = 3655.831 }, rot = { x = 306.192, y = 123.882, z = 0.000 }, level = 30, area_id = 23 },
	-- 3
	{ config_id = 118010, gadget_id = 70330255, pos = { x = -1119.643, y = 183.925, z = 3661.053 }, rot = { x = 0.000, y = 37.221, z = 0.000 }, level = 30, area_id = 23 },
	-- 1
	{ config_id = 118011, gadget_id = 70330255, pos = { x = -1129.482, y = 192.793, z = 3655.181 }, rot = { x = 323.779, y = 245.797, z = 5.475 }, level = 30, area_id = 23 },
	-- 2
	{ config_id = 118012, gadget_id = 70330255, pos = { x = -1111.803, y = 209.218, z = 3647.119 }, rot = { x = 4.503, y = 130.637, z = 356.236 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 通知任务完成，净雨石留待任务转201
	{ config_id = 1118005, name = "LUA_NOTIFY_118005", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_118005", action = "action_EVENT_LUA_NOTIFY_118005" },
	-- 净雨阀201后通知SGV_VarunaStone01设1
	{ config_id = 1118006, name = "LUA_NOTIFY_118006", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "", action = "action_EVENT_LUA_NOTIFY_118006", trigger_count = 0 },
	-- 1转对
	{ config_id = 1118013, name = "GADGET_STATE_CHANGE_118013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118013", action = "action_EVENT_GADGET_STATE_CHANGE_118013", trigger_count = 0 },
	-- 1转错
	{ config_id = 1118014, name = "GADGET_STATE_CHANGE_118014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118014", action = "action_EVENT_GADGET_STATE_CHANGE_118014", trigger_count = 0 },
	-- 2转对
	{ config_id = 1118015, name = "GADGET_STATE_CHANGE_118015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118015", action = "action_EVENT_GADGET_STATE_CHANGE_118015", trigger_count = 0 },
	-- 2转错
	{ config_id = 1118016, name = "GADGET_STATE_CHANGE_118016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118016", action = "action_EVENT_GADGET_STATE_CHANGE_118016", trigger_count = 0 },
	-- 3转对
	{ config_id = 1118017, name = "GADGET_STATE_CHANGE_118017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118017", action = "action_EVENT_GADGET_STATE_CHANGE_118017", trigger_count = 0 },
	-- 3转错
	{ config_id = 1118018, name = "GADGET_STATE_CHANGE_118018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118018", action = "action_EVENT_GADGET_STATE_CHANGE_118018", trigger_count = 0 },
	-- 1转错
	{ config_id = 1118019, name = "GADGET_STATE_CHANGE_118019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118019", action = "action_EVENT_GADGET_STATE_CHANGE_118019", trigger_count = 0 },
	-- 2转错
	{ config_id = 1118020, name = "GADGET_STATE_CHANGE_118020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118020", action = "action_EVENT_GADGET_STATE_CHANGE_118020", trigger_count = 0 },
	-- 3转错
	{ config_id = 1118021, name = "GADGET_STATE_CHANGE_118021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118021", action = "action_EVENT_GADGET_STATE_CHANGE_118021", trigger_count = 0 }
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
	father_quest = 73015,
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
			{ config_id = 118001, state = 0 },
			{ config_id = 118002, state = 903 },
			{ config_id = 118003, state = 903 },
			{ config_id = 118004, state = 902 }
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
			{ config_id = 118001, state = 901 },
			{ config_id = 118002, state = 203 },
			{ config_id = 118003, state = 203 },
			{ config_id = 118004, state = 202 },
			{ config_id = 118007, state = 0 },
			{ config_id = 118008, state = 0 },
			{ config_id = 118009, state = 0 },
			{ config_id = 118010, state = 0 },
			{ config_id = 118011, state = 0 },
			{ config_id = 118012, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "LUA_NOTIFY_118005", "LUA_NOTIFY_118006", "GADGET_STATE_CHANGE_118013", "GADGET_STATE_CHANGE_118014", "GADGET_STATE_CHANGE_118015", "GADGET_STATE_CHANGE_118016", "GADGET_STATE_CHANGE_118017", "GADGET_STATE_CHANGE_118018", "GADGET_STATE_CHANGE_118019", "GADGET_STATE_CHANGE_118020", "GADGET_STATE_CHANGE_118021" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = 0, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = 0, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = 0, no_refresh = true, variable_type = 1 }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 118001, state = 901 },
			{ config_id = 118002, state = 901 },
			{ config_id = 118003, state = 901 },
			{ config_id = 118004, state = 901 }
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
			{ config_id = 118001, state = 201 },
			{ config_id = 118002, state = 901 },
			{ config_id = 118003, state = 901 },
			{ config_id = 118004, state = 901 }
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
function condition_EVENT_LUA_NOTIFY_118005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303118, 118002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303118, 118003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303118, 118004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_118005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301514_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_118006(context, evt)
	LF_CheckAllValve(context)
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118013(context, evt)
	if 118002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303118, EntityType.GADGET, 118008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303118, EntityType.GADGET, 118011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118014(context, evt)
	if 118002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118014(context, evt)
	-- 创建id为118008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为118011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118015(context, evt)
	if 118004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303118, EntityType.GADGET, 118009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303118, EntityType.GADGET, 118012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118016(context, evt)
	if 118004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118016(context, evt)
	-- 创建id为118009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为118012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118017(context, evt)
	if 118003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303118, EntityType.GADGET, 118007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303118, EntityType.GADGET, 118010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118018(context, evt)
	if 118003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118018(context, evt)
	-- 创建id为118007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为118010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118019(context, evt)
	if 118002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118019(context, evt)
	-- 创建id为118008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为118011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118020(context, evt)
	if 118004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118020(context, evt)
	-- 创建id为118009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为118012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118021(context, evt)
	if 118003 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118021(context, evt)
	-- 创建id为118007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为118010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end