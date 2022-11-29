-- 基础信息
local base_info = {
	group_id = 133302638
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 围着第一处涂鸦的怪
	{ config_id = 638001, monster_id = 26090901, pos = { x = -61.157, y = 186.698, z = 2823.050 }, rot = { x = 0.000, y = 101.116, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	-- 围着第一处涂鸦的怪
	{ config_id = 638002, monster_id = 26090901, pos = { x = -60.525, y = 187.078, z = 2821.481 }, rot = { x = 0.000, y = 54.656, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	-- 围着第一处涂鸦的怪
	{ config_id = 638003, monster_id = 26090901, pos = { x = -59.626, y = 187.248, z = 2819.966 }, rot = { x = 0.000, y = 18.531, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 }
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
	{ config_id = 1638004, name = "ANY_MONSTER_DIE_638004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_638004", action = "action_EVENT_ANY_MONSTER_DIE_638004", trigger_count = 0 }
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
		monsters = { 638001, 638002, 638003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_638004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_638004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_638004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306310") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end