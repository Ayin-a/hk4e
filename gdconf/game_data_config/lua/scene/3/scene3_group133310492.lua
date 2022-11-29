-- 基础信息
local base_info = {
	group_id = 133310492
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
	{ config_id = 492001, gadget_id = 70330402, pos = { x = -2815.886, y = 80.608, z = 4472.536 }, rot = { x = 0.000, y = 46.225, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 492002, gadget_id = 70330434, pos = { x = -2829.046, y = 75.593, z = 4464.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492003, gadget_id = 70690001, pos = { x = -2829.046, y = 91.500, z = 4464.036 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492004, gadget_id = 70690001, pos = { x = -2829.046, y = 97.500, z = 4464.036 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492005, gadget_id = 70690001, pos = { x = -2829.046, y = 103.500, z = 4464.036 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492006, gadget_id = 70690001, pos = { x = -2829.078, y = 121.500, z = 4450.706 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492007, gadget_id = 70690001, pos = { x = -2829.078, y = 127.500, z = 4450.706 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492008, gadget_id = 70690001, pos = { x = -2829.078, y = 133.500, z = 4450.706 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492012, gadget_id = 70330434, pos = { x = -2829.077, y = 108.612, z = 4450.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492013, gadget_id = 70690001, pos = { x = -2829.078, y = 139.500, z = 4450.706 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 492014, gadget_id = 70690001, pos = { x = -2829.078, y = 145.500, z = 4450.706 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1492009, name = "GADGET_STATE_CHANGE_492009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_492009", action = "action_EVENT_GADGET_STATE_CHANGE_492009", trigger_count = 0 },
	{ config_id = 1492010, name = "GROUP_LOAD_492010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_492010", trigger_count = 0 },
	{ config_id = 1492011, name = "TIME_AXIS_PASS_492011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_492011", action = "action_EVENT_TIME_AXIS_PASS_492011", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 492001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_492009", "GROUP_LOAD_492010", "TIME_AXIS_PASS_492011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 492002, 492003, 492004, 492005, 492006, 492007, 492008, 492012, 492013, 492014 },
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
function condition_EVENT_GADGET_STATE_CHANGE_492009(context, evt)
	if 492001 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_492009(context, evt)
	-- 创建标识为"time"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "time", {20}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310492, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_492010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310492, 2)
	
	-- 将configid为 492001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_492011(context, evt)
	if "time" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_492011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310492, 2)
	
	-- 将configid为 492001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end