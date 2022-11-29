-- 基础信息
local base_info = {
	group_id = 133220155
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 25100101, pos = { x = -2949.222, y = 200.957, z = -4048.066 }, rot = { x = 0.000, y = 135.311, z = 0.000 }, level = 27, drop_id = 1000100, isElite = true, pose_id = 1002, area_id = 11 },
	{ config_id = 155005, monster_id = 25100201, pos = { x = -2945.941, y = 200.780, z = -4051.808 }, rot = { x = 0.000, y = 321.070, z = 0.000 }, level = 27, drop_id = 1000100, isElite = true, pose_id = 1002, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155002, gadget_id = 70310001, pos = { x = -2942.517, y = 199.741, z = -4051.418 }, rot = { x = 0.000, y = 59.729, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 155003, gadget_id = 70310001, pos = { x = -2946.379, y = 200.347, z = -4055.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 155004, gadget_id = 70310001, pos = { x = -2953.079, y = 200.294, z = -4049.908 }, rot = { x = 0.000, y = 49.361, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 155006, gadget_id = 70310001, pos = { x = -2948.154, y = 199.939, z = -4045.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 155010, gadget_id = 70220052, pos = { x = -2947.590, y = 200.799, z = -4049.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155011, name = "ANY_MONSTER_DIE_155011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155011", action = "action_EVENT_ANY_MONSTER_DIE_155011" }
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
		monsters = { 155001, 155005 },
		gadgets = { 155002, 155003, 155004, 155006, 155010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_MONSTER_DIE_155011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220155") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end