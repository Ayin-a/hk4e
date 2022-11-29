-- 基础信息
local base_info = {
	group_id = 139999028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 26090101, pos = { x = 4.222, y = 0.540, z = 3.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 },
	{ config_id = 28002, monster_id = 26090201, pos = { x = 2.045, y = 0.316, z = 1.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 },
	{ config_id = 28003, monster_id = 26090501, pos = { x = 1.212, y = 0.556, z = 4.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 },
	{ config_id = 28004, monster_id = 26090701, pos = { x = -0.298, y = -0.042, z = 2.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 },
	{ config_id = 28005, monster_id = 26090901, pos = { x = 0.390, y = 0.161, z = 3.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 },
	{ config_id = 28006, monster_id = 26090801, pos = { x = 3.288, y = 0.538, z = 4.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 },
	{ config_id = 28007, monster_id = 26090401, pos = { x = 2.894, y = 0.435, z = 1.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 },
	{ config_id = 28008, monster_id = 26090801, pos = { x = 3.288, y = 0.538, z = 4.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 },
	{ config_id = 28009, monster_id = 26090201, pos = { x = 2.045, y = 0.316, z = 1.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 2 }
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
	{ config_id = 1028010, name = "ANY_MONSTER_DIE_28010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28010", action = "action_EVENT_ANY_MONSTER_DIE_28010" },
	{ config_id = 1028011, name = "ANY_MONSTER_DIE_28011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28011", action = "action_EVENT_ANY_MONSTER_DIE_28011" },
	{ config_id = 1028012, name = "ANY_MONSTER_DIE_28012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28012", action = "action_EVENT_ANY_MONSTER_DIE_28012" }
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
		monsters = { 28001, 28002, 28003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 28005, 28006, 28007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 28004, 28008, 28009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28010(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 32, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28011(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 32, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28012(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 32, true)
	
	
	return 0
end