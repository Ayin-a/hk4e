-- 基础信息
local base_info = {
	group_id = 133103267
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 267001, monster_id = 21030401, pos = { x = 497.184, y = 168.540, z = 1185.474 }, rot = { x = 0.000, y = 36.004, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 6 },
	{ config_id = 267002, monster_id = 21011201, pos = { x = 503.025, y = 169.264, z = 1183.323 }, rot = { x = 0.000, y = 28.009, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 267003, monster_id = 21011201, pos = { x = 495.712, y = 168.683, z = 1191.738 }, rot = { x = 0.000, y = 324.317, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 267004, monster_id = 20011301, pos = { x = 494.609, y = 168.471, z = 1192.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 267005, monster_id = 20011301, pos = { x = 504.448, y = 169.360, z = 1186.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 267006, monster_id = 21020301, pos = { x = 498.599, y = 168.105, z = 1191.076 }, rot = { x = 0.000, y = 19.466, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 267007, monster_id = 21020301, pos = { x = 514.931, y = 166.805, z = 1203.823 }, rot = { x = 0.000, y = 251.560, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 267008, monster_id = 21011201, pos = { x = 513.521, y = 167.088, z = 1205.621 }, rot = { x = 0.000, y = 234.825, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 267009, monster_id = 21011201, pos = { x = 515.826, y = 166.651, z = 1202.033 }, rot = { x = 0.000, y = 246.349, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 267011, gadget_id = 70300102, pos = { x = 504.353, y = 168.984, z = 1185.630 }, rot = { x = 13.443, y = 1.646, z = 10.944 }, level = 1, area_id = 6 },
	{ config_id = 267012, gadget_id = 70300102, pos = { x = 494.568, y = 168.287, z = 1191.776 }, rot = { x = 2.679, y = 359.916, z = 356.424 }, level = 1, area_id = 6 },
	{ config_id = 267013, gadget_id = 70300089, pos = { x = 493.226, y = 168.411, z = 1181.693 }, rot = { x = 0.000, y = 99.900, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 267014, gadget_id = 70300089, pos = { x = 503.634, y = 169.936, z = 1180.625 }, rot = { x = 0.000, y = 72.145, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 267015, gadget_id = 70310001, pos = { x = 497.783, y = 169.069, z = 1177.834 }, rot = { x = 0.000, y = 281.251, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 267016, gadget_id = 70310001, pos = { x = 507.364, y = 168.899, z = 1189.275 }, rot = { x = 0.000, y = 248.765, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 267017, gadget_id = 70310001, pos = { x = 489.769, y = 169.308, z = 1185.563 }, rot = { x = 0.000, y = 319.567, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 267018, gadget_id = 70220005, pos = { x = 505.027, y = 168.421, z = 1190.297 }, rot = { x = 5.354, y = 0.084, z = 1.790 }, level = 1, area_id = 6 },
	{ config_id = 267019, gadget_id = 70220005, pos = { x = 493.976, y = 168.254, z = 1196.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1267020, name = "ANY_MONSTER_DIE_267020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_267020", action = "action_EVENT_ANY_MONSTER_DIE_267020" }
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
		monsters = { 267001, 267002, 267003, 267004, 267005, 267006 },
		gadgets = { 267011, 267012, 267013, 267014, 267015, 267016, 267017, 267018, 267019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_267020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 267007, 267008, 267009 },
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
function condition_EVENT_ANY_MONSTER_DIE_267020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_267020(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=499, y=168, z=1187}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103267, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=499,y=168,z=1187}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end