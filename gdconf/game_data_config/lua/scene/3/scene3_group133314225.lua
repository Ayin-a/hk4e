-- 基础信息
local base_info = {
	group_id = 133314225
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 225001, monster_id = 28050401, pos = { x = -961.166, y = -143.956, z = 4880.237 }, rot = { x = 0.000, y = 73.689, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 101, area_id = 32 },
	{ config_id = 225002, monster_id = 28050401, pos = { x = -960.695, y = -143.975, z = 4879.526 }, rot = { x = 0.000, y = 23.295, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225003, gadget_id = 70330430, pos = { x = -961.980, y = -143.794, z = 4879.421 }, rot = { x = 3.290, y = 108.094, z = 3.150 }, level = 32, area_id = 32 },
	{ config_id = 225005, gadget_id = 70330432, pos = { x = -935.248, y = -143.628, z = 4880.824 }, rot = { x = 21.058, y = 63.030, z = 347.468 }, level = 32, area_id = 32 },
	{ config_id = 225006, gadget_id = 70330432, pos = { x = -937.381, y = -144.134, z = 4884.005 }, rot = { x = 330.495, y = 237.372, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 225007, gadget_id = 70210101, pos = { x = -937.933, y = -143.112, z = 4883.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 },
	{ config_id = 225008, gadget_id = 70210101, pos = { x = -935.818, y = -142.972, z = 4880.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1225004, name = "ANY_GADGET_DIE_225004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_225004", action = "action_EVENT_ANY_GADGET_DIE_225004" }
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
		gadgets = { 225003, 225005, 225006, 225007, 225008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_225004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 225001, 225002 },
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
function condition_EVENT_ANY_GADGET_DIE_225004(context, evt)
	if 225003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_225004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314225, 2)
	
	return 0
end