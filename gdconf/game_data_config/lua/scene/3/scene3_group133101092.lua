-- 基础信息
local base_info = {
	group_id = 133101092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 21011201, pos = { x = 1119.832, y = 217.994, z = 1043.157 }, rot = { x = 0.000, y = 276.059, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 92002, monster_id = 21011201, pos = { x = 1131.984, y = 218.065, z = 1038.952 }, rot = { x = 0.000, y = 283.940, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 92003, monster_id = 21011201, pos = { x = 1121.928, y = 217.288, z = 1035.036 }, rot = { x = 0.000, y = 252.150, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 92004, monster_id = 21011001, pos = { x = 1130.512, y = 224.935, z = 1052.571 }, rot = { x = 0.000, y = 237.214, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 92005, monster_id = 20011301, pos = { x = 1120.894, y = 217.280, z = 1033.885 }, rot = { x = 0.000, y = 208.507, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 92006, monster_id = 20011301, pos = { x = 1118.895, y = 218.087, z = 1044.129 }, rot = { x = 0.000, y = 208.507, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 92007, monster_id = 21020301, pos = { x = 1113.834, y = 217.459, z = 1032.665 }, rot = { x = 0.000, y = 286.783, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 92008, monster_id = 21030401, pos = { x = 1132.558, y = 218.071, z = 1037.980 }, rot = { x = 0.010, y = 286.891, z = 1.054 }, level = 1, drop_tag = "丘丘萨满", area_id = 6 },
	{ config_id = 92009, monster_id = 21011201, pos = { x = 1131.574, y = 218.068, z = 1037.302 }, rot = { x = 0.000, y = 283.940, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 92010, monster_id = 21011201, pos = { x = 1130.651, y = 218.060, z = 1038.439 }, rot = { x = 0.000, y = 283.940, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92013, gadget_id = 70300102, pos = { x = 1118.911, y = 217.491, z = 1044.061 }, rot = { x = 5.984, y = 208.611, z = 1.991 }, level = 1, area_id = 6 },
	{ config_id = 92018, gadget_id = 70300088, pos = { x = 1115.026, y = 217.194, z = 1029.098 }, rot = { x = 11.493, y = 300.874, z = 359.275 }, level = 1, area_id = 6 },
	{ config_id = 92020, gadget_id = 70220005, pos = { x = 1114.761, y = 217.454, z = 1043.805 }, rot = { x = 7.944, y = 208.784, z = 3.984 }, level = 1, area_id = 6 },
	{ config_id = 92021, gadget_id = 70220005, pos = { x = 1117.213, y = 217.081, z = 1031.904 }, rot = { x = 356.845, y = 208.823, z = 348.549 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1092022, name = "ANY_MONSTER_DIE_92022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92022", action = "action_EVENT_ANY_MONSTER_DIE_92022" }
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
		monsters = { 92001, 92003, 92004, 92005, 92006, 92007 },
		gadgets = { 92013, 92018, 92020, 92021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_92022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 92002, 92008, 92009, 92010 },
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
function condition_EVENT_ANY_MONSTER_DIE_92022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101092, 2)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1124, y=218, z=1030}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1124,y=217,z=1039}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end