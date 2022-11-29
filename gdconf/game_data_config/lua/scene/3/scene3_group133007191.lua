-- 基础信息
local base_info = {
	group_id = 133007191
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
	{ config_id = 686, gadget_id = 70900039, pos = { x = 2645.067, y = 213.572, z = -185.007 }, rot = { x = 0.000, y = 120.005, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 191001, gadget_id = 70680001, pos = { x = 2648.703, y = 213.161, z = -186.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, arguments = { 5, 10, 5 }, area_id = 4 },
	{ config_id = 191002, gadget_id = 70680002, pos = { x = 2647.920, y = 234.799, z = -189.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 191003, gadget_id = 70680004, pos = { x = 2643.096, y = 257.000, z = -189.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 191004, gadget_id = 70690001, pos = { x = 2643.117, y = 277.137, z = -189.286 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 191005, gadget_id = 70690001, pos = { x = 2643.117, y = 287.034, z = -189.286 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000224, name = "GADGET_STATE_CHANGE_224", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224", action = "action_EVENT_GADGET_STATE_CHANGE_224", trigger_count = 0, tlog_tag = "风龙_191_风场机关_触发" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 191006, gadget_id = 70690017, pos = { x = 2808.546, y = 210.097, z = -43.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, area_id = 4 }
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
		gadgets = { 686 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_224" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 686, 191001, 191002, 191003, 191004, 191005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_224(context, evt)
	if 686 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007191, 2)
	
	return 0
end