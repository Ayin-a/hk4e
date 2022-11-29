-- 基础信息
local base_info = {
	group_id = 133213500
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
	{ config_id = 500001, gadget_id = 70360050, pos = { x = -3569.426, y = 225.224, z = -3111.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 500002, gadget_id = 70900384, pos = { x = -3569.755, y = 223.470, z = -3115.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 500003, gadget_id = 70210101, pos = { x = -3571.334, y = 220.863, z = -3114.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", persistent = true, area_id = 12 },
	{ config_id = 500004, gadget_id = 70210101, pos = { x = -3570.000, y = 220.436, z = -3114.005 }, rot = { x = 9.680, y = 193.050, z = 22.738 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1500005, name = "ANY_GADGET_DIE_500005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_500005", action = "action_EVENT_ANY_GADGET_DIE_500005" }
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
		gadgets = { 500002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_500005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 500001, 500003, 500004 },
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
function condition_EVENT_ANY_GADGET_DIE_500005(context, evt)
	if 500002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_500005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213500, 2)
	
	return 0
end