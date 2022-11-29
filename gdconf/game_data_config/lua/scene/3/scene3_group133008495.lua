-- 基础信息
local base_info = {
	group_id = 133008495
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 495001, monster_id = 21011401, pos = { x = 1083.990, y = 253.498, z = -367.259 }, rot = { x = 9.751, y = 348.180, z = 12.048 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 495002, monster_id = 21011401, pos = { x = 1088.674, y = 254.025, z = -367.269 }, rot = { x = 354.982, y = 66.551, z = 9.695 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 495003, monster_id = 21020601, pos = { x = 1090.091, y = 253.502, z = -360.690 }, rot = { x = 4.774, y = 184.031, z = 359.409 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, climate_area_id = 1, area_id = 10 },
	{ config_id = 495004, monster_id = 21030501, pos = { x = 1087.744, y = 253.289, z = -364.320 }, rot = { x = 0.000, y = 151.487, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 495005, monster_id = 20010801, pos = { x = 1090.302, y = 254.772, z = -366.826 }, rot = { x = 19.099, y = 294.230, z = 355.458 }, level = 1, drop_tag = "史莱姆", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 495006, monster_id = 20010801, pos = { x = 1083.483, y = 253.596, z = -365.572 }, rot = { x = 0.000, y = 104.756, z = 0.000 }, level = 1, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	-- 增援怪A
	{ config_id = 495007, monster_id = 21020601, pos = { x = 1096.327, y = 256.802, z = -372.931 }, rot = { x = 0.000, y = 320.549, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", climate_area_id = 1, area_id = 10 },
	-- 增援怪B
	{ config_id = 495008, monster_id = 21011301, pos = { x = 1094.680, y = 256.162, z = -371.408 }, rot = { x = 0.000, y = 309.093, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
	-- 增援怪C
	{ config_id = 495009, monster_id = 21011301, pos = { x = 1097.308, y = 256.921, z = -370.896 }, rot = { x = 0.000, y = 309.830, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
	-- 增援怪D
	{ config_id = 495010, monster_id = 21011301, pos = { x = 1094.421, y = 256.605, z = -374.285 }, rot = { x = 0.000, y = 324.582, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 495011, gadget_id = 70300102, pos = { x = 1086.320, y = 252.807, z = -361.489 }, rot = { x = 351.617, y = 104.500, z = 356.928 }, level = 1, area_id = 10 },
	{ config_id = 495013, gadget_id = 70300087, pos = { x = 1090.372, y = 254.332, z = -366.968 }, rot = { x = 343.237, y = 95.583, z = 10.330 }, level = 1, area_id = 10 },
	{ config_id = 495014, gadget_id = 70220043, pos = { x = 1095.751, y = 255.820, z = -359.260 }, rot = { x = 4.592, y = 104.728, z = 356.596 }, level = 1, area_id = 10 },
	{ config_id = 495015, gadget_id = 70220043, pos = { x = 1085.021, y = 252.921, z = -356.160 }, rot = { x = 358.947, y = 181.942, z = 356.952 }, level = 1, area_id = 10 },
	{ config_id = 495016, gadget_id = 70300084, pos = { x = 1095.864, y = 255.723, z = -365.973 }, rot = { x = 7.392, y = 351.190, z = 15.070 }, level = 1, area_id = 10 },
	{ config_id = 495017, gadget_id = 70300087, pos = { x = 1083.596, y = 253.129, z = -365.566 }, rot = { x = 356.887, y = 104.552, z = 8.368 }, level = 1, area_id = 10 },
	{ config_id = 495020, gadget_id = 70220043, pos = { x = 1087.109, y = 253.400, z = -361.264 }, rot = { x = 355.862, y = 148.531, z = 1.686 }, level = 1, area_id = 10 },
	{ config_id = 495021, gadget_id = 70220059, pos = { x = 1085.662, y = 253.172, z = -361.229 }, rot = { x = 0.000, y = 14.777, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 495022, gadget_id = 70220043, pos = { x = 1085.690, y = 253.162, z = -362.530 }, rot = { x = 4.592, y = 172.403, z = 356.596 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1495023, name = "ANY_MONSTER_DIE_495023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_495023", action = "action_EVENT_ANY_MONSTER_DIE_495023" }
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
		monsters = { 495001, 495002, 495003, 495004, 495005, 495006 },
		gadgets = { 495011, 495013, 495014, 495015, 495016, 495017, 495020, 495021, 495022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_495023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 495007, 495008, 495009, 495010 },
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
function condition_EVENT_ANY_MONSTER_DIE_495023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_495023(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008495, 2)
	
	return 0
end