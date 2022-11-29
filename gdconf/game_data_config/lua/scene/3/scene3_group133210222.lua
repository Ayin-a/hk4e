-- 基础信息
local base_info = {
	group_id = 133210222
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
	{ config_id = 222002, gadget_id = 70330107, pos = { x = -3691.165, y = 121.230, z = -696.395 }, rot = { x = 359.925, y = 160.810, z = 354.356 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 222005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3691.156, y = 120.993, z = -691.484 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1222003, name = "GROUP_LOAD_222003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_222003", action = "action_EVENT_GROUP_LOAD_222003", trigger_count = 0 },
	{ config_id = 1222004, name = "VARIABLE_CHANGE_222004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_222004", action = "action_EVENT_VARIABLE_CHANGE_222004" },
	{ config_id = 1222005, name = "ENTER_REGION_222005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetState", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 222001, gadget_id = 70330064, pos = { x = -3685.156, y = 123.267, z = -701.276 }, rot = { x = 353.126, y = 202.618, z = 339.562 }, level = 30, state = GadgetState.GearStop, interact_id = 35, area_id = 17 }
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
		gadgets = { 222002 },
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
function condition_EVENT_GROUP_LOAD_222003(context, evt)
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_222003(context, evt)
	-- 将configid为 222001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_222004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_222004(context, evt)
	-- 将configid为 222001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end