-- 基础信息
local base_info = {
	group_id = 166001202
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
	{ config_id = 202001, gadget_id = 70290395, pos = { x = 262.369, y = 306.451, z = 396.635 }, rot = { x = 351.774, y = 150.094, z = 351.626 }, level = 32, isOneoff = true, area_id = 300 },
	{ config_id = 202002, gadget_id = 70290324, pos = { x = 259.619, y = 304.275, z = 393.369 }, rot = { x = 0.000, y = 311.060, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 202003, gadget_id = 70290324, pos = { x = 249.777, y = 303.268, z = 396.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 202004, gadget_id = 70290324, pos = { x = 258.188, y = 305.110, z = 390.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1202005, name = "ANY_GADGET_DIE_202005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_202005", action = "action_EVENT_ANY_GADGET_DIE_202005" }
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
		gadgets = { 202001, 202002, 202003, 202004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_202005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_202005(context, evt)
	if 202001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_202005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001467, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end