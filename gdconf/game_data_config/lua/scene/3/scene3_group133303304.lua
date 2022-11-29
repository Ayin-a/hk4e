-- 基础信息
local base_info = {
	group_id = 133303304
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
	{ config_id = 304001, gadget_id = 70500000, pos = { x = -1955.926, y = 222.206, z = 3269.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 304002, gadget_id = 70500000, pos = { x = -1923.011, y = 215.962, z = 3276.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 304003, gadget_id = 70500000, pos = { x = -1954.447, y = 220.018, z = 3248.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 304005, gadget_id = 70500000, pos = { x = -1969.166, y = 226.386, z = 3258.023 }, rot = { x = 0.000, y = 102.901, z = 0.000 }, level = 30, point_type = 2001, area_id = 23 },
	{ config_id = 304006, gadget_id = 70500000, pos = { x = -1951.077, y = 223.520, z = 3302.515 }, rot = { x = 0.000, y = 256.246, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 304007, gadget_id = 70500000, pos = { x = -1914.999, y = 207.040, z = 3301.009 }, rot = { x = 0.000, y = 298.940, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1304004, name = "GROUP_LOAD_304004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_304004", action = "action_EVENT_GROUP_LOAD_304004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_304004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 304001, 304002, 304003, 304005, 304006, 304007 },
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
function condition_EVENT_GROUP_LOAD_304004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_304004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303304, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"