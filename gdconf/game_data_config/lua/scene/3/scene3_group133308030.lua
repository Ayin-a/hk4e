-- 基础信息
local base_info = {
	group_id = 133308030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30001, monster_id = 28060402, pos = { x = -1661.336, y = 262.925, z = 4375.479 }, rot = { x = 0.000, y = 341.736, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 30002, monster_id = 28060402, pos = { x = -1672.738, y = 264.270, z = 4375.567 }, rot = { x = 0.000, y = 25.462, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 30003, monster_id = 28060402, pos = { x = -1658.612, y = 261.654, z = 4390.318 }, rot = { x = 0.000, y = 233.191, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 30004, monster_id = 28060402, pos = { x = -1673.444, y = 261.367, z = 4393.013 }, rot = { x = 0.000, y = 144.738, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 30006, monster_id = 28060402, pos = { x = -1670.183, y = 261.751, z = 4393.789 }, rot = { x = 0.000, y = 171.027, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 30007, monster_id = 28060402, pos = { x = -1672.990, y = 261.880, z = 4392.565 }, rot = { x = 0.000, y = 131.768, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 }
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
	{ config_id = 1030005, name = "ANY_MONSTER_DIE_30005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30005", action = "action_EVENT_ANY_MONSTER_DIE_30005" }
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
	suite = 2,
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
		monsters = { 30001, 30002, 30003, 30004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_30005" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 30006, 30007 },
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
function condition_EVENT_ANY_MONSTER_DIE_30005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1301003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end