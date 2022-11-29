-- 基础信息
local base_info = {
	group_id = 133220143
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 143001, monster_id = 25010501, pos = { x = -2833.252, y = 200.619, z = -4025.659 }, rot = { x = 0.000, y = 269.168, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 11 },
	{ config_id = 143002, monster_id = 25010301, pos = { x = -2834.622, y = 200.549, z = -4025.679 }, rot = { x = 0.000, y = 80.800, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 143003, monster_id = 25010201, pos = { x = -2845.684, y = 200.119, z = -4023.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9004, area_id = 11 },
	{ config_id = 143004, monster_id = 25010701, pos = { x = -2840.268, y = 200.687, z = -4034.761 }, rot = { x = 0.000, y = 270.670, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9003, area_id = 11 },
	{ config_id = 143005, monster_id = 25030201, pos = { x = -2833.694, y = 200.139, z = -4021.941 }, rot = { x = 0.000, y = 216.650, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 11 },
	{ config_id = 143006, monster_id = 25030301, pos = { x = -2846.330, y = 200.142, z = -4035.486 }, rot = { x = 0.000, y = 355.471, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 11 },
	{ config_id = 143010, monster_id = 25010201, pos = { x = -2843.439, y = 200.521, z = -4039.207 }, rot = { x = 0.000, y = 305.936, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 11 },
	{ config_id = 143014, monster_id = 25010601, pos = { x = -2842.966, y = 200.064, z = -4021.909 }, rot = { x = 0.000, y = 132.039, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 11 },
	{ config_id = 143015, monster_id = 25010501, pos = { x = -2846.744, y = 200.011, z = -4026.139 }, rot = { x = 0.000, y = 110.780, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 11 },
	{ config_id = 143016, monster_id = 25020201, pos = { x = -2846.750, y = 200.000, z = -4019.987 }, rot = { x = 0.000, y = 144.677, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9004, area_id = 11 },
	{ config_id = 143017, monster_id = 25070101, pos = { x = -2842.673, y = 200.399, z = -4034.198 }, rot = { x = 0.000, y = 324.072, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 11 },
	{ config_id = 143018, monster_id = 25060101, pos = { x = -2839.297, y = 200.324, z = -4027.940 }, rot = { x = 0.000, y = 294.552, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 143007, gadget_id = 70300105, pos = { x = -2839.033, y = 200.434, z = -4030.493 }, rot = { x = 0.000, y = 214.526, z = 354.580 }, level = 1, area_id = 11 },
	{ config_id = 143008, gadget_id = 70300094, pos = { x = -2841.549, y = 200.537, z = -4034.602 }, rot = { x = 0.000, y = 282.559, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 143009, gadget_id = 70300094, pos = { x = -2836.500, y = 200.846, z = -4030.666 }, rot = { x = 0.000, y = 289.432, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 143011, gadget_id = 70310006, pos = { x = -2845.532, y = 200.013, z = -4021.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143012, name = "ANY_MONSTER_DIE_143012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_143012", action = "action_EVENT_ANY_MONSTER_DIE_143012" }
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
		monsters = { 143001, 143002, 143003, 143004, 143010, 143016 },
		gadgets = { 143007, 143008, 143009, 143011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_143012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 143005, 143006, 143014, 143015, 143017, 143018 },
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
function condition_EVENT_ANY_MONSTER_DIE_143012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_143012(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220143, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2841.581,y=200.1041,z=-4027.788}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end