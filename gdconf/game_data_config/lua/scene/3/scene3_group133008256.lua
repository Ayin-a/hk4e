-- 基础信息
local base_info = {
	group_id = 133008256
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
	{ config_id = 256001, gadget_id = 70220046, pos = { x = 1256.971, y = 342.988, z = -795.909 }, rot = { x = 0.140, y = 96.362, z = 346.586 }, level = 30, area_id = 10 },
	{ config_id = 256002, gadget_id = 70211101, pos = { x = 1257.169, y = 342.099, z = -795.939 }, rot = { x = 356.269, y = 80.711, z = 351.417 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 256003, gadget_id = 70590025, pos = { x = 1358.078, y = 312.970, z = -810.808 }, rot = { x = 26.696, y = 21.551, z = 43.728 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256004, name = "ANY_GADGET_DIE_256004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_256004", action = "action_EVENT_ANY_GADGET_DIE_256004" }
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
		gadgets = { 256001, 256003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_256004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_256004(context, evt)
	if 256001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_256004(context, evt)
	-- 创建id为256002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 256002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end