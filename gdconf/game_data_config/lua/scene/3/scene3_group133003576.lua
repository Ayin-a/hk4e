-- 基础信息
local base_info = {
	group_id = 133003576
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 576001, monster_id = 21010601, pos = { x = 2253.210, y = 272.120, z = -1748.045 }, rot = { x = 0.000, y = 258.208, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9011, area_id = 1 },
	{ config_id = 576002, monster_id = 21011001, pos = { x = 2262.847, y = 273.742, z = -1735.829 }, rot = { x = 0.000, y = 208.666, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 1 },
	{ config_id = 576003, monster_id = 21030201, pos = { x = 2262.009, y = 274.994, z = -1746.276 }, rot = { x = 0.000, y = 243.282, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 576004, monster_id = 21011001, pos = { x = 2269.411, y = 274.787, z = -1750.061 }, rot = { x = 0.000, y = 296.575, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 576005, monster_id = 21010601, pos = { x = 2260.990, y = 272.876, z = -1758.187 }, rot = { x = 0.000, y = 239.810, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9011, area_id = 1 },
	{ config_id = 576006, monster_id = 21010301, pos = { x = 2255.924, y = 272.113, z = -1757.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 576007, monster_id = 21020201, pos = { x = 2254.211, y = 274.751, z = -1769.989 }, rot = { x = 0.000, y = 331.758, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 576008, monster_id = 21010701, pos = { x = 2254.230, y = 275.208, z = -1773.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 576009, monster_id = 21010701, pos = { x = 2256.687, y = 275.170, z = -1772.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 576010, gadget_id = 70220014, pos = { x = 2260.003, y = 272.911, z = -1734.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 576011, gadget_id = 70220014, pos = { x = 2261.325, y = 273.061, z = -1733.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 576012, gadget_id = 70220013, pos = { x = 2263.386, y = 273.193, z = -1732.684 }, rot = { x = 0.000, y = 41.298, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 576013, gadget_id = 70300100, pos = { x = 2251.298, y = 271.583, z = -1748.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 576014, gadget_id = 70300088, pos = { x = 2267.158, y = 273.917, z = -1735.773 }, rot = { x = 0.000, y = 152.937, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 576015, gadget_id = 70300086, pos = { x = 2268.819, y = 274.636, z = -1740.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 576016, gadget_id = 70300086, pos = { x = 2271.939, y = 274.754, z = -1747.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 576017, gadget_id = 70220013, pos = { x = 2273.339, y = 273.345, z = -1758.584 }, rot = { x = 0.000, y = 12.449, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 576018, gadget_id = 70220013, pos = { x = 2264.471, y = 273.392, z = -1763.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 576019, gadget_id = 70300081, pos = { x = 2269.850, y = 273.695, z = -1763.261 }, rot = { x = 0.000, y = 65.976, z = 8.241 }, level = 15, area_id = 1 },
	{ config_id = 576020, gadget_id = 70300101, pos = { x = 2258.763, y = 272.255, z = -1760.248 }, rot = { x = 0.000, y = 49.761, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 576021, gadget_id = 70300099, pos = { x = 2260.072, y = 274.321, z = -1747.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1576022, name = "ANY_MONSTER_DIE_576022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_576022", action = "action_EVENT_ANY_MONSTER_DIE_576022" },
	{ config_id = 1576026, name = "ANY_MONSTER_DIE_576026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_576026", action = "action_EVENT_ANY_MONSTER_DIE_576026" }
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
		monsters = { 576001, 576002, 576003, 576004, 576005, 576006 },
		gadgets = { 576010, 576011, 576012, 576013, 576014, 576015, 576016, 576017, 576018, 576019, 576020, 576021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_576022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 576007, 576008, 576009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_576026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_576022(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_576022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003576, 3)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2260, y=274, z=-1748}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2260,y=274,z=-1748}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_576026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_576026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035761") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end