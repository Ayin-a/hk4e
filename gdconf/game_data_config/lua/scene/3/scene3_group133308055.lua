-- 基础信息
local base_info = {
	group_id = 133308055
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
	{ config_id = 55001, gadget_id = 70330427, pos = { x = -1834.921, y = 334.123, z = 4114.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 55002, gadget_id = 70330426, pos = { x = -1833.916, y = 334.236, z = 4114.969 }, rot = { x = 274.055, y = 314.942, z = 93.469 }, level = 32, area_id = 26 },
	{ config_id = 55003, gadget_id = 70210101, pos = { x = -1834.996, y = 334.006, z = 4114.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 26 },
	{ config_id = 55004, gadget_id = 70210101, pos = { x = -1804.654, y = 328.181, z = 4125.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
	{ config_id = 55006, gadget_id = 70210101, pos = { x = -1806.099, y = 328.476, z = 4126.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1055005, name = "ANY_GADGET_DIE_55005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_55005", action = "action_EVENT_ANY_GADGET_DIE_55005" }
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
		gadgets = { 55001, 55002, 55004, 55006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_55005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 55003 },
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
function condition_EVENT_ANY_GADGET_DIE_55005(context, evt)
	if 55001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_55005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308055, 2)
	
	return 0
end