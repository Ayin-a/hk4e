-- 基础信息
local base_info = {
	group_id = 133104919
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 919003, monster_id = 21020301, pos = { x = 63.257, y = 261.828, z = 169.309 }, rot = { x = 0.000, y = 96.550, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 919004, monster_id = 21011201, pos = { x = 58.129, y = 263.380, z = 165.287 }, rot = { x = 0.000, y = 45.360, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 919005, monster_id = 21011201, pos = { x = 60.238, y = 262.350, z = 174.961 }, rot = { x = 0.000, y = 118.340, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 919006, monster_id = 21010601, pos = { x = 49.257, y = 263.194, z = 166.541 }, rot = { x = 0.000, y = 70.360, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 919007, monster_id = 21010601, pos = { x = 49.282, y = 263.218, z = 174.754 }, rot = { x = 0.000, y = 113.400, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 919001, gadget_id = 70300083, pos = { x = 52.694, y = 262.911, z = 167.719 }, rot = { x = 358.100, y = 260.150, z = 353.100 }, level = 19, area_id = 7 },
	{ config_id = 919002, gadget_id = 70300083, pos = { x = 56.339, y = 262.613, z = 174.781 }, rot = { x = 354.038, y = 283.270, z = 3.870 }, level = 19, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1919008, name = "ANY_MONSTER_DIE_919008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_919008", action = "action_EVENT_ANY_MONSTER_DIE_919008", trigger_count = 0 },
	{ config_id = 1919009, name = "ANY_GADGET_DIE_919009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_919009", action = "action_EVENT_ANY_GADGET_DIE_919009", trigger_count = 0 },
	{ config_id = 1919010, name = "ANY_MONSTER_DIE_919010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_919010", trigger_count = 0 },
	{ config_id = 1919011, name = "ANY_GADGET_DIE_919011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_919011", trigger_count = 0 }
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
		monsters = { 919003, 919004, 919005, 919006, 919007 },
		gadgets = { 919001, 919002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_919008", "ANY_GADGET_DIE_919009", "ANY_MONSTER_DIE_919010", "ANY_GADGET_DIE_919011" },
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
function condition_EVENT_ANY_MONSTER_DIE_919008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_919008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049191") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_919009(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104919}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_919009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049192") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_919010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049193") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_919011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049193") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end