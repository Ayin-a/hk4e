-- 基础信息
local base_info = {
	group_id = 133302724
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 724001, monster_id = 25010201, pos = { x = -737.590, y = 252.751, z = 2060.211 }, rot = { x = 0.000, y = 354.573, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 19 },
	{ config_id = 724002, monster_id = 25020201, pos = { x = -747.050, y = 255.249, z = 2056.174 }, rot = { x = 0.000, y = 64.322, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 3, area_id = 19 },
	{ config_id = 724003, monster_id = 25030201, pos = { x = -740.133, y = 253.464, z = 2060.142 }, rot = { x = 0.000, y = 40.056, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 19 },
	{ config_id = 724004, monster_id = 25060101, pos = { x = -744.141, y = 252.644, z = 2054.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 724005, gadget_id = 70710352, pos = { x = -745.122, y = 253.147, z = 2057.325 }, rot = { x = 6.986, y = 180.419, z = 11.734 }, level = 1, area_id = 19 },
	{ config_id = 724006, gadget_id = 70710346, pos = { x = -737.295, y = 253.104, z = 2062.208 }, rot = { x = 348.175, y = 1.660, z = 344.072 }, level = 1, area_id = 19 },
	{ config_id = 724007, gadget_id = 70710347, pos = { x = -737.278, y = 253.001, z = 2061.759 }, rot = { x = 349.632, y = 103.800, z = 351.184 }, level = 1, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1724008, name = "ANY_MONSTER_DIE_724008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_724008", action = "action_EVENT_ANY_MONSTER_DIE_724008" }
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
		monsters = { 724001, 724002, 724003, 724004 },
		gadgets = { 724005, 724006, 724007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_724008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_724008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_724008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q2103602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end