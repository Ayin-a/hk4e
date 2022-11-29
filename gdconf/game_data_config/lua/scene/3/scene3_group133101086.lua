-- 基础信息
local base_info = {
	group_id = 133101086
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
	{ config_id = 86001, gadget_id = 70220021, pos = { x = 1248.628, y = 258.316, z = 1187.315 }, rot = { x = 0.000, y = 147.294, z = 0.000 }, level = 24, isOneoff = true, area_id = 6 },
	{ config_id = 86002, gadget_id = 70211101, pos = { x = 1249.388, y = 256.487, z = 1183.088 }, rot = { x = 351.930, y = 0.353, z = 10.470 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086003, name = "ANY_GADGET_DIE_86003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86003", action = "action_EVENT_ANY_GADGET_DIE_86003" }
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
		gadgets = { 86001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_86003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 86002 },
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
function condition_EVENT_ANY_GADGET_DIE_86003(context, evt)
	if 86001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_86003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101086, 2)
	
	return 0
end