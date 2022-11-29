-- 基础信息
local base_info = {
	group_id = 133008254
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
	{ config_id = 254001, gadget_id = 70220046, pos = { x = 1416.326, y = 269.045, z = -1106.464 }, rot = { x = 352.285, y = 175.396, z = 357.435 }, level = 30, area_id = 10 },
	{ config_id = 254002, gadget_id = 70211101, pos = { x = 1416.186, y = 269.397, z = -1105.389 }, rot = { x = 11.919, y = 158.028, z = 353.799 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 254003, gadget_id = 70590025, pos = { x = 1428.961, y = 266.839, z = -1119.867 }, rot = { x = 346.669, y = 160.757, z = 19.254 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254004, name = "ANY_GADGET_DIE_254004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_254004", action = "action_EVENT_ANY_GADGET_DIE_254004" }
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
		gadgets = { 254001, 254003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_254004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_254004(context, evt)
	if 254001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_254004(context, evt)
	-- 创建id为254002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 254002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end