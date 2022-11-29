-- 基础信息
local base_info = {
	group_id = 133107953
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 953004, monster_id = 21010201, pos = { x = -574.923, y = 350.555, z = 594.255 }, rot = { x = 0.000, y = 244.733, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1104, 1105 }, area_id = 7 },
	{ config_id = 953005, monster_id = 21010201, pos = { x = -574.962, y = 350.634, z = 598.565 }, rot = { x = 348.295, y = 227.683, z = 6.751 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1104, 1105 }, area_id = 7 },
	{ config_id = 953007, monster_id = 21010701, pos = { x = -577.470, y = 349.778, z = 597.612 }, rot = { x = 0.000, y = 212.747, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1104, 1105 }, area_id = 7 },
	{ config_id = 953008, monster_id = 21010701, pos = { x = -576.071, y = 350.109, z = 595.254 }, rot = { x = 0.000, y = 220.997, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1104, 1105 }, area_id = 7 },
	{ config_id = 953011, monster_id = 21010201, pos = { x = -577.542, y = 349.283, z = 600.596 }, rot = { x = 0.000, y = 213.951, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1104, 1105 }, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 953001, gadget_id = 70300091, pos = { x = -583.216, y = 343.445, z = 558.630 }, rot = { x = 5.424, y = 9.543, z = 326.700 }, level = 1, area_id = 7 },
	{ config_id = 953002, gadget_id = 70300081, pos = { x = -593.543, y = 345.551, z = 582.220 }, rot = { x = 359.116, y = 266.441, z = 1.855 }, level = 1, area_id = 7 },
	{ config_id = 953006, gadget_id = 70220067, pos = { x = -582.773, y = 345.245, z = 577.680 }, rot = { x = 0.001, y = 14.734, z = 329.009 }, level = 1, area_id = 7 },
	{ config_id = 953010, gadget_id = 70300081, pos = { x = -581.483, y = 344.850, z = 578.339 }, rot = { x = 342.506, y = 315.365, z = 1.615 }, level = 1, area_id = 7 },
	{ config_id = 953012, gadget_id = 70300081, pos = { x = -601.459, y = 345.556, z = 578.613 }, rot = { x = 353.548, y = 225.599, z = 354.679 }, level = 1, area_id = 7 },
	{ config_id = 953013, gadget_id = 70300091, pos = { x = -583.216, y = 343.445, z = 558.630 }, rot = { x = 5.424, y = 9.543, z = 326.700 }, level = 1, area_id = 7 },
	{ config_id = 953014, gadget_id = 70300077, pos = { x = -593.229, y = 345.914, z = 579.089 }, rot = { x = 5.718, y = 3.914, z = 3.014 }, level = 1, area_id = 7 },
	{ config_id = 953015, gadget_id = 70300081, pos = { x = -601.459, y = 345.556, z = 578.613 }, rot = { x = 353.548, y = 225.599, z = 354.679 }, level = 1, area_id = 7 },
	{ config_id = 953016, gadget_id = 70300091, pos = { x = -580.274, y = 343.162, z = 572.359 }, rot = { x = 356.432, y = 17.349, z = 338.712 }, level = 1, area_id = 7 },
	{ config_id = 953017, gadget_id = 70220067, pos = { x = -582.058, y = 344.855, z = 576.624 }, rot = { x = 0.001, y = 14.734, z = 329.009 }, level = 1, area_id = 7 },
	{ config_id = 953018, gadget_id = 70220067, pos = { x = -582.773, y = 345.245, z = 577.680 }, rot = { x = 0.001, y = 14.734, z = 329.009 }, level = 1, area_id = 7 },
	{ config_id = 953019, gadget_id = 70300081, pos = { x = -593.543, y = 345.551, z = 582.220 }, rot = { x = 359.116, y = 266.441, z = 1.855 }, level = 1, area_id = 7 },
	{ config_id = 953020, gadget_id = 70300077, pos = { x = -593.229, y = 345.914, z = 579.089 }, rot = { x = 5.718, y = 3.914, z = 3.014 }, level = 1, area_id = 7 },
	{ config_id = 953021, gadget_id = 70310006, pos = { x = -592.386, y = 346.989, z = 565.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 953024, gadget_id = 70310006, pos = { x = -592.386, y = 346.989, z = 565.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 953025, gadget_id = 70310001, pos = { x = -578.352, y = 341.441, z = 569.296 }, rot = { x = 0.000, y = 0.000, z = 352.984 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 953026, gadget_id = 70300095, pos = { x = -590.724, y = 346.169, z = 555.665 }, rot = { x = 0.000, y = 22.293, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 953027, gadget_id = 70300095, pos = { x = -592.684, y = 346.127, z = 557.329 }, rot = { x = 0.000, y = 4.881, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 953028, gadget_id = 70300091, pos = { x = -580.274, y = 343.162, z = 572.359 }, rot = { x = 356.432, y = 17.349, z = 338.712 }, level = 1, area_id = 7 },
	{ config_id = 953029, gadget_id = 70310001, pos = { x = -580.671, y = 341.463, z = 559.774 }, rot = { x = 359.562, y = 359.220, z = 325.619 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 953030, gadget_id = 70220067, pos = { x = -582.058, y = 344.855, z = 576.624 }, rot = { x = 0.001, y = 14.734, z = 329.009 }, level = 1, area_id = 7 },
	{ config_id = 953031, gadget_id = 70310001, pos = { x = -585.222, y = 345.887, z = 579.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 953032, gadget_id = 70300077, pos = { x = -599.411, y = 346.356, z = 576.376 }, rot = { x = 17.515, y = 324.071, z = 353.155 }, level = 1, area_id = 7 },
	{ config_id = 953033, gadget_id = 70310001, pos = { x = -589.375, y = 345.983, z = 580.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 953035, gadget_id = 70310001, pos = { x = -578.352, y = 341.441, z = 569.296 }, rot = { x = 0.000, y = 0.000, z = 352.984 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 953036, gadget_id = 70300095, pos = { x = -590.724, y = 346.169, z = 555.665 }, rot = { x = 0.000, y = 22.293, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 953037, gadget_id = 70300095, pos = { x = -592.684, y = 346.127, z = 557.329 }, rot = { x = 0.000, y = 4.881, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 953038, gadget_id = 70310001, pos = { x = -580.671, y = 341.463, z = 559.774 }, rot = { x = 359.562, y = 359.220, z = 325.619 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 953039, gadget_id = 70310001, pos = { x = -585.222, y = 345.887, z = 579.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 953040, gadget_id = 70300077, pos = { x = -599.411, y = 346.356, z = 576.376 }, rot = { x = 17.515, y = 324.071, z = 353.155 }, level = 1, area_id = 7 },
	{ config_id = 953041, gadget_id = 70310001, pos = { x = -589.375, y = 345.983, z = 580.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 953042, gadget_id = 70300081, pos = { x = -581.483, y = 344.850, z = 578.339 }, rot = { x = 342.506, y = 315.365, z = 1.615 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1953003, name = "ANY_GADGET_DIE_953003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_953003", action = "action_EVENT_ANY_GADGET_DIE_953003", trigger_count = 0 },
	{ config_id = 1953009, name = "ANY_MONSTER_DIE_953009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_953009", action = "action_EVENT_ANY_MONSTER_DIE_953009", trigger_count = 0 },
	{ config_id = 1953022, name = "QUEST_START_953022", event = EventType.EVENT_QUEST_START, source = "1908412", condition = "", action = "action_EVENT_QUEST_START_953022", trigger_count = 0 },
	{ config_id = 1953023, name = "ANY_GADGET_DIE_953023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_953023", trigger_count = 0 }
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
		gadgets = { 953001, 953006, 953014, 953015, 953016, 953019, 953021, 953025, 953026, 953027, 953029, 953030, 953031, 953032, 953033, 953042 },
		regions = { },
		triggers = { "QUEST_START_953022" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 953002, 953010, 953012, 953013, 953017, 953018, 953020, 953024, 953028, 953035, 953036, 953037, 953038, 953039, 953040, 953041 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_953003", "ANY_GADGET_DIE_953023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 953004, 953005, 953007, 953008, 953011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_953009" },
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
function condition_EVENT_ANY_GADGET_DIE_953003(context, evt)
	-- 判断指定group组剩余gadget数量是否是7 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133107953}) ~= 7 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_953003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310795301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107953, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_953009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_953009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310795302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_953022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107953, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_953023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310795303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end