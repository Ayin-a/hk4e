-- 基础信息
local base_info = {
	group_id = 133303288
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
	{ config_id = 288001, gadget_id = 70500000, pos = { x = -1306.273, y = 183.901, z = 3306.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 288002, gadget_id = 70500000, pos = { x = -1295.245, y = 182.592, z = 3312.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 288003, gadget_id = 70500000, pos = { x = -1293.420, y = 187.600, z = 3283.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 288005, gadget_id = 70500000, pos = { x = -1289.194, y = 204.520, z = 3252.421 }, rot = { x = 0.000, y = 206.984, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 288006, gadget_id = 70500000, pos = { x = -1300.036, y = 185.801, z = 3290.852 }, rot = { x = 0.000, y = 155.468, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 288007, gadget_id = 70500000, pos = { x = -1283.301, y = 173.805, z = 3360.152 }, rot = { x = 0.000, y = 186.963, z = 0.000 }, level = 30, point_type = 2001, area_id = 23 },
	{ config_id = 288008, gadget_id = 70500000, pos = { x = -1283.181, y = 181.874, z = 3326.978 }, rot = { x = 0.000, y = 154.196, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1288004, name = "GROUP_LOAD_288004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_288004", action = "action_EVENT_GROUP_LOAD_288004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_288004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 288001, 288002, 288003, 288005, 288006, 288007, 288008 },
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
function condition_EVENT_GROUP_LOAD_288004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_288004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303288, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"