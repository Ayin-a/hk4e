-- 基础信息
local base_info = {
	group_id = 133310304
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
	{ config_id = 304001, gadget_id = 70330402, pos = { x = -2735.469, y = 145.101, z = 4358.140 }, rot = { x = 348.370, y = 1.076, z = 351.516 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 304002, gadget_id = 70330434, pos = { x = -2723.519, y = 140.362, z = 4352.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 304003, gadget_id = 70690001, pos = { x = -2723.519, y = 154.500, z = 4352.080 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 304004, gadget_id = 70690001, pos = { x = -2723.519, y = 160.500, z = 4352.080 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 304005, gadget_id = 70690001, pos = { x = -2723.519, y = 166.500, z = 4352.080 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 304006, gadget_id = 70690001, pos = { x = -2723.519, y = 172.500, z = 4352.080 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 304007, gadget_id = 70690001, pos = { x = -2723.519, y = 178.500, z = 4352.080 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 304008, gadget_id = 70690001, pos = { x = -2723.519, y = 184.500, z = 4352.080 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1304009, name = "GADGET_STATE_CHANGE_304009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304009", action = "action_EVENT_GADGET_STATE_CHANGE_304009", trigger_count = 0 },
	{ config_id = 1304010, name = "GROUP_LOAD_304010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_304010", trigger_count = 0 },
	{ config_id = 1304011, name = "TIME_AXIS_PASS_304011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_304011", action = "action_EVENT_TIME_AXIS_PASS_304011", trigger_count = 0 }
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
		gadgets = { 304001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_304009", "GROUP_LOAD_304010", "TIME_AXIS_PASS_304011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 304002, 304003, 304004, 304005, 304006, 304007, 304008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_304009(context, evt)
	if 304001 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304009(context, evt)
	-- 创建标识为"time"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "time", {20}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310304, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_304010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310304, 2)
	
	-- 将configid为 304001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_304011(context, evt)
	if "time" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_304011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310304, 2)
	
	-- 将configid为 304001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end