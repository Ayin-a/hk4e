-- 基础信息
local base_info = {
	group_id = 133309244
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 244001, monster_id = 28010301, pos = { x = -2403.666, y = -63.304, z = 5752.438 }, rot = { x = 0.000, y = 7.976, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 244002, gadget_id = 70330428, pos = { x = -2403.456, y = -63.490, z = 5752.430 }, rot = { x = 0.000, y = 7.976, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 244003, gadget_id = 70330429, pos = { x = -2403.000, y = -63.521, z = 5752.737 }, rot = { x = 317.405, y = 284.528, z = 71.270 }, level = 32, area_id = 27 },
	{ config_id = 244004, gadget_id = 70210101, pos = { x = -2404.064, y = -63.796, z = 5751.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1244005, name = "ANY_GADGET_DIE_244005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_244005", action = "action_EVENT_ANY_GADGET_DIE_244005" }
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
		gadgets = { 244002, 244003, 244004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_244005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 244001 },
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
function condition_EVENT_ANY_GADGET_DIE_244005(context, evt)
	if 244002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_244005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309244, 2)
	
	return 0
end