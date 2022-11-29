-- 基础信息
local base_info = {
	group_id = 133304054
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
	{ config_id = 54001, gadget_id = 70330229, pos = { x = -1046.530, y = 282.409, z = 2961.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	{ config_id = 54002, gadget_id = 70330251, pos = { x = -1053.775, y = 279.781, z = 2978.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	{ config_id = 54003, gadget_id = 70220103, pos = { x = -1088.227, y = 283.904, z = 2988.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 54004, gadget_id = 70220103, pos = { x = -1120.564, y = 289.900, z = 3011.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 54006, gadget_id = 70330229, pos = { x = -1206.387, y = 278.613, z = 2847.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 21 },
	{ config_id = 54007, gadget_id = 70330251, pos = { x = -1185.680, y = 277.179, z = 2882.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 21 },
	{ config_id = 54010, gadget_id = 70220103, pos = { x = -1053.775, y = 279.781, z = 2978.530 }, rot = { x = 0.000, y = 5.505, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 54011, gadget_id = 70220103, pos = { x = -1136.900, y = 289.121, z = 2978.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 54012, gadget_id = 70220103, pos = { x = -1153.622, y = 287.983, z = 2945.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 54013, gadget_id = 70220103, pos = { x = -1170.927, y = 284.791, z = 2912.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 54014, gadget_id = 70220103, pos = { x = -1185.680, y = 277.179, z = 2882.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 54015, gadget_id = 70220103, pos = { x = -1121.324, y = 295.470, z = 3042.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	-- 观察到任一黑烟后
	{ config_id = 54008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1121.365, y = 290.265, z = 3043.363 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1054005, name = "GADGET_STATE_CHANGE_54005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54005", action = "action_EVENT_GADGET_STATE_CHANGE_54005" },
	-- 观察到任一黑烟后
	{ config_id = 1054008, name = "ENTER_REGION_54008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54008", action = "action_EVENT_ENTER_REGION_54008", trigger_count = 0 },
	{ config_id = 1054009, name = "GADGET_STATE_CHANGE_54009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54009", action = "action_EVENT_GADGET_STATE_CHANGE_54009" },
	{ config_id = 1054016, name = "GROUP_LOAD_54016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_54016", action = "action_EVENT_GROUP_LOAD_54016", trigger_count = 0 },
	{ config_id = 1054017, name = "GROUP_LOAD_54017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_54017", action = "action_EVENT_GROUP_LOAD_54017", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1054018, name = "GADGET_CREATE_54018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_54018", action = "action_EVENT_GADGET_CREATE_54018", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1054019, name = "GADGET_CREATE_54019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_54019", action = "action_EVENT_GADGET_CREATE_54019", trigger_count = 0 }
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
		regions = { 54008 },
		triggers = { "ENTER_REGION_54008", "GROUP_LOAD_54016", "GROUP_LOAD_54017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 54003, 54004, 54010, 54011, 54012, 54013, 54014, 54015 },
		regions = { },
		triggers = { "GADGET_CREATE_54018", "GADGET_CREATE_54019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 1号黑烟被清理,
		monsters = { },
		gadgets = { 54001, 54002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 2号黑烟被清理,
		monsters = { },
		gadgets = { 54006, 54007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 初始的空suite,
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
function condition_EVENT_GADGET_STATE_CHANGE_54005(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304054, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_54008(context, evt)
	if evt.param1 ~= 54008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7308903)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return true
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7308905)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_54008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304054, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54009(context, evt)
	if 54006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304054, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_54016(context, evt)
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_54016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304054, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_54017(context, evt)
	-- 判断变量"second"为1
	if ScriptLib.GetGroupVariableValue(context, "second") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_54017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304054, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_54018(context, evt)
	if 54003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_54018(context, evt)
	-- 将configid为 54001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_54019(context, evt)
	if 54003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_54019(context, evt)
	-- 将configid为 54006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end