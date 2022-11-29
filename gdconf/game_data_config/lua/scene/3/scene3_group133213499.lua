-- 基础信息
local base_info = {
	group_id = 133213499
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
	{ config_id = 499001, gadget_id = 70360050, pos = { x = -3477.688, y = 206.689, z = -3097.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 499002, gadget_id = 70900384, pos = { x = -3476.610, y = 207.793, z = -3096.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 499003, gadget_id = 70210101, pos = { x = -3478.975, y = 205.036, z = -3095.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", persistent = true, area_id = 12 },
	{ config_id = 499004, gadget_id = 70210101, pos = { x = -3476.870, y = 204.721, z = -3094.962 }, rot = { x = 9.680, y = 193.050, z = 22.738 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1499005, name = "ANY_GADGET_DIE_499005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_499005", action = "action_EVENT_ANY_GADGET_DIE_499005" }
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
		gadgets = { 499002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_499005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 499001, 499003, 499004 },
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
function condition_EVENT_ANY_GADGET_DIE_499005(context, evt)
	if 499002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_499005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213499, 2)
	
	return 0
end