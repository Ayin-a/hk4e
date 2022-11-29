-- 基础信息
local base_info = {
	group_id = 133102567
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 567001, monster_id = 21011201, pos = { x = 1139.287, y = 214.287, z = 945.937 }, rot = { x = 0.000, y = 154.466, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 567002, monster_id = 21011201, pos = { x = 1129.631, y = 208.644, z = 956.481 }, rot = { x = 0.000, y = 213.151, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 567003, monster_id = 21011201, pos = { x = 1124.211, y = 208.559, z = 959.635 }, rot = { x = 0.000, y = 65.592, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 567004, monster_id = 20010601, pos = { x = 1120.084, y = 208.890, z = 953.428 }, rot = { x = 359.845, y = 0.001, z = 0.266 }, level = 1, drop_tag = "大史莱姆", ban_excel_drop = true, area_id = 6 },
	{ config_id = 567006, monster_id = 21020301, pos = { x = 1118.413, y = 211.097, z = 969.871 }, rot = { x = 1.590, y = 238.557, z = 356.851 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 567007, monster_id = 21020301, pos = { x = 1122.099, y = 206.199, z = 920.343 }, rot = { x = 357.494, y = 9.233, z = 358.687 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 567008, monster_id = 21011201, pos = { x = 1125.963, y = 206.399, z = 919.333 }, rot = { x = 355.104, y = 16.213, z = 357.650 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 567009, monster_id = 21011201, pos = { x = 1118.177, y = 206.531, z = 922.357 }, rot = { x = 352.418, y = 16.097, z = 0.590 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 567021, monster_id = 21011201, pos = { x = 1123.465, y = 206.170, z = 920.827 }, rot = { x = 351.929, y = 15.830, z = 355.883 }, level = 1, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 567005, gadget_id = 70300100, pos = { x = 1126.088, y = 208.559, z = 960.638 }, rot = { x = 0.000, y = 0.044, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 567010, gadget_id = 70300100, pos = { x = 1128.153, y = 208.559, z = 955.124 }, rot = { x = 0.000, y = 0.044, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 567011, gadget_id = 70300100, pos = { x = 1140.561, y = 214.287, z = 943.824 }, rot = { x = 0.000, y = 0.044, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 567012, gadget_id = 70300102, pos = { x = 1120.177, y = 208.432, z = 953.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 567018, gadget_id = 70220005, pos = { x = 1124.302, y = 208.445, z = 945.913 }, rot = { x = 356.424, y = 0.044, z = -0.003 }, level = 1, area_id = 6 },
	{ config_id = 567019, gadget_id = 70220005, pos = { x = 1115.776, y = 208.441, z = 952.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1567020, name = "ANY_MONSTER_DIE_567020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_567020", action = "action_EVENT_ANY_MONSTER_DIE_567020" }
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
		-- description = suite_1,
		monsters = { 567001, 567002, 567003, 567004, 567006 },
		gadgets = { 567005, 567010, 567011, 567012, 567018, 567019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_567020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 567007, 567008, 567009, 567021 },
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
function condition_EVENT_ANY_MONSTER_DIE_567020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_567020(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1128, y=208, z=953}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102567, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1124,y=208,z=959}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end