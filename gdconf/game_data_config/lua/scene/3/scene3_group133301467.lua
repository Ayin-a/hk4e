-- 基础信息
local base_info = {
	group_id = 133301467
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1467004, name = "GROUP_LOAD_467004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_467004", action = "action_EVENT_GROUP_LOAD_467004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 467001, gadget_id = 70500000, pos = { x = -916.818, y = 205.943, z = 2624.730 }, rot = { x = 0.000, y = 207.039, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
		{ config_id = 467002, gadget_id = 70500000, pos = { x = -909.617, y = 212.147, z = 2635.292 }, rot = { x = 0.000, y = 158.481, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
		{ config_id = 467003, gadget_id = 70500000, pos = { x = -941.381, y = 206.921, z = 2612.622 }, rot = { x = 3.146, y = 288.982, z = 356.360 }, level = 27, point_type = 2052, area_id = 24 }
	}
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
		triggers = { "GROUP_LOAD_467004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GROUP_LOAD_467004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_467004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301467, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end