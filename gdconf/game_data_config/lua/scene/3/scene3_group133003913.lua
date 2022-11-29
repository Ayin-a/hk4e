-- 基础信息
local base_info = {
	group_id = 133003913
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 913005, monster_id = 21020201, pos = { x = 2080.820, y = 205.409, z = -1038.455 }, rot = { x = 0.000, y = 113.480, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 913006, monster_id = 21030301, pos = { x = 2073.566, y = 206.208, z = -1036.669 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 913007, monster_id = 21010301, pos = { x = 2075.553, y = 205.656, z = -1031.182 }, rot = { x = 0.000, y = 121.273, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 913008, monster_id = 21010301, pos = { x = 2081.370, y = 205.298, z = -1034.236 }, rot = { x = 0.000, y = 110.837, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 913009, monster_id = 21010201, pos = { x = 2073.810, y = 205.895, z = -1033.825 }, rot = { x = 0.000, y = 102.400, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 913001, gadget_id = 70300083, pos = { x = 2077.734, y = 205.434, z = -1033.729 }, rot = { x = 0.000, y = 295.257, z = 0.000 }, level = 2, area_id = 3 },
	{ config_id = 913002, gadget_id = 70300122, pos = { x = 2070.802, y = 206.183, z = -1032.173 }, rot = { x = 3.628, y = 29.305, z = 0.668 }, level = 2, area_id = 3 },
	{ config_id = 913003, gadget_id = 70300122, pos = { x = 2071.602, y = 205.947, z = -1030.145 }, rot = { x = 0.000, y = 25.563, z = 0.000 }, level = 2, area_id = 3 },
	{ config_id = 913004, gadget_id = 70300122, pos = { x = 2072.733, y = 206.123, z = -1028.227 }, rot = { x = 354.355, y = 24.228, z = 0.807 }, level = 2, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1913010, name = "ANY_MONSTER_DIE_913010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_913010", action = "action_EVENT_ANY_MONSTER_DIE_913010", trigger_count = 0 },
	{ config_id = 1913011, name = "ANY_GADGET_DIE_913011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_913011", action = "action_EVENT_ANY_GADGET_DIE_913011", trigger_count = 0 },
	{ config_id = 1913012, name = "ANY_MONSTER_DIE_913012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_913012", trigger_count = 0 },
	{ config_id = 1913013, name = "QUEST_START_913013", event = EventType.EVENT_QUEST_START, source = "7082503", condition = "condition_EVENT_QUEST_START_913013", action = "action_EVENT_QUEST_START_913013", trigger_count = 0 }
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
		monsters = { 913005, 913006, 913007, 913008, 913009 },
		gadgets = { 913001, 913002, 913003, 913004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_913010", "ANY_GADGET_DIE_913011", "ANY_MONSTER_DIE_913012", "QUEST_START_913013" },
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
function condition_EVENT_ANY_MONSTER_DIE_913010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003913}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_913010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330039131") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_913011(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003913}) ~= 0 then
		return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_913011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330039131") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_913012(context, evt)
	-- 将本组内变量名为 "monster_killed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_killed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_913013(context, evt)
	-- 判断变量"monster_killed"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_killed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_913013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003913, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end