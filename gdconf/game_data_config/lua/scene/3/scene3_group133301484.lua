-- 基础信息
local base_info = {
	group_id = 133301484
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
	{ config_id = 1484004, name = "GROUP_LOAD_484004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_484004", action = "action_EVENT_GROUP_LOAD_484004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 484001, gadget_id = 70500000, pos = { x = -1341.734, y = 177.842, z = 2868.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2002, area_id = 21 },
		{ config_id = 484002, gadget_id = 70500000, pos = { x = -1343.505, y = 179.908, z = 2880.986 }, rot = { x = 0.000, y = 287.862, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
		{ config_id = 484003, gadget_id = 70500000, pos = { x = -1338.262, y = 177.846, z = 2870.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2002, area_id = 21 }
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
		triggers = { "GROUP_LOAD_484004" },
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
function condition_EVENT_GROUP_LOAD_484004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_484004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301484, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end