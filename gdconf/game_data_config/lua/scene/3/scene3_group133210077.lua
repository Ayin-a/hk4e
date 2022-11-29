-- 基础信息
local base_info = {
	group_id = 133210077
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
	{ config_id = 77001, gadget_id = 70330064, pos = { x = -4087.109, y = 202.766, z = -1191.383 }, rot = { x = 7.225, y = 229.659, z = 4.360 }, level = 30, state = GadgetState.GearStop, interact_id = 35, area_id = 17 },
	{ config_id = 77006, gadget_id = 70900380, pos = { x = -4050.468, y = 221.109, z = -1189.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 77007, gadget_id = 70900380, pos = { x = -4049.801, y = 231.111, z = -1202.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 77009, gadget_id = 70900380, pos = { x = -4067.987, y = 211.274, z = -1187.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 77011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3594.988, y = 203.826, z = -1121.397 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1077002, name = "VARIABLE_CHANGE_77002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_77002", action = "action_EVENT_VARIABLE_CHANGE_77002" },
	{ config_id = 1077003, name = "GADGET_STATE_CHANGE_77003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_77003", action = "action_EVENT_GADGET_STATE_CHANGE_77003", trigger_count = 0 },
	{ config_id = 1077004, name = "GADGET_STATE_CHANGE_77004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_77004", action = "action_EVENT_GADGET_STATE_CHANGE_77004", trigger_count = 0 },
	{ config_id = 1077008, name = "GROUP_LOAD_77008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_77008", action = "action_EVENT_GROUP_LOAD_77008", trigger_count = 0 },
	{ config_id = 1077011, name = "ENTER_REGION_77011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetChange", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 77005, gadget_id = 70900380, pos = { x = -4036.871, y = 200.989, z = -1163.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 77010, gadget_id = 70330115, pos = { x = -4078.541, y = 202.013, z = -1200.905 }, rot = { x = 4.746, y = 160.325, z = 357.359 }, level = 30, area_id = 17 }
	}
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
		gadgets = { 77001 },
		regions = { 77011 },
		triggers = { "VARIABLE_CHANGE_77002", "GADGET_STATE_CHANGE_77003", "GADGET_STATE_CHANGE_77004", "GROUP_LOAD_77008", "ENTER_REGION_77011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 77006, 77007, 77009 },
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
function condition_EVENT_VARIABLE_CHANGE_77002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetChange"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetChange") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_77002(context, evt)
	-- 将configid为 77001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_77003(context, evt)
	if 77001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_77003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210077, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_77004(context, evt)
	if 77001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_77004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210077, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_77008(context, evt)
	-- 判断变量"GadgetChange"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetChange") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_77008(context, evt)
	-- 将configid为 77001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"