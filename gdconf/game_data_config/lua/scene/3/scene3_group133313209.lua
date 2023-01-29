-- 基础信息
local base_info = {
	group_id = 133313209
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 209008, monster_id = 28061501, pos = { x = -823.421, y = -241.692, z = 5839.661 }, rot = { x = 0.000, y = 255.010, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 209001, gadget_id = 70210101, pos = { x = -824.317, y = -238.175, z = 5806.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 },
	{ config_id = 209002, gadget_id = 70330426, pos = { x = -828.922, y = -240.939, z = 5835.804 }, rot = { x = 18.898, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 209003, gadget_id = 70330429, pos = { x = -826.494, y = -241.427, z = 5839.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 209004, gadget_id = 70330428, pos = { x = -830.199, y = -240.179, z = 5839.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 209005, gadget_id = 70330427, pos = { x = -830.423, y = -240.179, z = 5839.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 209006, gadget_id = 70210101, pos = { x = -828.555, y = -241.045, z = 5838.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1209007, name = "ANY_GADGET_DIE_209007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_209007", action = "action_EVENT_ANY_GADGET_DIE_209007" }
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
		gadgets = { 209001, 209002, 209003, 209004, 209005, 209006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_209007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 209008 },
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
function condition_EVENT_ANY_GADGET_DIE_209007(context, evt)
	if 209003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_209007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313209, 2)
	
	return 0
end