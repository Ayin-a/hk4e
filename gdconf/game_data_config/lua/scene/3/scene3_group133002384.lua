-- 基础信息
local base_info = {
	group_id = 133002384
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 384001, monster_id = 21010301, pos = { x = 1853.239, y = 204.322, z = -252.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 384002, monster_id = 21010301, pos = { x = 1853.831, y = 204.181, z = -249.150 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 384003, monster_id = 21010901, pos = { x = 1850.347, y = 207.389, z = -264.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 384004, monster_id = 21010901, pos = { x = 1847.603, y = 205.614, z = -254.973 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 384005, monster_id = 21030101, pos = { x = 1856.404, y = 205.315, z = -258.309 }, rot = { x = 0.000, y = 291.494, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 3 },
	{ config_id = 384006, monster_id = 20010801, pos = { x = 1855.301, y = 205.223, z = -258.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 384007, monster_id = 20010801, pos = { x = 1855.881, y = 205.013, z = -257.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 384008, monster_id = 20010801, pos = { x = 1855.008, y = 204.953, z = -258.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 384009, gadget_id = 70300083, pos = { x = 1844.685, y = 202.858, z = -262.018 }, rot = { x = 0.000, y = 60.589, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 384010, gadget_id = 70300083, pos = { x = 1858.948, y = 203.815, z = -249.622 }, rot = { x = 0.000, y = 47.108, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1384011, name = "ANY_GADGET_DIE_384011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_384011", action = "action_EVENT_ANY_GADGET_DIE_384011" },
	{ config_id = 1384017, name = "ANY_MONSTER_DIE_384017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_384017", action = "action_EVENT_ANY_MONSTER_DIE_384017" }
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
		-- description = ,
		monsters = { 384001, 384002, 384003, 384004, 384005, 384006, 384007, 384008 },
		gadgets = { 384009, 384010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_384011", "ANY_MONSTER_DIE_384017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_384011(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133002384}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_384011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "38202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_384017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_384017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "38201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end