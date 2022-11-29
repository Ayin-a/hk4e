-- 基础信息
local base_info = {
	group_id = 133303655
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 655001, monster_id = 26120301, pos = { x = -1457.187, y = 261.009, z = 3054.524 }, rot = { x = 0.000, y = 62.249, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 655002, monster_id = 26090801, pos = { x = -1457.135, y = 262.390, z = 3050.118 }, rot = { x = 0.000, y = 75.482, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 655003, monster_id = 26090101, pos = { x = -1454.702, y = 260.014, z = 3056.881 }, rot = { x = 0.000, y = 59.276, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 655004, monster_id = 26120101, pos = { x = -1448.280, y = 258.636, z = 3057.134 }, rot = { x = 0.000, y = 218.388, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 21 },
	{ config_id = 655005, monster_id = 26090401, pos = { x = -1449.050, y = 259.539, z = 3052.498 }, rot = { x = 0.000, y = 321.403, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 655006, monster_id = 26090201, pos = { x = -1450.648, y = 259.151, z = 3057.376 }, rot = { x = 0.000, y = 84.663, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 }
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
	{ config_id = 1655007, name = "ANY_MONSTER_DIE_655007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_655007", action = "action_EVENT_ANY_MONSTER_DIE_655007" },
	{ config_id = 1655008, name = "ANY_MONSTER_DIE_655008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_655008", action = "action_EVENT_ANY_MONSTER_DIE_655008" }
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
		monsters = { 655001, 655002, 655003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_655007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 655004, 655005, 655006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_655008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_655007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_655007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303655, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_655008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_655008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7367605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end