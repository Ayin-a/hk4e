-- 基础信息
local base_info = {
	group_id = 133102555
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 555001, monster_id = 21010101, pos = { x = 1440.665, y = 200.057, z = 149.706 }, rot = { x = 358.289, y = 41.665, z = 3.266 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 5 },
	{ config_id = 555002, monster_id = 21010101, pos = { x = 1454.192, y = 201.825, z = 147.731 }, rot = { x = 3.729, y = 244.750, z = 350.598 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 5 },
	{ config_id = 555003, monster_id = 21020201, pos = { x = 1453.962, y = 201.154, z = 150.599 }, rot = { x = 2.589, y = 270.326, z = 4.774 }, level = 1, drop_tag = "丘丘暴徒", area_id = 5 },
	{ config_id = 555004, monster_id = 21030101, pos = { x = 1452.894, y = 201.013, z = 159.112 }, rot = { x = 21.327, y = 251.653, z = 0.704 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 5 },
	{ config_id = 555005, monster_id = 20011201, pos = { x = 1441.760, y = 200.753, z = 150.660 }, rot = { x = 0.965, y = 358.874, z = 3.558 }, level = 1, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 555006, monster_id = 20011201, pos = { x = 1452.988, y = 202.222, z = 147.123 }, rot = { x = 350.663, y = 110.569, z = 3.889 }, level = 1, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 555007, monster_id = 21020101, pos = { x = 1444.745, y = 200.000, z = 170.557 }, rot = { x = 357.715, y = 160.486, z = 5.878 }, level = 1, drop_tag = "丘丘暴徒", area_id = 5 },
	{ config_id = 555008, monster_id = 21010601, pos = { x = 1441.666, y = 200.000, z = 168.078 }, rot = { x = 356.827, y = 160.775, z = 355.246 }, level = 1, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 555009, monster_id = 21010601, pos = { x = 1442.991, y = 200.000, z = 169.599 }, rot = { x = 0.000, y = 160.663, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 555011, gadget_id = 70300102, pos = { x = 1441.604, y = 200.112, z = 150.646 }, rot = { x = 0.937, y = 359.330, z = 3.565 }, level = 1, area_id = 5 },
	{ config_id = 555012, gadget_id = 70300102, pos = { x = 1453.293, y = 201.378, z = 146.622 }, rot = { x = 7.071, y = 0.441, z = 7.126 }, level = 1, area_id = 5 },
	{ config_id = 555013, gadget_id = 70300087, pos = { x = 1441.709, y = 200.579, z = 150.697 }, rot = { x = 0.974, y = 358.737, z = 3.556 }, level = 1, area_id = 5 },
	{ config_id = 555014, gadget_id = 70220005, pos = { x = 1449.948, y = 200.691, z = 149.650 }, rot = { x = 6.524, y = 330.249, z = 2.425 }, level = 1, area_id = 5 },
	{ config_id = 555015, gadget_id = 70220005, pos = { x = 1440.729, y = 200.503, z = 151.489 }, rot = { x = 0.923, y = 359.563, z = 3.569 }, level = 1, area_id = 5 },
	{ config_id = 555017, gadget_id = 70300087, pos = { x = 1453.036, y = 201.754, z = 147.092 }, rot = { x = 6.800, y = 1.327, z = 7.497 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1555018, name = "ANY_MONSTER_DIE_555018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_555018", action = "action_EVENT_ANY_MONSTER_DIE_555018" }
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
		monsters = { 555001, 555002, 555003, 555004, 555005, 555006 },
		gadgets = { 555011, 555012, 555013, 555014, 555015, 555017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_555018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_555018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_555018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1454, y=201, z=159}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1454,y=201,z=159}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end