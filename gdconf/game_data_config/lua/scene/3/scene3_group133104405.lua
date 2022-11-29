-- 基础信息
local base_info = {
	group_id = 133104405
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 405001, monster_id = 21010101, pos = { x = 663.775, y = 201.498, z = 337.825 }, rot = { x = 0.000, y = 68.989, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 9 },
	{ config_id = 405002, monster_id = 21010101, pos = { x = 654.606, y = 201.516, z = 339.276 }, rot = { x = 358.282, y = 325.061, z = 1.889 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 9 },
	{ config_id = 405003, monster_id = 21020201, pos = { x = 660.040, y = 201.044, z = 341.430 }, rot = { x = 0.000, y = 198.626, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 9 },
	{ config_id = 405004, monster_id = 21030301, pos = { x = 656.468, y = 201.091, z = 334.130 }, rot = { x = 1.788, y = 86.933, z = 359.904 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 9 },
	{ config_id = 405005, monster_id = 20011201, pos = { x = 653.782, y = 201.966, z = 340.392 }, rot = { x = 359.764, y = 99.620, z = 359.802 }, level = 1, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 405006, monster_id = 20011201, pos = { x = 665.265, y = 201.965, z = 338.314 }, rot = { x = 359.845, y = 0.000, z = 0.266 }, level = 1, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 405007, monster_id = 21020101, pos = { x = 656.248, y = 200.573, z = 312.692 }, rot = { x = 0.000, y = 0.455, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 405008, monster_id = 21010601, pos = { x = 657.620, y = 200.512, z = 312.462 }, rot = { x = 0.000, y = 0.455, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 405009, monster_id = 21010601, pos = { x = 655.145, y = 200.588, z = 312.805 }, rot = { x = 0.000, y = 0.455, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 405010, monster_id = 21010601, pos = { x = 656.969, y = 200.843, z = 314.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 405011, gadget_id = 70300102, pos = { x = 665.173, y = 201.044, z = 338.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 405012, gadget_id = 70300102, pos = { x = 653.595, y = 201.044, z = 340.461 }, rot = { x = 0.000, y = 359.959, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 405013, gadget_id = 70300087, pos = { x = 665.120, y = 201.503, z = 338.342 }, rot = { x = 359.845, y = 0.000, z = 0.266 }, level = 1, area_id = 9 },
	{ config_id = 405014, gadget_id = 70220005, pos = { x = 666.249, y = 201.510, z = 337.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 405015, gadget_id = 70220005, pos = { x = 652.606, y = 201.498, z = 339.476 }, rot = { x = 6.224, y = 359.757, z = 355.533 }, level = 1, area_id = 9 },
	{ config_id = 405016, gadget_id = 70300084, pos = { x = 646.970, y = 201.044, z = 340.774 }, rot = { x = 3.613, y = 206.487, z = 10.660 }, level = 1, area_id = 9 },
	{ config_id = 405017, gadget_id = 70300087, pos = { x = 653.590, y = 201.503, z = 340.364 }, rot = { x = 359.845, y = 0.000, z = 0.266 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1405018, name = "ANY_MONSTER_DIE_405018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_405018", action = "action_EVENT_ANY_MONSTER_DIE_405018" }
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
		monsters = { 405001, 405002, 405003, 405004, 405005, 405006 },
		gadgets = { 405011, 405012, 405013, 405014, 405015, 405016, 405017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_405018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_405018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_405018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=653, y=201, z=332}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=653,y=201,z=332}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 405007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 405008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 405009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 405010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end