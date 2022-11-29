-- 基础信息
local base_info = {
	group_id = 133303300
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
	{ config_id = 300001, gadget_id = 70500000, pos = { x = -1314.312, y = 271.239, z = 3664.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 300002, gadget_id = 70500000, pos = { x = -1294.861, y = 266.740, z = 3665.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 300003, gadget_id = 70500000, pos = { x = -1292.297, y = 261.969, z = 3645.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 300005, gadget_id = 70500000, pos = { x = -1342.584, y = 288.283, z = 3648.894 }, rot = { x = 0.000, y = 187.672, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 300006, gadget_id = 70500000, pos = { x = -1310.591, y = 282.966, z = 3644.294 }, rot = { x = 0.000, y = 135.545, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 300007, gadget_id = 70500000, pos = { x = -1268.047, y = 272.947, z = 3629.637 }, rot = { x = 0.000, y = 150.726, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1300004, name = "GROUP_LOAD_300004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_300004", action = "action_EVENT_GROUP_LOAD_300004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_300004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 300001, 300002, 300003, 300005, 300006, 300007 },
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
function condition_EVENT_GROUP_LOAD_300004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_300004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303300, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"