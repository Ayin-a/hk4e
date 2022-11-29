-- 基础信息
local base_info = {
	group_id = 246101001
}

-- DEFS_MISCS
local defs = {
	group_id = 246101001,
	--Boss目标点
	target_points = {1004,1005,1006,1007,1008,1009,1010,1011,1012}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 28020902, pos = { x = 21.118, y = 1.875, z = 52.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 10054, special_name_id = 10079 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1004, gadget_id = 70350356, pos = { x = 27.386, y = 1.863, z = 50.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1 },
	{ config_id = 1005, gadget_id = 70350356, pos = { x = 21.131, y = 1.861, z = 50.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2 },
	{ config_id = 1006, gadget_id = 70350356, pos = { x = 13.022, y = 1.860, z = 50.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	{ config_id = 1007, gadget_id = 70350356, pos = { x = 27.501, y = 1.880, z = 57.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 4 },
	{ config_id = 1008, gadget_id = 70350356, pos = { x = 20.606, y = 1.860, z = 58.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5 },
	{ config_id = 1009, gadget_id = 70350356, pos = { x = 12.994, y = 1.870, z = 57.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 6 },
	{ config_id = 1010, gadget_id = 70350356, pos = { x = 27.577, y = 1.860, z = 65.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 7 },
	{ config_id = 1011, gadget_id = 70350356, pos = { x = 19.918, y = 1.866, z = 66.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 8 },
	{ config_id = 1012, gadget_id = 70350356, pos = { x = 13.029, y = 1.875, z = 66.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "ANY_MONSTER_DIE_1002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1002", action = "action_EVENT_ANY_MONSTER_DIE_1002" },
	{ config_id = 1001003, name = "QUEST_FINISH_1003", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1003", action = "action_EVENT_QUEST_FINISH_1003" }
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
		gadgets = { 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1002", "QUEST_FINISH_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "24610100101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_1003(context, evt)
	--检查ID为4003408的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4003408 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1003(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 246101003, 1)
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V2_3/HachiDungeon"