-- 基础信息
local base_info = {
	group_id = 133301485
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
	{ config_id = 1485002, name = "GROUP_LOAD_485002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_485002", action = "action_EVENT_GROUP_LOAD_485002", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 485001, gadget_id = 70220103, pos = { x = -1380.301, y = 172.191, z = 2864.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 485003, gadget_id = 70220103, pos = { x = -1365.991, y = 163.134, z = 2870.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 485004, gadget_id = 70220103, pos = { x = -1368.771, y = 173.185, z = 2878.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 485005, gadget_id = 70220103, pos = { x = -1372.343, y = 183.703, z = 2898.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
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
		triggers = { "GROUP_LOAD_485002" },
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
function condition_EVENT_GROUP_LOAD_485002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_485002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301485, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"