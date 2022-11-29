-- 基础信息
local base_info = {
	group_id = 133304218
}

-- Trigger变量
local defs = {
	fquestid = 73051
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
	{ config_id = 218001, gadget_id = 70330229, pos = { x = -1236.723, y = 273.966, z = 2736.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	{ config_id = 218002, gadget_id = 70330251, pos = { x = -1244.113, y = 276.873, z = 2719.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	{ config_id = 218003, gadget_id = 70220103, pos = { x = -1213.646, y = 300.739, z = 2562.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218004, gadget_id = 70220103, pos = { x = -1227.109, y = 294.879, z = 2594.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218005, gadget_id = 70330229, pos = { x = -1367.515, y = 254.247, z = 2742.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 21 },
	{ config_id = 218006, gadget_id = 70330251, pos = { x = -1338.932, y = 260.833, z = 2721.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 21 },
	{ config_id = 218007, gadget_id = 70220103, pos = { x = -1240.481, y = 291.685, z = 2627.058 }, rot = { x = 0.000, y = 5.505, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218008, gadget_id = 70220103, pos = { x = -1253.951, y = 286.931, z = 2659.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218009, gadget_id = 70220103, pos = { x = -1283.164, y = 279.834, z = 2679.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218010, gadget_id = 70220103, pos = { x = -1312.350, y = 271.129, z = 2698.838 }, rot = { x = 0.000, y = 358.267, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218011, gadget_id = 70220103, pos = { x = -1338.932, y = 260.833, z = 2721.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218012, gadget_id = 70220103, pos = { x = -1200.299, y = 302.658, z = 2530.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218018, gadget_id = 70220103, pos = { x = -1248.325, y = 282.044, z = 2693.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218019, gadget_id = 70220103, pos = { x = -1244.113, y = 276.873, z = 2719.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 218020, gadget_id = 70220103, pos = { x = -1359.814, y = 268.857, z = 2741.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	-- 观察到任一黑烟后
	{ config_id = 218014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1199.611, y = 297.453, z = 2530.809 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1218013, name = "GADGET_STATE_CHANGE_218013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218013", action = "action_EVENT_GADGET_STATE_CHANGE_218013" },
	-- 观察到任一黑烟后
	{ config_id = 1218014, name = "ENTER_REGION_218014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218014", action = "action_EVENT_ENTER_REGION_218014", trigger_count = 0 },
	{ config_id = 1218015, name = "GADGET_STATE_CHANGE_218015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218015", action = "action_EVENT_GADGET_STATE_CHANGE_218015" },
	{ config_id = 1218016, name = "GROUP_LOAD_218016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_218016", action = "action_EVENT_GROUP_LOAD_218016", trigger_count = 0 },
	{ config_id = 1218017, name = "GROUP_LOAD_218017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_218017", action = "action_EVENT_GROUP_LOAD_218017", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1218021, name = "GADGET_CREATE_218021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_218021", action = "action_EVENT_GADGET_CREATE_218021", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1218022, name = "GADGET_CREATE_218022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_218022", action = "action_EVENT_GADGET_CREATE_218022", trigger_count = 0 }
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
		regions = { 218014 },
		triggers = { "ENTER_REGION_218014", "GROUP_LOAD_218016", "GROUP_LOAD_218017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 218003, 218004, 218007, 218008, 218009, 218010, 218011, 218012, 218018, 218019, 218020 },
		regions = { },
		triggers = { "GADGET_CREATE_218021", "GADGET_CREATE_218022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 218001, 218002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_218013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 218005, 218006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_218015" },
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
function condition_EVENT_GADGET_STATE_CHANGE_218013(context, evt)
	if 218001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304218, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218014(context, evt)
	if evt.param1 ~= 218014 then return false end
	
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
function action_EVENT_ENTER_REGION_218014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304218, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218015(context, evt)
	if 218005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304218, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_218016(context, evt)
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_218016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304218, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_218017(context, evt)
	-- 判断变量"second"为1
	if ScriptLib.GetGroupVariableValue(context, "second") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_218017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304218, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_218021(context, evt)
	if 218003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_218021(context, evt)
	-- 将configid为 218001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_218022(context, evt)
	if 218003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_218022(context, evt)
	-- 将configid为 218005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end