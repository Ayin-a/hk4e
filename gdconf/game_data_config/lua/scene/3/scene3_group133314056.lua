-- 基础信息
local base_info = {
	group_id = 133314056
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 56004, monster_id = 28061501, pos = { x = -905.984, y = -133.057, z = 4893.730 }, rot = { x = 0.000, y = 36.007, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 56001, gadget_id = 70330429, pos = { x = -905.452, y = -134.479, z = 4895.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 56002, gadget_id = 70330428, pos = { x = -906.323, y = -133.312, z = 4894.101 }, rot = { x = 37.663, y = 342.442, z = 332.624 }, level = 32, area_id = 32 },
	{ config_id = 56003, gadget_id = 70330428, pos = { x = -905.130, y = -133.754, z = 4894.700 }, rot = { x = 4.946, y = 13.172, z = 323.669 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1056005, name = "ANY_GADGET_DIE_56005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_56005", action = "action_EVENT_ANY_GADGET_DIE_56005" }
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
		gadgets = { 56001, 56002, 56003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_56005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 56004 },
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
function condition_EVENT_ANY_GADGET_DIE_56005(context, evt)
	if 56001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_56005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314056, 2)
	
	return 0
end