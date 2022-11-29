-- 基础信息
local base_info = {
	group_id = 133301471
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
	{ config_id = 1471004, name = "GROUP_LOAD_471004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_471004", action = "action_EVENT_GROUP_LOAD_471004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 471001, gadget_id = 70500000, pos = { x = -1048.591, y = 206.063, z = 2896.547 }, rot = { x = 0.000, y = 213.779, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
		{ config_id = 471002, gadget_id = 70500000, pos = { x = -1049.214, y = 208.115, z = 2878.096 }, rot = { x = 0.000, y = 68.351, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
		{ config_id = 471003, gadget_id = 70500000, pos = { x = -1042.097, y = 207.657, z = 2886.231 }, rot = { x = 3.071, y = 257.162, z = 353.156 }, level = 30, point_type = 2052, area_id = 21 }
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
		triggers = { "GROUP_LOAD_471004" },
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
function condition_EVENT_GROUP_LOAD_471004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_471004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301471, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"