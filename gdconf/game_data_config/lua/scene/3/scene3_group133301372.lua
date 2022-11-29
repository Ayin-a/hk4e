-- 基础信息
local base_info = {
	group_id = 133301372
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 372001, monster_id = 22050201, pos = { x = -374.441, y = 125.107, z = 3951.026 }, rot = { x = 0.000, y = 213.147, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, area_id = 22 },
	{ config_id = 372002, monster_id = 22040201, pos = { x = -382.491, y = 126.309, z = 3948.882 }, rot = { x = 0.000, y = 113.306, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, area_id = 22 },
	{ config_id = 372003, monster_id = 22040201, pos = { x = -393.498, y = 121.780, z = 3917.773 }, rot = { x = 0.000, y = 99.391, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 372005, monster_id = 22040201, pos = { x = -387.293, y = 121.780, z = 3921.202 }, rot = { x = 0.000, y = 233.018, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 372006, monster_id = 22040201, pos = { x = -374.277, y = 123.475, z = 3941.315 }, rot = { x = 0.000, y = 283.268, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", affix = { 6117 }, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 372007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -392.135, y = 123.055, z = 3921.174 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1372004, name = "GROUP_LOAD_372004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_372004", action = "action_EVENT_GROUP_LOAD_372004", trigger_count = 0 },
	{ config_id = 1372007, name = "ENTER_REGION_372007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_372007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 372008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -370.868, y = 123.552, z = 3942.411 }, area_id = 22 }
	},
	triggers = {
		{ config_id = 1372008, name = "ENTER_REGION_372008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_372008" }
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
		monsters = { 372006 },
		gadgets = { },
		regions = { 372007 },
		triggers = { "GROUP_LOAD_372004", "ENTER_REGION_372007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 372001, 372002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 372003, 372005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_GROUP_LOAD_372004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_372004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301372, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_372007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301372, 3)
	
	return 0
end

require "V3_0/DeathFieldStandard"