-- 基础信息
local base_info = {
	group_id = 133303420
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
	{ config_id = 420001, gadget_id = 70500000, pos = { x = -1115.458, y = 83.036, z = 3863.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 420002, gadget_id = 70500000, pos = { x = -1100.198, y = 83.877, z = 3860.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 420003, gadget_id = 70500000, pos = { x = -1111.738, y = 82.466, z = 3826.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 420005, gadget_id = 70540041, pos = { x = -1133.972, y = 82.250, z = 3865.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 420006, gadget_id = 70500000, pos = { x = -1133.704, y = 83.232, z = 3865.767 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 30, point_type = 2051, owner = 420005, area_id = 23 },
	{ config_id = 420007, gadget_id = 70500000, pos = { x = -1133.892, y = 83.122, z = 3865.558 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 30, point_type = 2051, owner = 420005, area_id = 23 },
	{ config_id = 420008, gadget_id = 70500000, pos = { x = -1133.673, y = 82.873, z = 3865.389 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 30, point_type = 2051, owner = 420005, area_id = 23 },
	{ config_id = 420009, gadget_id = 70500000, pos = { x = -1134.254, y = 82.776, z = 3865.473 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 30, point_type = 2051, owner = 420005, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1420004, name = "GROUP_LOAD_420004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_420004", action = "action_EVENT_GROUP_LOAD_420004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_420004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 420001, 420002, 420003, 420005, 420006, 420007, 420008, 420009 },
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
function condition_EVENT_GROUP_LOAD_420004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_420004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303420, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"