-- 基础信息
local base_info = {
	group_id = 139999019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 25080101, pos = { x = 3.454, y = -0.076, z = -2.287 }, rot = { x = 0.000, y = 297.513, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 3 },
	{ config_id = 19006, monster_id = 25080201, pos = { x = -2.317, y = 0.418, z = -1.190 }, rot = { x = 0.000, y = 10.950, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 3 },
	{ config_id = 19007, monster_id = 21010201, pos = { x = 3.454, y = -0.076, z = -2.287 }, rot = { x = 0.000, y = 297.513, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 19008, monster_id = 21010201, pos = { x = 2.131, y = -0.466, z = 1.628 }, rot = { x = 328.488, y = 267.575, z = 1.268 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 },
	{ config_id = 19009, monster_id = 21010101, pos = { x = -2.317, y = 0.418, z = -1.190 }, rot = { x = 0.000, y = 10.950, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 3 }
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
	{ config_id = 1019010, name = "ANY_MONSTER_DIE_19010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19010", action = "action_EVENT_ANY_MONSTER_DIE_19010", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 19011, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1.299, y = 0.133, z = -2.417 }, area_id = 3 }
	},
	triggers = {
		{ config_id = 1019011, name = "ENTER_REGION_19011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19011", action = "action_EVENT_ENTER_REGION_19011" }
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
	end_suite = 0,
	rand_suite = true
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
		monsters = { 19001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 19006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 19007, 19008, 19009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19010(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 19, true)
	
	
	return 0
end