-- 基础信息
local base_info = {
	group_id = 133104903
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 903001, monster_id = 21020301, pos = { x = 57.506, y = 262.425, z = 168.830 }, rot = { x = 0.000, y = 72.640, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 7 },
	{ config_id = 903002, monster_id = 21011201, pos = { x = 56.527, y = 262.413, z = 173.265 }, rot = { x = 0.000, y = 82.190, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 7 },
	{ config_id = 903003, monster_id = 21011201, pos = { x = 56.338, y = 263.571, z = 164.622 }, rot = { x = 0.000, y = 53.520, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 7 },
	{ config_id = 903004, monster_id = 21011001, pos = { x = 51.271, y = 262.897, z = 167.890 }, rot = { x = 0.000, y = 63.350, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 7 },
	{ config_id = 903005, monster_id = 21011001, pos = { x = 50.528, y = 262.957, z = 174.044 }, rot = { x = 0.000, y = 97.710, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 903006, gadget_id = 70300083, pos = { x = 53.324, y = 263.119, z = 167.748 }, rot = { x = 0.000, y = 267.860, z = 349.330 }, level = 19, area_id = 7 },
	{ config_id = 903007, gadget_id = 70300083, pos = { x = 53.853, y = 262.850, z = 175.166 }, rot = { x = 0.000, y = 278.570, z = 6.110 }, level = 19, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1903008, name = "ANY_MONSTER_DIE_903008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903008", action = "action_EVENT_ANY_MONSTER_DIE_903008", trigger_count = 0 },
	{ config_id = 1903009, name = "ANY_GADGET_DIE_903009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_903009", action = "action_EVENT_ANY_GADGET_DIE_903009", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 903001, 903002, 903003, 903004, 903005 },
		gadgets = { 903006, 903007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_903008", "ANY_GADGET_DIE_903009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400030301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_903009(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104903}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_903009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400030301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end