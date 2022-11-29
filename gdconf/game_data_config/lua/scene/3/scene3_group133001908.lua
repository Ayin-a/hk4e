-- 基础信息
local base_info = {
	group_id = 133001908
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 908001, monster_id = 21010101, pos = { x = 1564.435, y = 245.965, z = -1557.669 }, rot = { x = 0.000, y = 136.191, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9012, area_id = 2 },
	{ config_id = 908002, monster_id = 21010501, pos = { x = 1565.093, y = 245.965, z = -1552.541 }, rot = { x = 0.000, y = 195.222, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 32, area_id = 2 },
	{ config_id = 908003, monster_id = 21010101, pos = { x = 1569.648, y = 245.965, z = -1559.261 }, rot = { x = 0.000, y = 260.499, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9012, area_id = 2 },
	{ config_id = 908005, monster_id = 21010501, pos = { x = 1572.018, y = 245.965, z = -1554.896 }, rot = { x = 0.000, y = 211.460, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 32, area_id = 2 },
	{ config_id = 908006, monster_id = 21010701, pos = { x = 1568.780, y = 245.965, z = -1554.450 }, rot = { x = 0.000, y = 195.222, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 908008, monster_id = 21020201, pos = { x = 1564.739, y = 245.965, z = -1567.071 }, rot = { x = 0.000, y = 18.707, z = 0.000 }, level = 28, drop_id = 1000100, isElite = true, area_id = 2 },
	{ config_id = 908009, monster_id = 21011001, pos = { x = 1569.461, y = 245.965, z = -1565.502 }, rot = { x = 0.000, y = 338.092, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 2 },
	{ config_id = 908010, monster_id = 21011001, pos = { x = 1561.798, y = 245.965, z = -1563.312 }, rot = { x = 0.000, y = 30.746, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 2 }
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
	{ config_id = 1908004, name = "ANY_MONSTER_DIE_908004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_908004", action = "action_EVENT_ANY_MONSTER_DIE_908004" },
	{ config_id = 1908007, name = "ANY_MONSTER_DIE_908007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_908007", action = "action_EVENT_ANY_MONSTER_DIE_908007" },
	{ config_id = 1908011, name = "ANY_MONSTER_DIE_908011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_908011" }
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
	suite = 2,
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
		monsters = { 908001, 908002, 908003, 908005, 908006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_908004", "ANY_MONSTER_DIE_908011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 908008, 908009, 908010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_908007" },
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
function condition_EVENT_ANY_MONSTER_DIE_908004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_908004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001908, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_908007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_908007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001908") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133001387中， configid为387001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133001387, 387001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_908011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330019081") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end