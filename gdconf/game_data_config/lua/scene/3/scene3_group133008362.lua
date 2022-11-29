-- 基础信息
local base_info = {
	group_id = 133008362
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
	{ config_id = 362001, gadget_id = 70220046, pos = { x = 1054.500, y = 505.434, z = -894.791 }, rot = { x = 357.273, y = 317.341, z = 0.000 }, level = 30, isOneoff = true, area_id = 10 },
	{ config_id = 362002, gadget_id = 70211101, pos = { x = 1054.855, y = 504.307, z = -895.702 }, rot = { x = 9.857, y = 10.247, z = 28.275 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1362004, name = "ANY_GADGET_DIE_362004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362004", action = "action_EVENT_ANY_GADGET_DIE_362004" }
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
		gadgets = { 362001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362004(context, evt)
	if 362001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362004(context, evt)
	-- 创建id为362002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 362002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end