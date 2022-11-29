-- 基础信息
local base_info = {
	group_id = 133309613
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 613001, monster_id = 28010202, pos = { x = -2257.069, y = -51.530, z = 5680.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 613002, monster_id = 28020604, pos = { x = -2210.054, y = -40.215, z = 5665.638 }, rot = { x = 0.000, y = 309.572, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 613004, gadget_id = 70330266, pos = { x = -2256.405, y = -51.830, z = 5679.786 }, rot = { x = 32.955, y = 317.909, z = 350.483 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1613005, name = "ANY_GADGET_DIE_613005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613005", action = "action_EVENT_ANY_GADGET_DIE_613005" }
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
		monsters = { 613002 },
		gadgets = { 613004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_613005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 613001 },
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
function condition_EVENT_ANY_GADGET_DIE_613005(context, evt)
	if 613004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309613, 2)
	
	return 0
end