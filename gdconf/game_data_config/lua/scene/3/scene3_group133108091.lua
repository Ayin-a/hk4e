-- 基础信息
local base_info = {
	group_id = 133108091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 21010101, pos = { x = -125.660, y = 200.343, z = -846.624 }, rot = { x = 0.000, y = 141.909, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 7 },
	{ config_id = 91002, monster_id = 21010101, pos = { x = -118.041, y = 200.404, z = -855.902 }, rot = { x = 0.000, y = 104.161, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 7 },
	{ config_id = 91003, monster_id = 21020201, pos = { x = -120.270, y = 200.374, z = -861.662 }, rot = { x = 0.000, y = 334.474, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 7 },
	{ config_id = 91004, monster_id = 21030101, pos = { x = -115.282, y = 200.167, z = -858.629 }, rot = { x = 0.000, y = 338.511, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 91005, monster_id = 20011201, pos = { x = -111.739, y = 200.432, z = -856.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 7 },
	{ config_id = 91006, monster_id = 20011201, pos = { x = -124.444, y = 200.774, z = -847.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 7 },
	{ config_id = 91007, monster_id = 21020301, pos = { x = -122.968, y = 200.924, z = -867.769 }, rot = { x = 0.000, y = 41.401, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 7 },
	{ config_id = 91008, monster_id = 21010601, pos = { x = -124.433, y = 201.035, z = -871.692 }, rot = { x = 0.000, y = 35.995, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
	{ config_id = 91009, monster_id = 21010601, pos = { x = -126.625, y = 200.920, z = -869.958 }, rot = { x = 0.000, y = 36.996, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
	{ config_id = 91010, monster_id = 21010601, pos = { x = -125.048, y = 200.946, z = -870.079 }, rot = { x = 358.640, y = 34.130, z = 359.084 }, level = 1, drop_tag = "丘丘人", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91011, gadget_id = 70300102, pos = { x = -124.862, y = 199.885, z = -847.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91012, gadget_id = 70300102, pos = { x = -117.552, y = 199.946, z = -856.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91013, gadget_id = 70300087, pos = { x = -124.404, y = 200.312, z = -847.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91014, gadget_id = 70220005, pos = { x = -116.647, y = 200.335, z = -856.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91015, gadget_id = 70220005, pos = { x = -133.982, y = 200.533, z = -848.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91017, gadget_id = 70300087, pos = { x = -119.345, y = 200.010, z = -850.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91020, gadget_id = 70220005, pos = { x = -133.275, y = 200.558, z = -849.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91021, gadget_id = 70300087, pos = { x = -111.724, y = 199.970, z = -856.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91022, gadget_id = 70300087, pos = { x = -106.694, y = 199.942, z = -856.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91023, gadget_id = 70220013, pos = { x = -105.659, y = 200.203, z = -860.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91024, gadget_id = 70220013, pos = { x = -103.999, y = 200.149, z = -859.312 }, rot = { x = 0.000, y = 320.592, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 91025, gadget_id = 70300084, pos = { x = -109.680, y = 201.306, z = -869.078 }, rot = { x = 5.689, y = 56.157, z = 3.957 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091018, name = "ANY_MONSTER_DIE_91018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91018", action = "action_EVENT_ANY_MONSTER_DIE_91018" }
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
	rand_suite = true
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
		monsters = { 91001, 91002, 91003, 91004, 91005, 91006 },
		gadgets = { 91011, 91012, 91013, 91014, 91015, 91017, 91020, 91021, 91022, 91023, 91024, 91025 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-124, y=200, z=-855}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-124,y=200,z=-855}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end