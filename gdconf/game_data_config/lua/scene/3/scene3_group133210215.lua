-- 基础信息
local base_info = {
	group_id = 133210215
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 215001, monster_id = 25080101, pos = { x = -3956.006, y = 201.553, z = -588.159 }, rot = { x = 0.000, y = 62.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 1006, area_id = 17 },
	{ config_id = 215002, monster_id = 25080101, pos = { x = -3960.849, y = 201.229, z = -581.065 }, rot = { x = 0.000, y = 145.790, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 1001, area_id = 17 },
	{ config_id = 215004, monster_id = 25080101, pos = { x = -3967.277, y = 201.504, z = -590.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 1005, area_id = 17 }
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
	{ config_id = 1215003, name = "ANY_MONSTER_DIE_215003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_215003", action = "action_EVENT_ANY_MONSTER_DIE_215003" }
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
		monsters = { 215001, 215002, 215004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_215003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_215003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_215003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133210215") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end