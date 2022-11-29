-- 基础信息
local base_info = {
	group_id = 133003541
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 541013, monster_id = 21010601, pos = { x = 2253.330, y = 272.140, z = -1748.013 }, rot = { x = 0.000, y = 258.208, z = 0.000 }, level = 15, drop_tag = "丘丘人", pose_id = 9011, area_id = 1 },
	{ config_id = 541014, monster_id = 21011001, pos = { x = 2262.967, y = 273.762, z = -1735.797 }, rot = { x = 0.000, y = 208.666, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 1 },
	{ config_id = 541015, monster_id = 21030201, pos = { x = 2262.129, y = 275.014, z = -1746.244 }, rot = { x = 0.000, y = 243.282, z = 0.000 }, level = 15, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 1 },
	{ config_id = 541016, monster_id = 21011001, pos = { x = 2269.531, y = 274.807, z = -1750.029 }, rot = { x = 0.000, y = 296.575, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 541017, monster_id = 21010601, pos = { x = 2261.110, y = 272.896, z = -1758.155 }, rot = { x = 0.000, y = 239.810, z = 0.000 }, level = 15, drop_tag = "丘丘人", pose_id = 9011, area_id = 1 },
	{ config_id = 541018, monster_id = 21010301, pos = { x = 2256.044, y = 272.133, z = -1757.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 541019, monster_id = 21020201, pos = { x = 2254.331, y = 274.771, z = -1769.957 }, rot = { x = 0.000, y = 331.758, z = 0.000 }, level = 15, drop_tag = "丘丘暴徒", area_id = 1 },
	{ config_id = 541020, monster_id = 21010701, pos = { x = 2254.350, y = 275.228, z = -1773.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 541021, monster_id = 21010701, pos = { x = 2256.807, y = 275.190, z = -1772.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "丘丘人", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 541001, gadget_id = 70220014, pos = { x = 2260.123, y = 272.931, z = -1734.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541002, gadget_id = 70220014, pos = { x = 2261.445, y = 273.080, z = -1733.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541003, gadget_id = 70220013, pos = { x = 2263.506, y = 273.213, z = -1732.652 }, rot = { x = 0.000, y = 41.298, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541004, gadget_id = 70300100, pos = { x = 2251.418, y = 271.603, z = -1748.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541005, gadget_id = 70300088, pos = { x = 2267.278, y = 273.937, z = -1735.741 }, rot = { x = 0.000, y = 152.937, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541006, gadget_id = 70300086, pos = { x = 2268.939, y = 274.656, z = -1740.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541007, gadget_id = 70300086, pos = { x = 2272.059, y = 274.774, z = -1747.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541008, gadget_id = 70220013, pos = { x = 2273.459, y = 273.365, z = -1758.552 }, rot = { x = 0.000, y = 12.449, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541009, gadget_id = 70220013, pos = { x = 2264.591, y = 273.412, z = -1763.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541010, gadget_id = 70300081, pos = { x = 2269.970, y = 273.714, z = -1763.229 }, rot = { x = 0.000, y = 65.976, z = 8.241 }, level = 15, area_id = 1 },
	{ config_id = 541011, gadget_id = 70300101, pos = { x = 2258.883, y = 272.275, z = -1760.216 }, rot = { x = 0.000, y = 49.761, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 541012, gadget_id = 70300099, pos = { x = 2260.192, y = 274.341, z = -1747.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1541022, name = "ANY_MONSTER_DIE_541022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_541022", action = "action_EVENT_ANY_MONSTER_DIE_541022" },
	{ config_id = 1541023, name = "ANY_MONSTER_DIE_541023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_541023", action = "action_EVENT_ANY_MONSTER_DIE_541023" }
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
		monsters = { 541013, 541014, 541015, 541016, 541017, 541018 },
		gadgets = { 541001, 541002, 541003, 541004, 541005, 541006, 541007, 541008, 541009, 541010, 541011, 541012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_541022", "ANY_MONSTER_DIE_541023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 541019, 541020, 541021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_541022(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_541022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003541, 3)
	
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
function condition_EVENT_ANY_MONSTER_DIE_541023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_541023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end