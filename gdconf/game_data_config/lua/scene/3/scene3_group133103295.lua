-- 基础信息
local base_info = {
	group_id = 133103295
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 295001, monster_id = 21011201, pos = { x = 830.755, y = 216.616, z = 1223.255 }, rot = { x = 10.033, y = 195.143, z = 3.610 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 295002, monster_id = 21030401, pos = { x = 835.867, y = 217.643, z = 1228.670 }, rot = { x = 0.000, y = 200.594, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 },
	{ config_id = 295003, monster_id = 21011201, pos = { x = 840.559, y = 216.150, z = 1216.391 }, rot = { x = 0.000, y = 221.281, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 295004, monster_id = 20011301, pos = { x = 838.942, y = 216.158, z = 1215.101 }, rot = { x = 0.000, y = 185.461, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 295005, monster_id = 20011301, pos = { x = 829.624, y = 216.463, z = 1222.313 }, rot = { x = 10.485, y = 185.637, z = 1.913 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 295006, monster_id = 21020301, pos = { x = 833.802, y = 216.512, z = 1224.650 }, rot = { x = 0.000, y = 204.927, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 295007, monster_id = 21020301, pos = { x = 813.535, y = 213.601, z = 1205.885 }, rot = { x = 0.000, y = 55.840, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 295008, monster_id = 21011201, pos = { x = 812.088, y = 213.790, z = 1208.152 }, rot = { x = 0.000, y = 59.021, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 295009, monster_id = 21011201, pos = { x = 815.352, y = 213.768, z = 1204.023 }, rot = { x = 0.895, y = 43.863, z = 0.392 }, level = 1, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 295010, gadget_id = 70300102, pos = { x = 829.601, y = 216.076, z = 1222.744 }, rot = { x = 10.517, y = 184.606, z = 1.725 }, level = 1, area_id = 6 },
	{ config_id = 295011, gadget_id = 70300102, pos = { x = 839.264, y = 215.616, z = 1215.372 }, rot = { x = 2.500, y = 185.505, z = 2.037 }, level = 1, area_id = 6 },
	{ config_id = 295012, gadget_id = 70300089, pos = { x = 841.381, y = 216.604, z = 1225.253 }, rot = { x = 0.000, y = 285.361, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 295013, gadget_id = 70300088, pos = { x = 836.789, y = 217.820, z = 1231.362 }, rot = { x = 0.000, y = 106.712, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 295014, gadget_id = 70300088, pos = { x = 845.778, y = 216.025, z = 1219.258 }, rot = { x = 0.000, y = 145.028, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 295015, gadget_id = 70220005, pos = { x = 829.913, y = 215.772, z = 1217.137 }, rot = { x = 0.000, y = 185.461, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 295016, gadget_id = 70220005, pos = { x = 841.376, y = 215.324, z = 1210.687 }, rot = { x = 0.000, y = 185.461, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 295019, gadget_id = 70220013, pos = { x = 834.955, y = 217.813, z = 1232.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 295020, gadget_id = 70220013, pos = { x = 838.361, y = 217.557, z = 1230.745 }, rot = { x = 355.634, y = 42.079, z = 348.983 }, level = 1, area_id = 6 },
	{ config_id = 295021, gadget_id = 70220014, pos = { x = 833.253, y = 218.165, z = 1232.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 295022, gadget_id = 70220014, pos = { x = 839.853, y = 217.266, z = 1230.188 }, rot = { x = 349.425, y = 0.496, z = 354.644 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1295017, name = "ANY_MONSTER_DIE_295017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_295017", action = "action_EVENT_ANY_MONSTER_DIE_295017" }
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
		monsters = { 295001, 295002, 295003, 295004, 295005, 295006 },
		gadgets = { 295010, 295011, 295012, 295013, 295014, 295015, 295016, 295019, 295020, 295021, 295022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_295017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 295007, 295008, 295009 },
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
function condition_EVENT_ANY_MONSTER_DIE_295017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_295017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103295, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=834,y=216,z=1220}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=834, y=216, z=1220}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end