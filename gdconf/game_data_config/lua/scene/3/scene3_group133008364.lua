-- 基础信息
local base_info = {
	group_id = 133008364
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
	{ config_id = 364001, gadget_id = 70220046, pos = { x = 1105.754, y = 510.243, z = -814.339 }, rot = { x = 349.558, y = 180.897, z = 354.406 }, level = 30, area_id = 10 },
	{ config_id = 364002, gadget_id = 70211101, pos = { x = 1105.784, y = 508.540, z = -813.892 }, rot = { x = 346.920, y = 171.050, z = 353.050 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1364004, name = "ANY_GADGET_DIE_364004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_364004", action = "action_EVENT_ANY_GADGET_DIE_364004" }
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
		gadgets = { 364001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_364004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_364004(context, evt)
	if 364001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_364004(context, evt)
	-- 创建id为364002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 364002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end