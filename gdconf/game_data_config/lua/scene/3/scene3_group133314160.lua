-- 基础信息
local base_info = {
	group_id = 133314160
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 160004, monster_id = 28050106, pos = { x = -125.929, y = 53.973, z = 4903.559 }, rot = { x = 0.000, y = 1.272, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 160005, monster_id = 28050106, pos = { x = -155.905, y = 21.318, z = 5085.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 160006, monster_id = 28050106, pos = { x = -155.911, y = 21.309, z = 5085.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 160001, gadget_id = 70330266, pos = { x = -125.519, y = 53.760, z = 4903.770 }, rot = { x = 0.141, y = 343.413, z = 349.791 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 160002, gadget_id = 70330266, pos = { x = -156.109, y = 21.430, z = 5085.290 }, rot = { x = 355.258, y = 1.919, z = 337.943 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1160003, name = "ANY_GADGET_DIE_160003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_160003", action = "action_EVENT_ANY_GADGET_DIE_160003" },
	{ config_id = 1160007, name = "ANY_GADGET_DIE_160007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_160007", action = "action_EVENT_ANY_GADGET_DIE_160007" }
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
		gadgets = { 160001, 160002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_160003", "ANY_GADGET_DIE_160007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 160004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 160005, 160006 },
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
function condition_EVENT_ANY_GADGET_DIE_160003(context, evt)
	if 160001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_160003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314160, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_160007(context, evt)
	if 160002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_160007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314160, 3)
	
	return 0
end