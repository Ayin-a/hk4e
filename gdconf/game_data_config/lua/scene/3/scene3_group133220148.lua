-- 基础信息
local base_info = {
	group_id = 133220148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148001, monster_id = 25080201, pos = { x = -2700.667, y = 231.081, z = -4300.338 }, rot = { x = 0.000, y = 86.548, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 148002, monster_id = 25080201, pos = { x = -2699.513, y = 230.987, z = -4295.009 }, rot = { x = 0.000, y = 131.630, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 148003, monster_id = 25100201, pos = { x = -2698.208, y = 231.208, z = -4298.236 }, rot = { x = 1.652, y = 106.411, z = 359.881 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1006 }, isElite = true, pose_id = 1003, area_id = 11 },
	{ config_id = 148004, monster_id = 25080201, pos = { x = -2695.034, y = 229.713, z = -4293.103 }, rot = { x = 0.000, y = 163.872, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 }
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
	{ config_id = 1148007, name = "ANY_MONSTER_DIE_148007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148007", action = "action_EVENT_ANY_MONSTER_DIE_148007" }
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
		monsters = { 148001, 148002, 148003, 148004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201607") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end