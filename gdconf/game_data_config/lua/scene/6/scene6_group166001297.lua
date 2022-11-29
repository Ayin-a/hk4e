-- 基础信息
local base_info = {
	group_id = 166001297
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
	{ config_id = 297001, gadget_id = 70900039, pos = { x = 782.842, y = 414.553, z = 682.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 297003, gadget_id = 70690010, pos = { x = 786.970, y = 450.754, z = 700.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 297004, gadget_id = 70690010, pos = { x = 786.970, y = 543.877, z = 700.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 297005, gadget_id = 70690010, pos = { x = 786.970, y = 473.128, z = 700.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 297006, gadget_id = 70690001, pos = { x = 787.112, y = 485.000, z = 700.390 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 297007, gadget_id = 70690001, pos = { x = 787.112, y = 529.981, z = 700.390 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 297011, gadget_id = 70690010, pos = { x = 788.514, y = 400.540, z = 699.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 297012, gadget_id = 70690010, pos = { x = 786.970, y = 503.592, z = 700.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1297002, name = "TIME_AXIS_PASS_297002", event = EventType.EVENT_TIME_AXIS_PASS, source = "wind", condition = "condition_EVENT_TIME_AXIS_PASS_297002", action = "action_EVENT_TIME_AXIS_PASS_297002", trigger_count = 0 },
	{ config_id = 1297014, name = "GADGET_STATE_CHANGE_297014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_297014", action = "action_EVENT_GADGET_STATE_CHANGE_297014", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 297001 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_297002", "GADGET_STATE_CHANGE_297014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 297003, 297004, 297005, 297006, 297007, 297011, 297012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_TIME_AXIS_PASS_297002(context, evt)
	if "wind" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_297002(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001297, 2)
	
	-- 将configid为 297001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_297014(context, evt)
	if 297001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_297014(context, evt)
	-- 创建标识为"wind"，时间节点为{25}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wind", {25}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001297, 2)
	
	return 0
end