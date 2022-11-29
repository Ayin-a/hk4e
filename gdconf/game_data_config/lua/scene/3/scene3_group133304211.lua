-- 基础信息
local base_info = {
	group_id = 133304211
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
	{ config_id = 211001, gadget_id = 70540041, pos = { x = -1592.615, y = 215.185, z = 2775.330 }, rot = { x = 354.166, y = 358.075, z = 16.084 }, level = 30, area_id = 21 },
	{ config_id = 211002, gadget_id = 70500000, pos = { x = -1597.065, y = 215.254, z = 2785.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2045, area_id = 21 },
	{ config_id = 211003, gadget_id = 70500000, pos = { x = -1592.634, y = 216.221, z = 2775.453 }, rot = { x = 340.181, y = 359.067, z = 30.438 }, level = 30, point_type = 2051, owner = 211001, area_id = 21 },
	{ config_id = 211005, gadget_id = 70500000, pos = { x = -1592.777, y = 216.042, z = 2775.256 }, rot = { x = 336.853, y = 0.552, z = 5.590 }, level = 30, point_type = 2051, owner = 211001, area_id = 21 },
	{ config_id = 211006, gadget_id = 70500000, pos = { x = -1592.494, y = 215.848, z = 2775.116 }, rot = { x = 2.369, y = 8.783, z = 29.715 }, level = 30, point_type = 2051, owner = 211001, area_id = 21 },
	{ config_id = 211007, gadget_id = 70500000, pos = { x = -1593.027, y = 215.604, z = 2775.208 }, rot = { x = 353.639, y = 358.239, z = 358.068 }, level = 30, point_type = 2051, owner = 211001, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1211004, name = "GROUP_LOAD_211004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_211004", action = "action_EVENT_GROUP_LOAD_211004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_211004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 211001, 211002, 211003, 211005, 211006, 211007 },
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
function condition_EVENT_GROUP_LOAD_211004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_211004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304211, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"