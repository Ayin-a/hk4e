-- 基础信息
local base_info = {
	group_id = 133107124
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
	{ config_id = 124001, gadget_id = 70220032, pos = { x = -513.238, y = 416.716, z = 569.436 }, rot = { x = 0.000, y = 66.550, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 124002, gadget_id = 70690006, pos = { x = -513.238, y = 416.716, z = 569.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, showcutscene = true, area_id = 7 },
	{ config_id = 124003, gadget_id = 70360046, pos = { x = -566.580, y = 425.755, z = 546.920 }, rot = { x = 0.000, y = 164.990, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 124008, gadget_id = 70690001, pos = { x = -533.670, y = 427.458, z = 558.833 }, rot = { x = 0.000, y = 251.030, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 124009, gadget_id = 70211111, pos = { x = -566.253, y = 426.459, z = 545.859 }, rot = { x = 0.000, y = 353.240, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 124010, gadget_id = 70690001, pos = { x = -541.823, y = 428.000, z = 555.807 }, rot = { x = 0.000, y = 251.030, z = 0.000 }, level = 18, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124004, name = "GADGET_STATE_CHANGE_124004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124004", action = "action_EVENT_GADGET_STATE_CHANGE_124004", trigger_count = 0 },
	{ config_id = 1124005, name = "GADGET_STATE_CHANGE_124005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124005", action = "action_EVENT_GADGET_STATE_CHANGE_124005", trigger_count = 0 },
	{ config_id = 1124006, name = "GADGET_CREATE_124006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_124006", action = "action_EVENT_GADGET_CREATE_124006", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 124001, 124003, 124009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_124004", "GADGET_STATE_CHANGE_124005", "GADGET_CREATE_124006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 124002, 124008, 124010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_124004(context, evt)
	if 124001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107124, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_124005(context, evt)
	if 124001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107124, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124006(context, evt)
	if 124001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107124, 2)
	
	return 0
end