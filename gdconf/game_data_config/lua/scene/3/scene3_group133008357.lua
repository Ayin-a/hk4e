-- 基础信息
local base_info = {
	group_id = 133008357
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
	{ config_id = 357001, gadget_id = 70220046, pos = { x = 1296.277, y = 283.692, z = -430.075 }, rot = { x = 337.152, y = 139.253, z = 338.356 }, level = 30, area_id = 10 },
	{ config_id = 357002, gadget_id = 70211101, pos = { x = 1296.789, y = 282.603, z = -429.726 }, rot = { x = 332.145, y = 122.323, z = 345.655 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 357003, gadget_id = 70590025, pos = { x = 1332.870, y = 281.700, z = -459.270 }, rot = { x = 336.584, y = 5.288, z = 5.303 }, level = 30, area_id = 10 },
	{ config_id = 357005, gadget_id = 70590025, pos = { x = 1264.373, y = 259.199, z = -399.513 }, rot = { x = 8.839, y = 268.133, z = 333.464 }, level = 30, area_id = 10 },
	{ config_id = 357006, gadget_id = 70590025, pos = { x = 1190.430, y = 257.506, z = -382.052 }, rot = { x = 330.076, y = 310.886, z = 5.965 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1357004, name = "ANY_GADGET_DIE_357004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_357004", action = "action_EVENT_ANY_GADGET_DIE_357004" }
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
		gadgets = { 357001, 357003, 357005, 357006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_357004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_357004(context, evt)
	if 357001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_357004(context, evt)
	-- 创建id为357002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 357002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end