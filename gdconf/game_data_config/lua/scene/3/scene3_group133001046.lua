-- 基础信息
local base_info = {
	group_id = 133001046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46001, monster_id = 21010201, pos = { x = 1641.703, y = 254.191, z = -1391.390 }, rot = { x = 0.000, y = 38.200, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 2 },
	{ config_id = 46002, monster_id = 21010201, pos = { x = 1646.034, y = 253.968, z = -1386.769 }, rot = { x = 0.000, y = 225.650, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 2 }
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
	{ config_id = 1046003, name = "ANY_MONSTER_DIE_46003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46003", action = "action_EVENT_ANY_MONSTER_DIE_46003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1046004, name = "QUEST_FINISH_46004", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_46004" }
	}
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
		monsters = { 46001, 46002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050103finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end