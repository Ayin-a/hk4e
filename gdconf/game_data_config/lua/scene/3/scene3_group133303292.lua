-- 基础信息
local base_info = {
	group_id = 133303292
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
	{ config_id = 292001, gadget_id = 70500000, pos = { x = -1508.239, y = 219.849, z = 3128.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 292002, gadget_id = 70500000, pos = { x = -1483.841, y = 221.147, z = 3134.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 292003, gadget_id = 70500000, pos = { x = -1494.358, y = 221.993, z = 3114.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 292005, gadget_id = 70500000, pos = { x = -1553.332, y = 212.167, z = 3141.351 }, rot = { x = 0.000, y = 160.884, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 292006, gadget_id = 70500000, pos = { x = -1509.229, y = 228.544, z = 3109.728 }, rot = { x = 0.000, y = 129.736, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 292007, gadget_id = 70500000, pos = { x = -1459.356, y = 232.228, z = 3136.210 }, rot = { x = 0.000, y = 38.624, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 292008, gadget_id = 70500000, pos = { x = -1514.949, y = 208.726, z = 3169.514 }, rot = { x = 0.000, y = 354.973, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 292009, gadget_id = 70500000, pos = { x = -1490.193, y = 221.703, z = 3142.307 }, rot = { x = 0.000, y = 108.925, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 292010, gadget_id = 70500000, pos = { x = -1476.438, y = 226.423, z = 3107.244 }, rot = { x = 0.000, y = 245.082, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1292004, name = "GROUP_LOAD_292004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_292004", action = "action_EVENT_GROUP_LOAD_292004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_292004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 292001, 292002, 292003, 292005, 292006, 292007, 292008, 292009, 292010 },
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
function condition_EVENT_GROUP_LOAD_292004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_292004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303292, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"