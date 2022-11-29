-- 基础信息
local base_info = {
	group_id = 220031005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21020301, pos = { x = 191.564, y = 46.000, z = 180.066 }, rot = { x = 0.000, y = 182.968, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5002, monster_id = 21010901, pos = { x = 197.168, y = 46.016, z = 177.785 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5003, monster_id = 21011001, pos = { x = 185.400, y = 46.016, z = 178.121 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5005, gadget_id = 70300115, pos = { x = 233.454, y = 21.786, z = 259.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70211021, pos = { x = 190.490, y = 46.000, z = 178.593 }, rot = { x = 0.000, y = 179.439, z = 0.000 }, level = 6, drop_tag = "战斗高级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005004, name = "ANY_MONSTER_DIE_5004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5004", action = "action_EVENT_ANY_MONSTER_DIE_5004" }
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
		monsters = { 5001, 5002, 5003 },
		gadgets = { 5005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5006 },
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
function condition_EVENT_ANY_MONSTER_DIE_5004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220031005) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220031005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220031005, 2)
	
	return 0
end