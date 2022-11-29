-- 基础信息
local base_info = {
	group_id = 133304223
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
	{ config_id = 223001, gadget_id = 70500000, pos = { x = -1325.206, y = 274.715, z = 2865.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 223003, gadget_id = 70500000, pos = { x = -1299.149, y = 283.175, z = 2839.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 223005, gadget_id = 70540041, pos = { x = -1298.905, y = 275.506, z = 2887.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 223006, gadget_id = 70500000, pos = { x = -1298.637, y = 276.488, z = 2888.220 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 30, point_type = 2051, owner = 223005, area_id = 21 },
	{ config_id = 223007, gadget_id = 70500000, pos = { x = -1298.824, y = 276.377, z = 2888.011 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 30, point_type = 2051, owner = 223005, area_id = 21 },
	{ config_id = 223008, gadget_id = 70500000, pos = { x = -1298.606, y = 276.129, z = 2887.842 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 30, point_type = 2051, owner = 223005, area_id = 21 },
	{ config_id = 223009, gadget_id = 70500000, pos = { x = -1299.186, y = 276.032, z = 2887.927 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 30, point_type = 2051, owner = 223005, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1223004, name = "GROUP_LOAD_223004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_223004", action = "action_EVENT_GROUP_LOAD_223004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_223004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 223001, 223003, 223005, 223006, 223007, 223008, 223009 },
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
function condition_EVENT_GROUP_LOAD_223004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_223004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304223, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"