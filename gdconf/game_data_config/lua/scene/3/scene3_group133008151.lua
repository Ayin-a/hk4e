-- 基础信息
local base_info = {
	group_id = 133008151
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
	{ config_id = 151001, gadget_id = 70360102, pos = { x = 1517.797, y = 272.427, z = -952.631 }, rot = { x = 0.000, y = 0.000, z = 341.391 }, level = 30, area_id = 10 },
	{ config_id = 151002, gadget_id = 70211101, pos = { x = 1518.126, y = 272.211, z = -952.885 }, rot = { x = 13.103, y = 43.734, z = 4.646 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151003, name = "ANY_GADGET_DIE_151003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_151003", action = "action_EVENT_ANY_GADGET_DIE_151003" }
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
		gadgets = { 151001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_151003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_151003(context, evt)
	if 151001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_151003(context, evt)
	-- 创建id为151002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 151002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end