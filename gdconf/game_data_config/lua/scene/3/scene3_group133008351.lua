-- 基础信息
local base_info = {
	group_id = 133008351
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
	{ config_id = 351001, gadget_id = 70220046, pos = { x = 955.531, y = 200.918, z = -1260.510 }, rot = { x = 328.972, y = 86.863, z = 3.086 }, level = 30, area_id = 10 },
	{ config_id = 351002, gadget_id = 70211101, pos = { x = 956.081, y = 200.443, z = -1260.155 }, rot = { x = 359.118, y = 70.816, z = 357.465 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 351003, gadget_id = 70590025, pos = { x = 900.047, y = 201.826, z = -1239.365 }, rot = { x = 340.197, y = 291.423, z = 6.663 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1351004, name = "ANY_GADGET_DIE_351004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_351004", action = "action_EVENT_ANY_GADGET_DIE_351004" }
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
		gadgets = { 351001, 351003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_351004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_351004(context, evt)
	if 351001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_351004(context, evt)
	-- 创建id为351002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 351002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end