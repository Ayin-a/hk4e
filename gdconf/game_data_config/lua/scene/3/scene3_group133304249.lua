-- 基础信息
local base_info = {
	group_id = 133304249
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
	{ config_id = 249001, gadget_id = 71700521, pos = { x = -1124.385, y = 150.261, z = 2246.500 }, rot = { x = 23.945, y = 15.650, z = 354.160 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 249002, gadget_id = 70217020, pos = { x = -1122.574, y = 151.026, z = 2246.654 }, rot = { x = 0.000, y = 79.748, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1249003, name = "ANY_GADGET_DIE_249003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_249003", action = "action_EVENT_ANY_GADGET_DIE_249003" }
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
		gadgets = { 249001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_249003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_249003(context, evt)
	if 249001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_249003(context, evt)
	-- 创建id为249002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 249002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end