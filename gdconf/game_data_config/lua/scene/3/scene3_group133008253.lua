-- 基础信息
local base_info = {
	group_id = 133008253
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
	{ config_id = 253001, gadget_id = 70220046, pos = { x = 1241.956, y = 347.287, z = -992.795 }, rot = { x = 9.956, y = 228.389, z = 9.037 }, level = 30, area_id = 10 },
	{ config_id = 253002, gadget_id = 70211101, pos = { x = 1242.261, y = 346.925, z = -993.157 }, rot = { x = 25.032, y = 215.605, z = 22.543 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 253003, gadget_id = 70590025, pos = { x = 1208.569, y = 345.815, z = -1003.432 }, rot = { x = 12.062, y = 212.145, z = 44.660 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1253004, name = "ANY_GADGET_DIE_253004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_253004", action = "action_EVENT_ANY_GADGET_DIE_253004" }
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
		gadgets = { 253001, 253003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_253004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_253004(context, evt)
	if 253001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_253004(context, evt)
	-- 创建id为253002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 253002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end