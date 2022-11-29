-- 基础信息
local base_info = {
	group_id = 133101104
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 21011201, pos = { x = 1273.055, y = 264.019, z = 1234.958 }, rot = { x = 0.000, y = 86.449, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 104002, monster_id = 21011201, pos = { x = 1269.980, y = 264.581, z = 1242.096 }, rot = { x = 0.000, y = 62.540, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 104003, monster_id = 21030401, pos = { x = 1277.528, y = 262.113, z = 1218.838 }, rot = { x = 0.000, y = 23.023, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 },
	{ config_id = 104004, monster_id = 20011301, pos = { x = 1270.033, y = 264.651, z = 1243.343 }, rot = { x = 0.000, y = 18.897, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 104005, monster_id = 20011301, pos = { x = 1274.209, y = 264.032, z = 1234.161 }, rot = { x = 0.000, y = 18.897, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 104006, monster_id = 21020301, pos = { x = 1269.207, y = 264.433, z = 1239.059 }, rot = { x = 0.000, y = 97.173, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 104007, monster_id = 21020301, pos = { x = 1280.672, y = 263.225, z = 1218.266 }, rot = { x = 0.000, y = 18.353, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 104008, monster_id = 21011201, pos = { x = 1279.488, y = 262.567, z = 1219.932 }, rot = { x = 0.000, y = 34.897, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104009, gadget_id = 70300102, pos = { x = 1274.298, y = 263.502, z = 1234.129 }, rot = { x = 357.489, y = 18.978, z = 356.304 }, level = 1, area_id = 6 },
	{ config_id = 104010, gadget_id = 70300102, pos = { x = 1269.933, y = 264.207, z = 1243.493 }, rot = { x = 358.729, y = 19.322, z = 353.378 }, level = 1, area_id = 6 },
	{ config_id = 104011, gadget_id = 70300089, pos = { x = 1265.421, y = 265.086, z = 1244.143 }, rot = { x = 0.000, y = 118.797, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 104012, gadget_id = 70300089, pos = { x = 1278.261, y = 263.102, z = 1231.528 }, rot = { x = 0.000, y = 91.041, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 104015, gadget_id = 70300088, pos = { x = 1264.633, y = 264.629, z = 1241.809 }, rot = { x = 0.000, y = 10.981, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 104016, gadget_id = 70220005, pos = { x = 1277.216, y = 263.313, z = 1232.376 }, rot = { x = 0.000, y = 18.897, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 104017, gadget_id = 70220005, pos = { x = 1273.223, y = 264.931, z = 1246.352 }, rot = { x = 0.000, y = 18.897, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 104019, gadget_id = 70300084, pos = { x = 1273.444, y = 262.344, z = 1226.258 }, rot = { x = 6.649, y = 113.059, z = 351.294 }, level = 1, area_id = 6 },
	{ config_id = 104020, gadget_id = 70300084, pos = { x = 1268.305, y = 264.232, z = 1248.104 }, rot = { x = 359.160, y = 242.018, z = 358.419 }, level = 1, area_id = 6 },
	{ config_id = 104021, gadget_id = 70300086, pos = { x = 1265.565, y = 265.054, z = 1237.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104018, name = "ANY_MONSTER_DIE_104018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104018", action = "action_EVENT_ANY_MONSTER_DIE_104018" }
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
		monsters = { 104001, 104002, 104004, 104005, 104006 },
		gadgets = { 104009, 104010, 104011, 104012, 104015, 104016, 104017, 104019, 104020, 104021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_104018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 104003, 104007, 104008 },
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
function condition_EVENT_ANY_MONSTER_DIE_104018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_104018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101104, 2)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1272, y=264, z=1238}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1272,y=264,z=1238}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end