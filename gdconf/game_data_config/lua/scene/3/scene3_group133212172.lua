-- 基础信息
local base_info = {
	group_id = 133212172
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 172001, monster_id = 25100101, pos = { x = -3774.281, y = 200.530, z = -2755.707 }, rot = { x = 0.000, y = 249.360, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1001, area_id = 13 },
	{ config_id = 172002, monster_id = 25080101, pos = { x = -3780.326, y = 201.119, z = -2753.273 }, rot = { x = 0.000, y = 77.794, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1006, area_id = 13 },
	{ config_id = 172003, monster_id = 25080101, pos = { x = -3778.862, y = 201.664, z = -2761.808 }, rot = { x = 0.000, y = 67.915, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1006, area_id = 13 },
	{ config_id = 172004, monster_id = 25100101, pos = { x = -3815.760, y = 211.513, z = -2768.855 }, rot = { x = 0.000, y = 237.146, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1002, area_id = 13 },
	{ config_id = 172005, monster_id = 25080101, pos = { x = -3794.235, y = 205.219, z = -2752.679 }, rot = { x = 0.000, y = 336.800, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 172006, monster_id = 25080101, pos = { x = -3794.835, y = 207.839, z = -2769.205 }, rot = { x = 0.000, y = 155.235, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 172007, gadget_id = 70950119, pos = { x = -3789.531, y = 204.964, z = -2756.853 }, rot = { x = 282.606, y = 61.705, z = 44.459 }, level = 27, area_id = 13 },
	{ config_id = 172008, gadget_id = 70950120, pos = { x = -3802.019, y = 209.263, z = -2765.601 }, rot = { x = 274.770, y = 99.801, z = 38.729 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1172011, name = "ANY_MONSTER_DIE_172011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_172011", action = "action_EVENT_ANY_MONSTER_DIE_172011", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 172007, 172008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 172001, 172002, 172003, 172004, 172005, 172006 },
		gadgets = { 172007, 172008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_172011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_172011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_172011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216103_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end