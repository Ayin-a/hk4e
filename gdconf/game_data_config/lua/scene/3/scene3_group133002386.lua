-- 基础信息
local base_info = {
	group_id = 133002386
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 386001, monster_id = 21010501, pos = { x = 1742.949, y = 226.900, z = -585.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 386002, monster_id = 21010501, pos = { x = 1733.135, y = 226.388, z = -585.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 386003, monster_id = 21011001, pos = { x = 1740.752, y = 226.917, z = -592.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 386004, monster_id = 21011001, pos = { x = 1734.735, y = 226.948, z = -592.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 386005, monster_id = 21020101, pos = { x = 1738.144, y = 225.882, z = -585.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 386006, gadget_id = 70300081, pos = { x = 1743.381, y = 225.968, z = -581.497 }, rot = { x = 0.000, y = 258.659, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 386007, gadget_id = 70300081, pos = { x = 1733.512, y = 225.941, z = -581.995 }, rot = { x = 0.000, y = 279.929, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 386008, gadget_id = 70300083, pos = { x = 1731.234, y = 227.223, z = -594.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 386009, gadget_id = 70300083, pos = { x = 1742.071, y = 227.585, z = -595.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1386010, name = "ANY_GADGET_DIE_386010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_386010", action = "action_EVENT_ANY_GADGET_DIE_386010" },
	{ config_id = 1386021, name = "ANY_MONSTER_DIE_386021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_386021", action = "action_EVENT_ANY_MONSTER_DIE_386021" }
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
		monsters = { 386001, 386002, 386003, 386004, 386005 },
		gadgets = { 386006, 386007, 386008, 386009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_386010", "ANY_MONSTER_DIE_386021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_386010(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133002386}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_386010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "38002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_386021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_386021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "38001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end