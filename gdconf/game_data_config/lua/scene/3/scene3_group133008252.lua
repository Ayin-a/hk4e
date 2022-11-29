-- 基础信息
local base_info = {
	group_id = 133008252
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
	{ config_id = 252001, gadget_id = 70220046, pos = { x = 1477.385, y = 306.803, z = -925.702 }, rot = { x = 347.119, y = 22.284, z = 356.220 }, level = 30, area_id = 10 },
	{ config_id = 252002, gadget_id = 70211101, pos = { x = 1477.897, y = 305.713, z = -925.352 }, rot = { x = 346.585, y = 5.776, z = 0.000 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1252003, name = "ANY_GADGET_DIE_252003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_252003", action = "action_EVENT_ANY_GADGET_DIE_252003" }
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
		gadgets = { 252001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_252003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_252003(context, evt)
	if 252001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_252003(context, evt)
	-- 创建id为252002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 252002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end