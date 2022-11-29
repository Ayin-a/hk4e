-- 基础信息
local base_info = {
	group_id = 133302234
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
	{ config_id = 234001, gadget_id = 70500000, pos = { x = -377.164, y = 103.088, z = 2269.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 24 },
	{ config_id = 234002, gadget_id = 70500000, pos = { x = -390.627, y = 103.185, z = 2296.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 2004, area_id = 24 },
	{ config_id = 234003, gadget_id = 70500000, pos = { x = -381.710, y = 107.826, z = 2236.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 24 },
	{ config_id = 234005, gadget_id = 70500000, pos = { x = -304.005, y = 105.574, z = 2230.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 234006, gadget_id = 70500000, pos = { x = -298.989, y = 106.634, z = 2203.936 }, rot = { x = 0.000, y = 352.489, z = 0.000 }, level = 27, point_type = 2001, area_id = 24 },
	{ config_id = 234007, gadget_id = 70500000, pos = { x = -281.653, y = 107.100, z = 2198.627 }, rot = { x = 0.000, y = 301.104, z = 0.000 }, level = 27, point_type = 2001, area_id = 24 },
	{ config_id = 234008, gadget_id = 70290003, pos = { x = -344.182, y = 120.455, z = 2257.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 234009, gadget_id = 70500000, pos = { x = -344.182, y = 120.558, z = 2257.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 234008, area_id = 24 },
	{ config_id = 234010, gadget_id = 70500000, pos = { x = -344.182, y = 120.558, z = 2257.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 234008, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1234004, name = "GROUP_LOAD_234004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_234004", action = "action_EVENT_GROUP_LOAD_234004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_234004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 234001, 234002, 234003, 234005, 234006, 234007, 234008, 234009, 234010 },
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
function condition_EVENT_GROUP_LOAD_234004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_234004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302234, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"