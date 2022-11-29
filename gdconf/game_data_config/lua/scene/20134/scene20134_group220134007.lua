-- 基础信息
local base_info = {
	group_id = 220134007
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
	{ config_id = 7001, gadget_id = 70310235, pos = { x = 692.316, y = 610.365, z = -1493.119 }, rot = { x = 0.000, y = 44.977, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 7002, gadget_id = 70380306, pos = { x = 692.818, y = 610.034, z = -1494.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 7003, gadget_id = 70220129, pos = { x = 698.685, y = 609.919, z = -1495.359 }, rot = { x = 0.000, y = 307.988, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70220129, pos = { x = 688.932, y = 609.919, z = -1497.725 }, rot = { x = 0.000, y = 37.675, z = 0.000 }, level = 1 },
	{ config_id = 7005, gadget_id = 70220129, pos = { x = 687.489, y = 609.919, z = -1485.976 }, rot = { x = 0.000, y = 133.926, z = 0.000 }, level = 1 },
	{ config_id = 7010, gadget_id = 70220010, pos = { x = 695.317, y = 610.290, z = -1486.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7012, shape = RegionShape.SPHERE, radius = 15, pos = { x = 692.402, y = 609.230, z = -1491.966 } },
	{ config_id = 7013, shape = RegionShape.SPHERE, radius = 15, pos = { x = 692.402, y = 609.230, z = -1491.966 } }
}

-- 触发器
triggers = {
	{ config_id = 1007006, name = "GROUP_LOAD_7006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_7006", trigger_count = 0 },
	{ config_id = 1007007, name = "GADGET_STATE_CHANGE_7007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7007", action = "action_EVENT_GADGET_STATE_CHANGE_7007", trigger_count = 0 },
	{ config_id = 1007008, name = "GADGET_STATE_CHANGE_7008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7008", action = "action_EVENT_GADGET_STATE_CHANGE_7008", trigger_count = 0 },
	{ config_id = 1007009, name = "GADGET_STATE_CHANGE_7009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7009", action = "action_EVENT_GADGET_STATE_CHANGE_7009", trigger_count = 0 },
	{ config_id = 1007011, name = "ANY_GADGET_DIE_7011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7011", action = "action_EVENT_ANY_GADGET_DIE_7011", trigger_count = 0 },
	{ config_id = 1007012, name = "ENTER_REGION_7012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7012", action = "action_EVENT_ENTER_REGION_7012", trigger_count = 0 },
	{ config_id = 1007013, name = "LEAVE_REGION_7013", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_7013", action = "action_EVENT_LEAVE_REGION_7013", trigger_count = 0 },
	{ config_id = 1007014, name = "GROUP_LOAD_7014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7014", action = "action_EVENT_GROUP_LOAD_7014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "create", value = 0, no_refresh = true }
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
		gadgets = { 7001, 7010 },
		regions = { 7012, 7013 },
		triggers = { "GROUP_LOAD_7006", "GADGET_STATE_CHANGE_7007", "GADGET_STATE_CHANGE_7008", "GADGET_STATE_CHANGE_7009", "ANY_GADGET_DIE_7011", "ENTER_REGION_7012", "LEAVE_REGION_7013", "GROUP_LOAD_7014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 7005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 7002 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_7006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	if 7003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7008(context, evt)
	if 7004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7008(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134007, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7009(context, evt)
	if 7005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7011(context, evt)
	if 7010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7011(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134007, 5)
	
	-- 将本组内变量名为 "create" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220134048中， configid为48002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134048, 48002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7012(context, evt)
	if evt.param1 ~= 7012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7012(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220134006中， configid为6012的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134006, 6012, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134044中， configid为44007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134044, 44007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134043中， configid为43008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134043, 43008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_7013(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_7013(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_7014(context, evt)
	-- 判断变量"create"为1
	if ScriptLib.GetGroupVariableValue(context, "create") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_7014(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134007, 5)
	
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end