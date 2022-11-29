-- 基础信息
local base_info = {
	group_id = 133305015
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
	{ config_id = 15001, gadget_id = 70500000, pos = { x = -2465.304, y = 344.692, z = 3956.360 }, rot = { x = 325.667, y = 285.444, z = 333.416 }, level = 32, point_type = 2054, area_id = 26 },
	{ config_id = 15002, gadget_id = 70500000, pos = { x = -2449.285, y = 339.506, z = 3953.332 }, rot = { x = 335.583, y = 326.762, z = 325.533 }, level = 32, point_type = 2054, area_id = 26 },
	{ config_id = 15003, gadget_id = 70500000, pos = { x = -2454.467, y = 345.900, z = 3925.953 }, rot = { x = 343.737, y = 73.824, z = 320.747 }, level = 32, point_type = 2054, area_id = 26 },
	{ config_id = 15005, gadget_id = 70500000, pos = { x = -2452.121, y = 340.687, z = 3925.457 }, rot = { x = 359.111, y = 353.417, z = 354.109 }, level = 32, point_type = 2054, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015004, name = "GROUP_LOAD_15004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15004", action = "action_EVENT_GROUP_LOAD_15004", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_15004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 15001, 15002, 15003, 15005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_15004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133305015, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"