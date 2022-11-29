-- 基础信息
local base_info = {
	group_id = 133001912
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 912004, monster_id = 21010201, pos = { x = 2184.503, y = 216.654, z = -1135.767 }, rot = { x = 0.000, y = 290.904, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 912007, monster_id = 21010201, pos = { x = 2175.506, y = 215.820, z = -1135.470 }, rot = { x = 0.000, y = 47.172, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 912008, monster_id = 21020101, pos = { x = 2183.862, y = 214.722, z = -1127.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 912009, monster_id = 21020101, pos = { x = 2187.605, y = 217.315, z = -1136.704 }, rot = { x = 0.000, y = 15.048, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 912010, monster_id = 21030201, pos = { x = 2180.339, y = 215.511, z = -1132.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 912001, gadget_id = 70300081, pos = { x = 2170.751, y = 217.014, z = -1148.260 }, rot = { x = 352.043, y = 142.956, z = 349.607 }, level = 2, area_id = 1 },
	{ config_id = 912002, gadget_id = 70300075, pos = { x = 2180.839, y = 213.460, z = -1125.090 }, rot = { x = 13.326, y = 267.913, z = 359.597 }, level = 2, area_id = 1 },
	{ config_id = 912003, gadget_id = 70300081, pos = { x = 2190.346, y = 217.686, z = -1138.707 }, rot = { x = 11.813, y = 23.953, z = 0.774 }, level = 2, area_id = 1 },
	{ config_id = 912005, gadget_id = 70300089, pos = { x = 2181.922, y = 215.879, z = -1135.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 912006, gadget_id = 70300089, pos = { x = 2177.195, y = 215.118, z = -1133.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1912011, name = "ANY_MONSTER_DIE_912011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_912011", action = "action_EVENT_ANY_MONSTER_DIE_912011", trigger_count = 0 },
	{ config_id = 1912012, name = "ANY_GADGET_DIE_912012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_912012", action = "action_EVENT_ANY_GADGET_DIE_912012", trigger_count = 0 },
	{ config_id = 1912013, name = "ANY_MONSTER_DIE_912013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_912013", trigger_count = 0 },
	{ config_id = 1912014, name = "QUEST_START_912014", event = EventType.EVENT_QUEST_START, source = "7082505", condition = "condition_EVENT_QUEST_START_912014", action = "action_EVENT_QUEST_START_912014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_killed", value = 0, no_refresh = false }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 912004, 912007, 912008, 912009, 912010 },
		gadgets = { 912001, 912002, 912003, 912005, 912006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_912011", "ANY_GADGET_DIE_912012", "ANY_MONSTER_DIE_912013", "QUEST_START_912014" },
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
function condition_EVENT_ANY_MONSTER_DIE_912011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133001912}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_912011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330019121") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_912012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133001912}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_912012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330019121") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_912013(context, evt)
	-- 将本组内变量名为 "monster_killed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_killed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_912014(context, evt)
	-- 判断变量"monster_killed"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_killed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_912014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001912, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end