-- 基础信息
local base_info = {
	group_id = 240015012
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
	{ config_id = 12001, gadget_id = 70211011, pos = { x = -41.903, y = 60.234, z = 164.333 }, rot = { x = 0.000, y = 213.990, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true },
	{ config_id = 12003, gadget_id = 70360005, pos = { x = -40.953, y = 60.128, z = 162.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012002, name = "GADGET_STATE_CHANGE_12002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12002", action = "action_EVENT_GADGET_STATE_CHANGE_12002" }
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
		gadgets = { 12001, 12003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_12002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12002(context, evt)
	if 12003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240015013, 2)
	
	return 0
end