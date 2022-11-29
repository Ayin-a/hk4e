-- 基础信息
local base_info = {
	group_id = 133302625
}

-- Trigger变量
local defs = {
	fquestid = 73116
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
	{ config_id = 625001, gadget_id = 70330229, pos = { x = 19.029, y = 306.552, z = 2290.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	{ config_id = 625002, gadget_id = 70330251, pos = { x = 64.097, y = 315.000, z = 2300.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	-- 观测站2
	{ config_id = 625003, gadget_id = 70220103, pos = { x = 297.329, y = 420.000, z = 2441.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 观测站3
	{ config_id = 625004, gadget_id = 70220103, pos = { x = 285.494, y = 410.000, z = 2423.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 625005, gadget_id = 70330229, pos = { x = 141.611, y = 344.615, z = 2161.974 }, rot = { x = 0.000, y = 309.955, z = 0.000 }, level = 27, persistent = true, mark_flag = 5, area_id = 20 },
	{ config_id = 625006, gadget_id = 70330251, pos = { x = 159.194, y = 350.000, z = 2188.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 5, area_id = 20 },
	-- 观测站4
	{ config_id = 625007, gadget_id = 70220103, pos = { x = 263.437, y = 400.000, z = 2399.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 观测站5
	{ config_id = 625008, gadget_id = 70220103, pos = { x = 237.035, y = 390.000, z = 2376.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 观测站6
	{ config_id = 625009, gadget_id = 70220103, pos = { x = 213.721, y = 380.000, z = 2354.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 观测站7
	{ config_id = 625010, gadget_id = 70220103, pos = { x = 203.250, y = 370.000, z = 2330.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟一
	{ config_id = 625011, gadget_id = 70220103, pos = { x = 137.262, y = 345.000, z = 2327.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟一
	{ config_id = 625012, gadget_id = 70220103, pos = { x = 112.173, y = 335.000, z = 2317.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 观测站1
	{ config_id = 625013, gadget_id = 70220103, pos = { x = 307.846, y = 424.946, z = 2455.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟一
	{ config_id = 625014, gadget_id = 70220103, pos = { x = 64.097, y = 315.000, z = 2300.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟二
	{ config_id = 625015, gadget_id = 70220103, pos = { x = 192.062, y = 370.000, z = 2296.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟二
	{ config_id = 625021, gadget_id = 70220103, pos = { x = 86.596, y = 325.000, z = 2309.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟二
	{ config_id = 625022, gadget_id = 70220103, pos = { x = 188.161, y = 360.000, z = 2265.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟二
	{ config_id = 625023, gadget_id = 70220103, pos = { x = 178.846, y = 355.000, z = 2236.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟二
	{ config_id = 625024, gadget_id = 70220103, pos = { x = 159.194, y = 350.000, z = 2188.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟二
	{ config_id = 625025, gadget_id = 70220103, pos = { x = 146.500, y = 348.680, z = 2168.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟二
	{ config_id = 625026, gadget_id = 70220103, pos = { x = 168.413, y = 350.000, z = 2206.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟一
	{ config_id = 625027, gadget_id = 70220103, pos = { x = 163.300, y = 355.000, z = 2337.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟一
	{ config_id = 625028, gadget_id = 70220103, pos = { x = 186.489, y = 370.000, z = 2348.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 黑烟一
	{ config_id = 625029, gadget_id = 70220103, pos = { x = 34.689, y = 307.759, z = 2293.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	-- 观察到任一黑烟后
	{ config_id = 625017, shape = RegionShape.SPHERE, radius = 5, pos = { x = 305.408, y = 420.856, z = 2461.214 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1625016, name = "GADGET_STATE_CHANGE_625016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_625016", action = "action_EVENT_GADGET_STATE_CHANGE_625016" },
	-- 观察到任一黑烟后
	{ config_id = 1625017, name = "ENTER_REGION_625017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_625017", action = "action_EVENT_ENTER_REGION_625017", trigger_count = 0 },
	{ config_id = 1625018, name = "GADGET_STATE_CHANGE_625018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_625018", action = "action_EVENT_GADGET_STATE_CHANGE_625018" },
	{ config_id = 1625019, name = "GROUP_LOAD_625019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_625019", action = "action_EVENT_GROUP_LOAD_625019", trigger_count = 0 },
	{ config_id = 1625020, name = "GROUP_LOAD_625020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_625020", action = "action_EVENT_GROUP_LOAD_625020", trigger_count = 0 },
	-- 勾爪创生，发射器201
	{ config_id = 1625030, name = "GADGET_CREATE_625030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_625030", action = "action_EVENT_GADGET_CREATE_625030", trigger_count = 0 },
	-- 勾爪创生，发射器201
	{ config_id = 1625031, name = "GADGET_CREATE_625031", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_625031", action = "action_EVENT_GADGET_CREATE_625031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "first", value = 0, no_refresh = true },
	{ config_id = 2, name = "second", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
	end_suite = 1,
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
		regions = { 625017 },
		triggers = { "ENTER_REGION_625017", "GROUP_LOAD_625019", "GROUP_LOAD_625020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 625003, 625004, 625007, 625008, 625009, 625010, 625011, 625012, 625013, 625014, 625015, 625021, 625022, 625023, 625024, 625025, 625026, 625027, 625028, 625029 },
		regions = { },
		triggers = { "GADGET_CREATE_625030", "GADGET_CREATE_625031" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 625001, 625002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_625016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 625005, 625006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_625018" },
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
function condition_EVENT_GADGET_STATE_CHANGE_625016(context, evt)
	if 625001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_625016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302625, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_625017(context, evt)
	if evt.param1 ~= 625017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,defs.fquestid*100+3)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return true
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,defs.fquestid*100+5)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_625017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302625, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_625018(context, evt)
	if 625005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_625018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302625, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_625019(context, evt)
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_625019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302625, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_625020(context, evt)
	-- 判断变量"second"为1
	if ScriptLib.GetGroupVariableValue(context, "second") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_625020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302625, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_625030(context, evt)
	if 625003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_625030(context, evt)
	-- 将configid为 625001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 625001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_625031(context, evt)
	if 625003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_625031(context, evt)
	-- 将configid为 625005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 625005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end