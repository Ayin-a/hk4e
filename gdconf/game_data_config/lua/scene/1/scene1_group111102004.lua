-- 基础信息
local base_info = {
	group_id = 111102004
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
	{ config_id = 4001, gadget_id = 70900403, pos = { x = 1269.687, y = 342.742, z = -1948.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70900403, pos = { x = 1267.172, y = 339.867, z = -1940.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4003, gadget_id = 70900403, pos = { x = 1244.836, y = 335.273, z = -1937.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 需要填MarkFlag，可以填的值为{3、5、6、7、9 ....}
	{ config_id = 4004, gadget_id = 70330229, pos = { x = 1245.601, y = 325.135, z = -1928.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	-- 需要填MarkFlag，要和钩爪发射器一一对应
	{ config_id = 4005, gadget_id = 70330251, pos = { x = 1257.764, y = 330.981, z = -1927.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	{ config_id = 4006, gadget_id = 70220103, pos = { x = 1257.764, y = 330.981, z = -1927.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4007, gadget_id = 70220103, pos = { x = 1253.854, y = 332.166, z = -1917.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 钩爪点发射器击中目标时会自行切换GadgetState，只要根据钩爪发射器的状态做判断和GroupLoad处理即可。
	{ config_id = 1004008, name = "GADGET_STATE_CHANGE_4008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4008", action = "action_EVENT_GADGET_STATE_CHANGE_4008", trigger_count = 0 }
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
		gadgets = { 4001, 4002, 4003, 4004, 4005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4006, 4007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102004, 2)
	
	return 0
end

require "V3_0/GrapplingHook"