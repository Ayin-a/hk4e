-- 基础信息
local base_info = {
	group_id = 111101104
}

-- Trigger变量
local defs = {
	change1 = 0,
	change2 = 0,
	change3 = 0,
	change4 = 0,
	change5 = 0,
	change6 = 0,
	change7 = 0,
	change8 = 0,
	change9 = 0,
	group_id = 111101104,
	gadget_1 = 104001,
	gadget_2 = 104002,
	gadget_3 = 104003,
	gadget_4 = 104004,
	gadget_5 = 104005,
	gadget_6 = 104006,
	gadget_7 = 104007,
	gadget_8 = 104008,
	gadget_9 = 104009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104032, monster_id = 26040101, pos = { x = 2150.537, y = 237.271, z = -1543.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "岩龙蜥" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104001, gadget_id = 70900051, pos = { x = 2142.219, y = 238.164, z = -1533.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 104002, gadget_id = 70900051, pos = { x = 2142.156, y = 238.202, z = -1529.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 104003, gadget_id = 70900051, pos = { x = 2142.448, y = 238.261, z = -1524.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 104004, gadget_id = 70900051, pos = { x = 2145.304, y = 238.111, z = -1533.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 104005, gadget_id = 70900051, pos = { x = 2145.195, y = 238.140, z = -1529.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 104006, gadget_id = 70900051, pos = { x = 2145.311, y = 238.237, z = -1525.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 104007, gadget_id = 70900051, pos = { x = 2148.559, y = 238.323, z = -1533.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 104008, gadget_id = 70900051, pos = { x = 2148.693, y = 238.450, z = -1529.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 104009, gadget_id = 70900051, pos = { x = 2148.505, y = 238.332, z = -1525.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104010, name = "GADGET_STATE_CHANGE_104010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104010", action = "action_EVENT_GADGET_STATE_CHANGE_104010", trigger_count = 0 },
	{ config_id = 1104011, name = "GADGET_STATE_CHANGE_104011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104011", action = "action_EVENT_GADGET_STATE_CHANGE_104011", trigger_count = 0 },
	{ config_id = 1104012, name = "VARIABLE_CHANGE_104012", event = EventType.EVENT_VARIABLE_CHANGE, source = "change1", condition = "condition_EVENT_VARIABLE_CHANGE_104012", action = "action_EVENT_VARIABLE_CHANGE_104012", trigger_count = 0 },
	{ config_id = 1104013, name = "VARIABLE_CHANGE_104013", event = EventType.EVENT_VARIABLE_CHANGE, source = "change1", condition = "condition_EVENT_VARIABLE_CHANGE_104013", action = "action_EVENT_VARIABLE_CHANGE_104013", trigger_count = 0 },
	{ config_id = 1104014, name = "GADGET_STATE_CHANGE_104014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104014", action = "action_EVENT_GADGET_STATE_CHANGE_104014", trigger_count = 0 },
	{ config_id = 1104015, name = "GADGET_STATE_CHANGE_104015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104015", action = "action_EVENT_GADGET_STATE_CHANGE_104015", trigger_count = 0 },
	{ config_id = 1104016, name = "VARIABLE_CHANGE_104016", event = EventType.EVENT_VARIABLE_CHANGE, source = "change2", condition = "condition_EVENT_VARIABLE_CHANGE_104016", action = "action_EVENT_VARIABLE_CHANGE_104016", trigger_count = 0 },
	{ config_id = 1104017, name = "VARIABLE_CHANGE_104017", event = EventType.EVENT_VARIABLE_CHANGE, source = "change2", condition = "condition_EVENT_VARIABLE_CHANGE_104017", action = "action_EVENT_VARIABLE_CHANGE_104017", trigger_count = 0 },
	{ config_id = 1104018, name = "GADGET_STATE_CHANGE_104018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104018", action = "action_EVENT_GADGET_STATE_CHANGE_104018", trigger_count = 0 },
	{ config_id = 1104019, name = "GADGET_STATE_CHANGE_104019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104019", action = "action_EVENT_GADGET_STATE_CHANGE_104019", trigger_count = 0 },
	{ config_id = 1104020, name = "VARIABLE_CHANGE_104020", event = EventType.EVENT_VARIABLE_CHANGE, source = "change3", condition = "condition_EVENT_VARIABLE_CHANGE_104020", action = "action_EVENT_VARIABLE_CHANGE_104020", trigger_count = 0 },
	{ config_id = 1104021, name = "VARIABLE_CHANGE_104021", event = EventType.EVENT_VARIABLE_CHANGE, source = "change3", condition = "condition_EVENT_VARIABLE_CHANGE_104021", action = "action_EVENT_VARIABLE_CHANGE_104021", trigger_count = 0 },
	{ config_id = 1104022, name = "GADGET_STATE_CHANGE_104022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104022", action = "action_EVENT_GADGET_STATE_CHANGE_104022", trigger_count = 0 },
	{ config_id = 1104023, name = "GADGET_STATE_CHANGE_104023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104023", action = "action_EVENT_GADGET_STATE_CHANGE_104023", trigger_count = 0 },
	{ config_id = 1104024, name = "VARIABLE_CHANGE_104024", event = EventType.EVENT_VARIABLE_CHANGE, source = "change4", condition = "condition_EVENT_VARIABLE_CHANGE_104024", action = "action_EVENT_VARIABLE_CHANGE_104024", trigger_count = 0 },
	{ config_id = 1104025, name = "VARIABLE_CHANGE_104025", event = EventType.EVENT_VARIABLE_CHANGE, source = "change4", condition = "condition_EVENT_VARIABLE_CHANGE_104025", action = "action_EVENT_VARIABLE_CHANGE_104025", trigger_count = 0 },
	{ config_id = 1104026, name = "GADGET_STATE_CHANGE_104026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104026", action = "action_EVENT_GADGET_STATE_CHANGE_104026", trigger_count = 0 },
	{ config_id = 1104027, name = "GADGET_STATE_CHANGE_104027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104027", action = "action_EVENT_GADGET_STATE_CHANGE_104027", trigger_count = 0 },
	{ config_id = 1104028, name = "VARIABLE_CHANGE_104028", event = EventType.EVENT_VARIABLE_CHANGE, source = "change5", condition = "condition_EVENT_VARIABLE_CHANGE_104028", action = "action_EVENT_VARIABLE_CHANGE_104028", trigger_count = 0 },
	{ config_id = 1104029, name = "VARIABLE_CHANGE_104029", event = EventType.EVENT_VARIABLE_CHANGE, source = "change5", condition = "condition_EVENT_VARIABLE_CHANGE_104029", action = "action_EVENT_VARIABLE_CHANGE_104029", trigger_count = 0 },
	{ config_id = 1104030, name = "TIMER_EVENT_104030", event = EventType.EVENT_TIMER_EVENT, source = "timeFin", condition = "condition_EVENT_TIMER_EVENT_104030", action = "action_EVENT_TIMER_EVENT_104030" },
	{ config_id = 1104031, name = "GADGET_STATE_CHANGE_104031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_104031", trigger_count = 0 },
	{ config_id = 1104033, name = "GADGET_STATE_CHANGE_104033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104033", action = "action_EVENT_GADGET_STATE_CHANGE_104033", trigger_count = 0 },
	{ config_id = 1104034, name = "GADGET_STATE_CHANGE_104034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104034", action = "action_EVENT_GADGET_STATE_CHANGE_104034", trigger_count = 0 },
	{ config_id = 1104035, name = "VARIABLE_CHANGE_104035", event = EventType.EVENT_VARIABLE_CHANGE, source = "change6", condition = "condition_EVENT_VARIABLE_CHANGE_104035", action = "action_EVENT_VARIABLE_CHANGE_104035", trigger_count = 0 },
	{ config_id = 1104036, name = "VARIABLE_CHANGE_104036", event = EventType.EVENT_VARIABLE_CHANGE, source = "change6", condition = "condition_EVENT_VARIABLE_CHANGE_104036", action = "action_EVENT_VARIABLE_CHANGE_104036", trigger_count = 0 },
	{ config_id = 1104037, name = "GADGET_STATE_CHANGE_104037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104037", action = "action_EVENT_GADGET_STATE_CHANGE_104037", trigger_count = 0 },
	{ config_id = 1104038, name = "GADGET_STATE_CHANGE_104038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104038", action = "action_EVENT_GADGET_STATE_CHANGE_104038", trigger_count = 0 },
	{ config_id = 1104039, name = "VARIABLE_CHANGE_104039", event = EventType.EVENT_VARIABLE_CHANGE, source = "change7", condition = "condition_EVENT_VARIABLE_CHANGE_104039", action = "action_EVENT_VARIABLE_CHANGE_104039", trigger_count = 0 },
	{ config_id = 1104040, name = "VARIABLE_CHANGE_104040", event = EventType.EVENT_VARIABLE_CHANGE, source = "change7", condition = "condition_EVENT_VARIABLE_CHANGE_104040", action = "action_EVENT_VARIABLE_CHANGE_104040", trigger_count = 0 },
	{ config_id = 1104041, name = "GADGET_STATE_CHANGE_104041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104041", action = "action_EVENT_GADGET_STATE_CHANGE_104041", trigger_count = 0 },
	{ config_id = 1104042, name = "GADGET_STATE_CHANGE_104042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104042", action = "action_EVENT_GADGET_STATE_CHANGE_104042", trigger_count = 0 },
	{ config_id = 1104043, name = "VARIABLE_CHANGE_104043", event = EventType.EVENT_VARIABLE_CHANGE, source = "change8", condition = "condition_EVENT_VARIABLE_CHANGE_104043", action = "action_EVENT_VARIABLE_CHANGE_104043", trigger_count = 0 },
	{ config_id = 1104044, name = "VARIABLE_CHANGE_104044", event = EventType.EVENT_VARIABLE_CHANGE, source = "change8", condition = "condition_EVENT_VARIABLE_CHANGE_104044", action = "action_EVENT_VARIABLE_CHANGE_104044", trigger_count = 0 },
	{ config_id = 1104045, name = "GADGET_STATE_CHANGE_104045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104045", action = "action_EVENT_GADGET_STATE_CHANGE_104045", trigger_count = 0 },
	{ config_id = 1104046, name = "GADGET_STATE_CHANGE_104046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104046", action = "action_EVENT_GADGET_STATE_CHANGE_104046", trigger_count = 0 },
	{ config_id = 1104047, name = "VARIABLE_CHANGE_104047", event = EventType.EVENT_VARIABLE_CHANGE, source = "change9", condition = "condition_EVENT_VARIABLE_CHANGE_104047", action = "action_EVENT_VARIABLE_CHANGE_104047", trigger_count = 0 },
	{ config_id = 1104048, name = "VARIABLE_CHANGE_104048", event = EventType.EVENT_VARIABLE_CHANGE, source = "change9", condition = "condition_EVENT_VARIABLE_CHANGE_104048", action = "action_EVENT_VARIABLE_CHANGE_104048", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "change1", value = 0, no_refresh = false },
	{ config_id = 2, name = "change2", value = 0, no_refresh = false },
	{ config_id = 3, name = "change3", value = 0, no_refresh = false },
	{ config_id = 4, name = "change4", value = 0, no_refresh = false },
	{ config_id = 5, name = "change5", value = 0, no_refresh = false },
	{ config_id = 6, name = "change6", value = 0, no_refresh = false },
	{ config_id = 7, name = "change7", value = 0, no_refresh = false },
	{ config_id = 8, name = "change8", value = 0, no_refresh = false },
	{ config_id = 9, name = "change9", value = 0, no_refresh = false }
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
		gadgets = { 104001, 104002, 104003, 104004, 104005, 104006, 104007, 104008, 104009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_104010", "GADGET_STATE_CHANGE_104011", "VARIABLE_CHANGE_104012", "VARIABLE_CHANGE_104013", "GADGET_STATE_CHANGE_104014", "GADGET_STATE_CHANGE_104015", "VARIABLE_CHANGE_104016", "VARIABLE_CHANGE_104017", "GADGET_STATE_CHANGE_104018", "GADGET_STATE_CHANGE_104019", "VARIABLE_CHANGE_104020", "VARIABLE_CHANGE_104021", "GADGET_STATE_CHANGE_104022", "GADGET_STATE_CHANGE_104023", "VARIABLE_CHANGE_104024", "VARIABLE_CHANGE_104025", "GADGET_STATE_CHANGE_104026", "GADGET_STATE_CHANGE_104027", "VARIABLE_CHANGE_104028", "VARIABLE_CHANGE_104029", "TIMER_EVENT_104030", "GADGET_STATE_CHANGE_104031", "GADGET_STATE_CHANGE_104033", "GADGET_STATE_CHANGE_104034", "VARIABLE_CHANGE_104035", "VARIABLE_CHANGE_104036", "GADGET_STATE_CHANGE_104037", "GADGET_STATE_CHANGE_104038", "VARIABLE_CHANGE_104039", "VARIABLE_CHANGE_104040", "GADGET_STATE_CHANGE_104041", "GADGET_STATE_CHANGE_104042", "VARIABLE_CHANGE_104043", "VARIABLE_CHANGE_104044", "GADGET_STATE_CHANGE_104045", "GADGET_STATE_CHANGE_104046", "VARIABLE_CHANGE_104047", "VARIABLE_CHANGE_104048" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104010(context, evt)
	if defs.gadget_1 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change1"为0
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104010(context, evt)
	-- 针对当前group内变量名为 change2 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change2", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change4", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104011(context, evt)
	if defs.gadget_1 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104011(context, evt)
	-- 针对当前group内变量名为 change1 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change1", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context,"change1") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_1) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104012(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_1, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
	
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_1) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104013(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_1, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104014(context, evt)
	if defs.gadget_2 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change2"为0
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104014(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change1", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change3", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change5", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104015(context, evt)
	if defs.gadget_2 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104015(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change2", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_2) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104016(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_2, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_2) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104017(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_2, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104018(context, evt)
	if defs.gadget_3 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为0
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104018(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change2", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change6", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104019(context, evt)
	if defs.gadget_3 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104019(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change3", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_3) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104020(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_3的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_3, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_3) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104021(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_3的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_3, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104022(context, evt)
	if defs.gadget_4 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为0
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104022(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change1", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change5", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change7", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104023(context, evt)
	if defs.gadget_4 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104023(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change4", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_4) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104024(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_4, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_4) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104025(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_4, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104026(context, evt)
	if defs.gadget_5 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为0
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104026(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change2", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change4", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change6", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change8", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104027(context, evt)
	if defs.gadget_5 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104027(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change5", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_5) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104028(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_5, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_5) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104029(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_5, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_104030(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_5) then
			return -1
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_4) then
			return -1
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_3) then
			return -1
		end 
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_2) then
			return -1
		end 
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_1) then
			return -1
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_6) then
			return -1
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_7) then
			return -1
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_8) then
			return -1
		end 
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_9) then
			return -1
		end 
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_104030(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 104032, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104031(context, evt)
	-- 延迟0.5秒后,向groupId为：defs.group_id的对象,请求一次调用,并将string参数："timeFin" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "timeFin", 0.5) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104033(context, evt)
	if defs.gadget_6 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为0
	if ScriptLib.GetGroupVariableValue(context, "change6") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104033(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change3", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change5", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change9", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104034(context, evt)
	if defs.gadget_6 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104034(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change6", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change6") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_6) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104035(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_6的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_6, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change6") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_6) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104036(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_6, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104037(context, evt)
	if defs.gadget_7 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为0
	if ScriptLib.GetGroupVariableValue(context, "change7") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104037(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 1
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change4", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change8", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104038(context, evt)
	if defs.gadget_7 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change7") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104038(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change7", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change7") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_7) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104039(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_6的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_7, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change7") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_7) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104040(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_7, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104041(context, evt)
	if defs.gadget_8 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为0
	if ScriptLib.GetGroupVariableValue(context, "change8") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104041(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change5", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change7", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change9", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104042(context, evt)
	if defs.gadget_8 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change8") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104042(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change8", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change8") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_8) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104043(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_6的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_8, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change8") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_8) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104044(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_8, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104045(context, evt)
	if defs.gadget_9 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为0
	if ScriptLib.GetGroupVariableValue(context, "change9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104045(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 1
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change6", 1, defs.group_id) then
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change8", 1, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104046(context, evt)
	if defs.gadget_9 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change9") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104046(context, evt)
	-- 针对当前group内变量名为 defs.change 的变量，进行修改，变化值为 0
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "change9", 0, defs.group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change9") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_9) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104047(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_6的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_9, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104048(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"defs.change"为1
	if ScriptLib.GetGroupVariableValue(context, "change9") ~= 1 then
			return false
	end
	
	-- 判断defs.gadget的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_9) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104048(context, evt)
	-- 改变指定group组defs.group_id中， configid为defs.gadget_1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_9, GadgetState.Default) then
			return -1
		end 
	
	return 0
end