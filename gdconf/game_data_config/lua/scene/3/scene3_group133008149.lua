-- 基础信息
local base_info = {
	group_id = 133008149
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
	{ config_id = 149001, gadget_id = 70360102, pos = { x = 1561.042, y = 266.373, z = -872.503 }, rot = { x = 359.142, y = 0.125, z = 343.464 }, level = 30, area_id = 10 },
	{ config_id = 149002, gadget_id = 70211101, pos = { x = 1560.991, y = 265.979, z = -872.417 }, rot = { x = 11.049, y = 44.067, z = 345.566 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149003, name = "ANY_GADGET_DIE_149003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_149003", action = "action_EVENT_ANY_GADGET_DIE_149003" }
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
		gadgets = { 149001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_149003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_149003(context, evt)
	if 149001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_149003(context, evt)
	-- 创建id为149002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 149002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end