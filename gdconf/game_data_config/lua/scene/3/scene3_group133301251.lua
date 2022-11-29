-- 基础信息
local base_info = {
	group_id = 133301251
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
	{ config_id = 251001, gadget_id = 70500000, pos = { x = -83.794, y = 285.550, z = 3211.465 }, rot = { x = 344.507, y = 1.330, z = 350.247 }, level = 33, point_type = 2052, area_id = 22 },
	{ config_id = 251002, gadget_id = 70500000, pos = { x = -49.453, y = 286.497, z = 3204.017 }, rot = { x = 344.406, y = 359.023, z = 7.125 }, level = 33, point_type = 2052, area_id = 22 },
	{ config_id = 251003, gadget_id = 70500000, pos = { x = -65.007, y = 288.476, z = 3179.749 }, rot = { x = 343.108, y = 359.588, z = 3.537 }, level = 33, point_type = 2052, area_id = 22 },
	{ config_id = 251005, gadget_id = 70290008, pos = { x = -78.303, y = 284.410, z = 3203.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 251006, gadget_id = 70500000, pos = { x = -78.303, y = 284.410, z = 3203.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3008, owner = 251005, area_id = 22 },
	{ config_id = 251007, gadget_id = 70290008, pos = { x = -59.219, y = 284.410, z = 3203.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 251008, gadget_id = 70500000, pos = { x = -59.219, y = 284.410, z = 3203.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3008, owner = 251007, area_id = 22 },
	{ config_id = 251009, gadget_id = 70290008, pos = { x = -64.691, y = 284.602, z = 3192.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 251010, gadget_id = 70500000, pos = { x = -64.691, y = 284.602, z = 3192.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3008, owner = 251009, area_id = 22 },
	{ config_id = 251011, gadget_id = 70290008, pos = { x = -70.756, y = 284.410, z = 3213.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 251012, gadget_id = 70500000, pos = { x = -70.756, y = 284.410, z = 3213.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3008, owner = 251011, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1251004, name = "GROUP_LOAD_251004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_251004", action = "action_EVENT_GROUP_LOAD_251004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_251004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 251001, 251002, 251003, 251005, 251006, 251007, 251008, 251009, 251010, 251011, 251012 },
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
function condition_EVENT_GROUP_LOAD_251004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_251004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301251, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"