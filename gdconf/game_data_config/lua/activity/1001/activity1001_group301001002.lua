-- 基础信息
local base_info = {
	group_id = 301001002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21020301, pos = { x = 58.400, y = 262.375, z = 169.703 }, rot = { x = 0.000, y = 98.170, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 2002, monster_id = 21011001, pos = { x = 50.285, y = 262.914, z = 172.384 }, rot = { x = 0.000, y = 98.304, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 32, area_id = 7 },
	{ config_id = 2003, monster_id = 21011001, pos = { x = 49.274, y = 263.193, z = 166.541 }, rot = { x = 0.000, y = 98.304, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 32, area_id = 7 },
	{ config_id = 2004, monster_id = 21011201, pos = { x = 55.739, y = 262.553, z = 171.514 }, rot = { x = 0.000, y = 136.079, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9003, area_id = 7 },
	{ config_id = 2006, monster_id = 21011201, pos = { x = 57.709, y = 263.211, z = 165.948 }, rot = { x = 0.000, y = 68.800, z = 0.000 }, level = 1, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2007, gadget_id = 70300083, pos = { x = 53.324, y = 263.119, z = 167.748 }, rot = { x = 0.000, y = 267.860, z = 349.330 }, level = 1, area_id = 7 },
	{ config_id = 2008, gadget_id = 70300083, pos = { x = 53.853, y = 262.850, z = 175.166 }, rot = { x = 0.000, y = 278.570, z = 6.110 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002005, name = "ANY_MONSTER_DIE_2005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2005", action = "action_EVENT_ANY_MONSTER_DIE_2005", trigger_count = 0 },
	{ config_id = 1002009, name = "ANY_GADGET_DIE_2009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2009", action = "action_EVENT_ANY_GADGET_DIE_2009", trigger_count = 0 }
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
		monsters = { 2001, 2002, 2003, 2004, 2006 },
		gadgets = { 2007, 2008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2005", "ANY_GADGET_DIE_2009" },
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
function condition_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3010010021") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2009(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 301001002}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3010010022") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end