-- 基础信息
local base_info = {
	group_id = 133213498
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
	{ config_id = 498001, gadget_id = 70360050, pos = { x = -3915.056, y = 205.679, z = -3296.745 }, rot = { x = 1.621, y = 7.429, z = 350.800 }, level = 27, area_id = 12 },
	{ config_id = 498002, gadget_id = 70900384, pos = { x = -3914.908, y = 207.422, z = -3298.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 498003, gadget_id = 70210101, pos = { x = -3917.928, y = 202.885, z = -3299.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", persistent = true, area_id = 12 },
	{ config_id = 498004, gadget_id = 70210101, pos = { x = -3918.908, y = 203.160, z = -3297.243 }, rot = { x = 9.680, y = 193.050, z = 22.738 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1498005, name = "ANY_GADGET_DIE_498005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_498005", action = "action_EVENT_ANY_GADGET_DIE_498005" }
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
		gadgets = { 498002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_498005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 498001, 498003, 498004 },
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
function condition_EVENT_ANY_GADGET_DIE_498005(context, evt)
	if 498002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_498005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213498, 2)
	
	return 0
end