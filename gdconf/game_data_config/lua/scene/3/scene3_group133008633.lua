-- 基础信息
local base_info = {
	group_id = 133008633
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
	{ config_id = 633001, gadget_id = 70220046, pos = { x = 903.884, y = 295.010, z = -954.254 }, rot = { x = 343.395, y = 87.660, z = 356.483 }, level = 30, area_id = 10 },
	{ config_id = 633002, gadget_id = 70211111, pos = { x = 904.175, y = 294.029, z = -954.277 }, rot = { x = 346.585, y = 82.470, z = 0.000 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1633004, name = "ANY_GADGET_DIE_633004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_633004", action = "action_EVENT_ANY_GADGET_DIE_633004" }
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
		gadgets = { 633001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_633004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_633004(context, evt)
	if 633001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_633004(context, evt)
	-- 创建id为633002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 633002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end