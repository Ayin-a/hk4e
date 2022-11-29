-- 基础信息
local base_info = {
	group_id = 133302259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 259001, monster_id = 20010101, pos = { x = -967.805, y = 209.396, z = 2923.305 }, rot = { x = 0.000, y = 61.527, z = 0.000 }, level = 33, drop_tag = "史莱姆", pose_id = 201, area_id = 23 },
	{ config_id = 259003, monster_id = 26090201, pos = { x = -968.432, y = 209.068, z = 2932.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 259005, monster_id = 26090201, pos = { x = -962.322, y = 207.828, z = 2936.962 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 259006, monster_id = 26090201, pos = { x = -955.473, y = 213.274, z = 2924.774 }, rot = { x = 0.000, y = 282.212, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 259007, monster_id = 26090201, pos = { x = -951.258, y = 217.481, z = 2901.623 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 24 },
	{ config_id = 259008, monster_id = 26090201, pos = { x = -968.333, y = 209.968, z = 2919.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 259002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -970.288, y = 209.398, z = 2926.392 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1259002, name = "ENTER_REGION_259002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259002", action = "action_EVENT_ENTER_REGION_259002" },
	{ config_id = 1259004, name = "GROUP_LOAD_259004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_259004", action = "action_EVENT_GROUP_LOAD_259004", trigger_count = 0 }
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
		monsters = { 259005, 259006, 259007 },
		gadgets = { },
		regions = { 259002 },
		triggers = { "ENTER_REGION_259002", "GROUP_LOAD_259004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 259001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 259003, 259008 },
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
function condition_EVENT_ENTER_REGION_259002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return false
	
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_259002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302259, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_259004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_259004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302259, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"