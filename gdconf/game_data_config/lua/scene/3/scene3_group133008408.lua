-- 基础信息
local base_info = {
	group_id = 133008408
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
	{ config_id = 408001, gadget_id = 70220046, pos = { x = 899.093, y = 419.691, z = -797.267 }, rot = { x = 348.764, y = 259.411, z = 24.297 }, level = 30, area_id = 10 },
	{ config_id = 408002, gadget_id = 70211101, pos = { x = 899.714, y = 418.257, z = -796.298 }, rot = { x = 7.261, y = 279.089, z = 36.634 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 408003, gadget_id = 70590025, pos = { x = 891.477, y = 416.411, z = -787.867 }, rot = { x = 348.251, y = 336.469, z = 6.521 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1408004, name = "ANY_GADGET_DIE_408004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_408004", action = "action_EVENT_ANY_GADGET_DIE_408004" }
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
		gadgets = { 408001, 408003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_408004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_408004(context, evt)
	if 408001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_408004(context, evt)
	-- 创建id为408002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 408002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end