-- 基础信息
local base_info = {
	group_id = 133104060
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
	{ config_id = 131, gadget_id = 70220032, pos = { x = 112.047, y = 211.201, z = 657.101 }, rot = { x = 0.000, y = 263.086, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 132, gadget_id = 70211111, pos = { x = 171.909, y = 201.612, z = 704.077 }, rot = { x = 14.588, y = 23.633, z = 18.970 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 311, gadget_id = 70690001, pos = { x = 124.590, y = 209.123, z = 668.603 }, rot = { x = 0.000, y = 51.983, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 60001, gadget_id = 70690001, pos = { x = 137.711, y = 207.033, z = 678.451 }, rot = { x = 0.000, y = 52.240, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 60002, gadget_id = 70690001, pos = { x = 154.392, y = 204.745, z = 691.598 }, rot = { x = 0.000, y = 56.666, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000101, name = "GADGET_STATE_CHANGE_101", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101", action = "action_EVENT_GADGET_STATE_CHANGE_101", trigger_count = 0 },
	{ config_id = 1000102, name = "GADGET_STATE_CHANGE_102", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102", action = "action_EVENT_GADGET_STATE_CHANGE_102", trigger_count = 0 },
	{ config_id = 1000103, name = "GADGET_STATE_CHANGE_103", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103", action = "action_EVENT_GADGET_STATE_CHANGE_103" }
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
		gadgets = { 131 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101", "GADGET_STATE_CHANGE_102", "GADGET_STATE_CHANGE_103" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 132, 311, 60001, 60002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_101(context, evt)
	if 131 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104060, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102(context, evt)
	if 131 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104060, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103(context, evt)
	if 132 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104060, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104060, 1)
	
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end