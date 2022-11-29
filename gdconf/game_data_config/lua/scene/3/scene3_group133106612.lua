-- 基础信息
local base_info = {
	group_id = 133106612
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 612002, monster_id = 28050102, pos = { x = -790.640, y = 168.335, z = 1555.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 },
	{ config_id = 612003, monster_id = 28050102, pos = { x = -790.566, y = 168.422, z = 1558.017 }, rot = { x = 0.000, y = 208.527, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 },
	{ config_id = 612004, monster_id = 28050102, pos = { x = -790.566, y = 168.422, z = 1558.017 }, rot = { x = 0.000, y = 208.527, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 612001, gadget_id = 70220038, pos = { x = -790.406, y = 168.303, z = 1557.150 }, rot = { x = 0.000, y = 220.383, z = 0.000 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1612005, name = "ANY_GADGET_DIE_612005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_612005", action = "action_EVENT_ANY_GADGET_DIE_612005", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 612001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_612005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 612002, 612003, 612004 },
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
function condition_EVENT_ANY_GADGET_DIE_612005(context, evt)
	if 612001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_612005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106612, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end