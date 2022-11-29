-- 基础信息
local base_info = {
	group_id = 133309597
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 597004, monster_id = 28010203, pos = { x = -2178.842, y = -21.298, z = 5574.833 }, rot = { x = 0.000, y = 64.146, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 597001, gadget_id = 70330427, pos = { x = -2179.427, y = -21.494, z = 5573.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 597002, gadget_id = 70330427, pos = { x = -2178.355, y = -21.296, z = 5575.311 }, rot = { x = 334.241, y = 339.183, z = 81.961 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1597003, name = "ANY_GADGET_DIE_597003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_597003", action = "action_EVENT_ANY_GADGET_DIE_597003" }
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
		gadgets = { 597001, 597002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_597003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 597004 },
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
function condition_EVENT_ANY_GADGET_DIE_597003(context, evt)
	if 597002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_597003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309597, 2)
	
	return 0
end