-- 基础信息
local base_info = {
	group_id = 133309608
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 608004, monster_id = 28050401, pos = { x = -2187.396, y = 64.209, z = 5951.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "采集动物", isOneoff = true, pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 608001, gadget_id = 70210101, pos = { x = -2187.282, y = 64.446, z = 5952.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 608002, gadget_id = 70330427, pos = { x = -2187.029, y = 64.178, z = 5951.892 }, rot = { x = 0.000, y = 0.000, z = 37.780 }, level = 32, area_id = 27 },
	{ config_id = 608003, gadget_id = 70330426, pos = { x = -2186.854, y = 64.206, z = 5952.802 }, rot = { x = 0.000, y = 331.177, z = 64.014 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1608005, name = "ANY_GADGET_DIE_608005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_608005", action = "action_EVENT_ANY_GADGET_DIE_608005" }
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
		gadgets = { 608001, 608002, 608003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_608005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 608004 },
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
function condition_EVENT_ANY_GADGET_DIE_608005(context, evt)
	if 608002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_608005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309608, 2)
	
	return 0
end