-- 基础信息
local base_info = {
	group_id = 133008488
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 488001, monster_id = 21011401, pos = { x = 1472.272, y = 267.302, z = -635.913 }, rot = { x = 0.000, y = 3.245, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 488002, monster_id = 21011401, pos = { x = 1458.792, y = 267.979, z = -640.686 }, rot = { x = 354.982, y = 225.881, z = 9.695 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 488003, monster_id = 21020601, pos = { x = 1457.510, y = 267.169, z = -634.856 }, rot = { x = 4.774, y = 104.731, z = 359.409 }, level = 1, drop_tag = "丘丘暴徒", climate_area_id = 1, area_id = 10 },
	{ config_id = 488004, monster_id = 21030501, pos = { x = 1462.849, y = 266.907, z = -633.938 }, rot = { x = 0.000, y = 104.756, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 488005, monster_id = 20010801, pos = { x = 1472.963, y = 267.634, z = -634.311 }, rot = { x = 359.353, y = 295.349, z = 358.106 }, level = 1, drop_tag = "史莱姆", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 488006, monster_id = 20010801, pos = { x = 1457.602, y = 268.752, z = -641.632 }, rot = { x = 0.000, y = 104.756, z = 0.000 }, level = 1, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	-- 增援怪A
	{ config_id = 488007, monster_id = 21020601, pos = { x = 1451.341, y = 267.385, z = -632.187 }, rot = { x = 0.000, y = 104.756, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", climate_area_id = 1, area_id = 10 },
	-- 增援怪B
	{ config_id = 488008, monster_id = 21011301, pos = { x = 1452.935, y = 267.559, z = -635.308 }, rot = { x = 0.000, y = 104.756, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
	-- 增援怪C
	{ config_id = 488009, monster_id = 21011301, pos = { x = 1453.622, y = 267.356, z = -630.693 }, rot = { x = 0.000, y = 104.756, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
	-- 增援怪D
	{ config_id = 488010, monster_id = 21011301, pos = { x = 1455.483, y = 267.237, z = -633.341 }, rot = { x = 0.000, y = 104.756, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 488011, gadget_id = 70300102, pos = { x = 1473.166, y = 266.696, z = -634.536 }, rot = { x = 5.074, y = 104.425, z = 357.918 }, level = 1, area_id = 10 },
	{ config_id = 488012, gadget_id = 70300102, pos = { x = 1457.479, y = 267.833, z = -641.726 }, rot = { x = 6.954, y = 105.260, z = 8.283 }, level = 1, area_id = 10 },
	{ config_id = 488013, gadget_id = 70300087, pos = { x = 1472.897, y = 267.185, z = -634.401 }, rot = { x = 4.895, y = 104.883, z = 2.975 }, level = 1, area_id = 10 },
	{ config_id = 488014, gadget_id = 70220043, pos = { x = 1470.894, y = 267.202, z = -630.912 }, rot = { x = 4.592, y = 104.728, z = 356.596 }, level = 1, area_id = 10 },
	{ config_id = 488015, gadget_id = 70220043, pos = { x = 1460.165, y = 266.718, z = -627.812 }, rot = { x = 358.947, y = 181.942, z = 356.952 }, level = 1, area_id = 10 },
	{ config_id = 488016, gadget_id = 70300084, pos = { x = 1477.261, y = 266.121, z = -636.278 }, rot = { x = 4.363, y = 14.680, z = 357.452 }, level = 1, area_id = 10 },
	{ config_id = 488017, gadget_id = 70300087, pos = { x = 1457.479, y = 268.293, z = -641.656 }, rot = { x = 0.037, y = 105.154, z = 6.709 }, level = 1, area_id = 10 },
	{ config_id = 488019, gadget_id = 70300084, pos = { x = 1455.483, y = 267.898, z = -645.252 }, rot = { x = 359.605, y = 125.840, z = 3.555 }, level = 1, area_id = 10 },
	{ config_id = 488020, gadget_id = 70300084, pos = { x = 1459.339, y = 266.621, z = -624.462 }, rot = { x = 1.775, y = 244.275, z = 359.075 }, level = 1, area_id = 10 },
	{ config_id = 488021, gadget_id = 70220043, pos = { x = 1461.168, y = 266.785, z = -628.164 }, rot = { x = 355.862, y = 189.453, z = 1.686 }, level = 1, area_id = 10 },
	{ config_id = 488022, gadget_id = 70220059, pos = { x = 1460.353, y = 266.786, z = -626.473 }, rot = { x = 0.000, y = 14.777, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 488023, gadget_id = 70220043, pos = { x = 1456.584, y = 267.759, z = -639.184 }, rot = { x = 4.592, y = 90.508, z = 356.596 }, level = 1, area_id = 10 },
	{ config_id = 488024, gadget_id = 70310015, pos = { x = 1473.740, y = 266.892, z = -639.253 }, rot = { x = 0.000, y = 14.777, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 488025, gadget_id = 70310015, pos = { x = 1463.589, y = 266.842, z = -625.608 }, rot = { x = 0.000, y = 14.777, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 488026, gadget_id = 70310015, pos = { x = 1453.834, y = 268.191, z = -640.600 }, rot = { x = 0.000, y = 14.777, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1488018, name = "ANY_MONSTER_DIE_488018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_488018", action = "action_EVENT_ANY_MONSTER_DIE_488018" }
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
		monsters = { 488001, 488002, 488003, 488004, 488005, 488006 },
		gadgets = { 488011, 488012, 488013, 488014, 488015, 488016, 488017, 488019, 488020, 488021, 488022, 488023, 488024, 488025, 488026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_488018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 488007, 488008, 488009, 488010 },
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
function condition_EVENT_ANY_MONSTER_DIE_488018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_488018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1462, y=266, z=-634}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1462,y=266,z=-634}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008488, 2)
	
	return 0
end