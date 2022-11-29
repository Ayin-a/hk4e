-- 基础信息
local base_info = {
	group_id = 133213501
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 501003, monster_id = 28010104, pos = { x = -3516.079, y = 200.164, z = -3299.757 }, rot = { x = 0.000, y = 4.184, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 501004, monster_id = 28010104, pos = { x = -3515.252, y = 200.000, z = -3301.085 }, rot = { x = 0.000, y = 43.193, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 501006, monster_id = 28010104, pos = { x = -3513.154, y = 200.000, z = -3299.282 }, rot = { x = 0.000, y = 106.101, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 501007, monster_id = 28010105, pos = { x = -3514.293, y = 200.000, z = -3298.711 }, rot = { x = 0.000, y = 43.557, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 501008, monster_id = 28010105, pos = { x = -3514.102, y = 200.000, z = -3300.329 }, rot = { x = 0.000, y = 307.598, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 501001, gadget_id = 70360050, pos = { x = -3514.725, y = 201.864, z = -3300.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 501002, gadget_id = 70900384, pos = { x = -3514.402, y = 202.968, z = -3301.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1501005, name = "ANY_GADGET_DIE_501005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_501005", action = "action_EVENT_ANY_GADGET_DIE_501005" }
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
		gadgets = { 501002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_501005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 501003, 501004, 501006, 501007, 501008 },
		gadgets = { 501001 },
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
function condition_EVENT_ANY_GADGET_DIE_501005(context, evt)
	if 501002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_501005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213501, 2)
	
	return 0
end