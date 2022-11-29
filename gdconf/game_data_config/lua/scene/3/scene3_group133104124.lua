-- 基础信息
local base_info = {
	group_id = 133104124
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
	{ config_id = 375, gadget_id = 70220032, pos = { x = 571.584, y = 223.234, z = 719.521 }, rot = { x = 0.000, y = 86.339, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 376, gadget_id = 70211001, pos = { x = 476.770, y = 214.983, z = 681.248 }, rot = { x = 357.858, y = 8.114, z = 8.407 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 377, gadget_id = 70690001, pos = { x = 557.247, y = 221.850, z = 713.521 }, rot = { x = 0.000, y = 249.575, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 378, gadget_id = 70690001, pos = { x = 536.630, y = 220.942, z = 705.653 }, rot = { x = 0.000, y = 249.575, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 379, gadget_id = 70690001, pos = { x = 515.901, y = 220.096, z = 697.580 }, rot = { x = 0.000, y = 249.575, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000206, name = "GADGET_STATE_CHANGE_206", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_206", action = "action_EVENT_GADGET_STATE_CHANGE_206", trigger_count = 0 },
	{ config_id = 1000207, name = "GADGET_STATE_CHANGE_207", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_207", action = "action_EVENT_GADGET_STATE_CHANGE_207", trigger_count = 0 },
	{ config_id = 1000208, name = "GADGET_STATE_CHANGE_208", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_208", action = "action_EVENT_GADGET_STATE_CHANGE_208", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 375 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_206", "GADGET_STATE_CHANGE_207", "GADGET_STATE_CHANGE_208" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 376, 377, 378, 379 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
function condition_EVENT_GADGET_STATE_CHANGE_206(context, evt)
	if 375 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_206(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104124, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_207(context, evt)
	if 375 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_207(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104124, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_208(context, evt)
	if 376 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_208(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end