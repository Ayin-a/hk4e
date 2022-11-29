-- 基础信息
local base_info = {
	group_id = 250004047
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
	{ config_id = 395, gadget_id = 70360002, pos = { x = 1762.839, y = 256.060, z = 553.808 }, rot = { x = 0.000, y = 284.576, z = 0.000 }, level = 1 },
	{ config_id = 397, gadget_id = 70220013, pos = { x = 1694.289, y = 250.219, z = 601.764 }, rot = { x = 0.000, y = 91.216, z = 0.000 }, level = 1 },
	{ config_id = 398, gadget_id = 70220013, pos = { x = 1681.167, y = 251.420, z = 610.168 }, rot = { x = 0.000, y = 36.250, z = 0.000 }, level = 1 },
	{ config_id = 399, gadget_id = 70220013, pos = { x = 1693.680, y = 250.657, z = 615.830 }, rot = { x = 0.000, y = 31.710, z = 0.000 }, level = 1 },
	{ config_id = 400, gadget_id = 70220013, pos = { x = 1684.876, y = 251.407, z = 619.461 }, rot = { x = 0.000, y = 307.330, z = 0.000 }, level = 1 },
	{ config_id = 469, gadget_id = 70220014, pos = { x = 1683.410, y = 250.964, z = 596.146 }, rot = { x = 0.000, y = 222.752, z = 0.000 }, level = 1 },
	{ config_id = 470, gadget_id = 70220016, pos = { x = 1682.767, y = 252.080, z = 610.052 }, rot = { x = 0.000, y = 180.879, z = 0.000 }, level = 1 },
	{ config_id = 471, gadget_id = 70220016, pos = { x = 1688.395, y = 251.952, z = 619.612 }, rot = { x = 89.848, y = 206.680, z = 0.000 }, level = 1 },
	{ config_id = 472, gadget_id = 70220016, pos = { x = 1693.550, y = 252.987, z = 616.200 }, rot = { x = 0.000, y = 149.586, z = 0.000 }, level = 1 },
	{ config_id = 473, gadget_id = 70220015, pos = { x = 1697.336, y = 254.228, z = 603.388 }, rot = { x = 303.300, y = 275.713, z = 333.572 }, level = 1 },
	{ config_id = 475, gadget_id = 70220008, pos = { x = 1682.348, y = 250.919, z = 596.343 }, rot = { x = 0.000, y = 282.525, z = 0.000 }, level = 1 },
	{ config_id = 488, gadget_id = 70220013, pos = { x = 1703.036, y = 249.621, z = 603.422 }, rot = { x = 0.000, y = 94.217, z = 0.000 }, level = 1 },
	{ config_id = 489, gadget_id = 70220015, pos = { x = 1685.782, y = 256.231, z = 616.008 }, rot = { x = 299.040, y = 306.957, z = 333.037 }, level = 1 },
	{ config_id = 490, gadget_id = 70220014, pos = { x = 1700.766, y = 249.896, z = 607.286 }, rot = { x = 0.000, y = 222.752, z = 0.000 }, level = 1 },
	{ config_id = 491, gadget_id = 70220008, pos = { x = 1683.739, y = 250.810, z = 595.125 }, rot = { x = 0.000, y = 282.525, z = 0.000 }, level = 1 },
	{ config_id = 493, gadget_id = 70220013, pos = { x = 1692.142, y = 250.802, z = 616.954 }, rot = { x = 0.000, y = 120.500, z = 0.000 }, level = 1 },
	{ config_id = 494, gadget_id = 70220014, pos = { x = 1700.802, y = 249.674, z = 599.423 }, rot = { x = 0.000, y = 222.752, z = 0.000 }, level = 1 },
	{ config_id = 496, gadget_id = 70220008, pos = { x = 1681.275, y = 251.489, z = 612.885 }, rot = { x = 0.000, y = 282.525, z = 0.000 }, level = 1 },
	{ config_id = 497, gadget_id = 70220016, pos = { x = 1674.435, y = 252.259, z = 594.756 }, rot = { x = 0.000, y = 149.586, z = 0.000 }, level = 1 },
	{ config_id = 498, gadget_id = 70220013, pos = { x = 1697.101, y = 250.188, z = 608.054 }, rot = { x = 0.000, y = 91.953, z = 0.000 }, level = 1 },
	{ config_id = 500, gadget_id = 70220014, pos = { x = 1691.332, y = 250.604, z = 609.132 }, rot = { x = 0.000, y = 222.752, z = 0.000 }, level = 1 },
	{ config_id = 580, gadget_id = 70220008, pos = { x = 1696.352, y = 250.017, z = 599.992 }, rot = { x = 0.000, y = 282.525, z = 0.000 }, level = 1 },
	{ config_id = 581, gadget_id = 70211001, pos = { x = 1704.050, y = 250.648, z = 589.254 }, rot = { x = 0.000, y = 319.515, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000091, name = "GADGET_CREATE_91", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91", action = "action_EVENT_GADGET_CREATE_91", trigger_count = 0 },
	{ config_id = 1000092, name = "SELECT_OPTION_92", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_92", action = "action_EVENT_SELECT_OPTION_92", trigger_count = 0, forbid_guest = false }
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
	rand_suite = true
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
		gadgets = { 395, 397, 398, 399, 400, 469, 470, 471, 473, 580, 581 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 395, 397, 398, 399, 400, 469, 470, 471, 473, 488, 489, 490, 491, 580 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 395, 397, 398, 399, 400, 469, 470, 471, 472, 473, 475, 493, 494, 580 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 395, 397, 398, 399, 400, 469, 470, 471, 473, 496, 497, 498, 500, 580 },
		regions = { },
		triggers = { "GADGET_CREATE_91", "SELECT_OPTION_92" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_91(context, evt)
	if 395 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_92(context, evt)
	if 395 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_92(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250004047, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end