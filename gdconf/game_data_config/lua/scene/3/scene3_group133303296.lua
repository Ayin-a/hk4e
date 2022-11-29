-- 基础信息
local base_info = {
	group_id = 133303296
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
	{ config_id = 296001, gadget_id = 70500000, pos = { x = -1403.640, y = 260.881, z = 3850.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 296002, gadget_id = 70500000, pos = { x = -1379.880, y = 275.815, z = 3858.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 296003, gadget_id = 70500000, pos = { x = -1383.856, y = 262.519, z = 3835.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 296005, gadget_id = 70500000, pos = { x = -1426.494, y = 255.660, z = 3825.159 }, rot = { x = 0.000, y = 208.360, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 296006, gadget_id = 70500000, pos = { x = -1382.144, y = 264.499, z = 3828.846 }, rot = { x = 0.000, y = 107.859, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 296007, gadget_id = 70500000, pos = { x = -1410.822, y = 280.568, z = 3866.155 }, rot = { x = 0.000, y = 227.308, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1296004, name = "GROUP_LOAD_296004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_296004", action = "action_EVENT_GROUP_LOAD_296004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_296004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 296001, 296002, 296003, 296005, 296006, 296007 },
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
function condition_EVENT_GROUP_LOAD_296004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_296004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303296, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"