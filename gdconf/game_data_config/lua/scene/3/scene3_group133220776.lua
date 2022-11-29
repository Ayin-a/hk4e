-- 基础信息
local base_info = {
	group_id = 133220776
}

-- DEFS_MISCS
function SLC_KazuhaDream_MonsterWeak(context)

	ScriptLib.PrintContextLog(context, "## [KazuhaQuest] SLC_KazuhaDream_MonsterWeak.")

	--关卡通知任务流转
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332207761") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 776001, monster_id = 25080403, pos = { x = -2864.899, y = 203.068, z = -4119.585 }, rot = { x = 0.000, y = 258.770, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 5178 }, pose_id = 1, title_id = 10102, special_name_id = 10137, area_id = 11 }
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
	{ config_id = 1776002, name = "QUEST_FINISH_776002", event = EventType.EVENT_QUEST_FINISH, source = "1203703", condition = "", action = "action_EVENT_QUEST_FINISH_776002" }
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
		monsters = { 776001 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_776002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_776002(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220776, EntityType.MONSTER, 776001)
	
		
	
	return 0
end