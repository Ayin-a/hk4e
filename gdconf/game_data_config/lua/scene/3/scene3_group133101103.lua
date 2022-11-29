-- 基础信息
local base_info = {
	group_id = 133101103
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103001, monster_id = 25020201, pos = { x = 1117.248, y = 283.605, z = 1376.629 }, rot = { x = 0.000, y = 232.080, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 2, area_id = 6 },
	{ config_id = 103002, monster_id = 25020201, pos = { x = 1118.170, y = 283.668, z = 1369.411 }, rot = { x = 0.000, y = 283.887, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 6 },
	{ config_id = 103003, monster_id = 25030301, pos = { x = 1118.794, y = 283.475, z = 1372.722 }, rot = { x = 0.000, y = 283.805, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9005, area_id = 6 },
	{ config_id = 103004, monster_id = 25030301, pos = { x = 1115.446, y = 282.969, z = 1371.364 }, rot = { x = 0.000, y = 36.083, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9003, area_id = 6 },
	{ config_id = 103005, monster_id = 25070101, pos = { x = 1116.053, y = 283.162, z = 1374.975 }, rot = { x = 0.000, y = 203.074, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 4, area_id = 6 },
	{ config_id = 103006, monster_id = 25010301, pos = { x = 1103.278, y = 282.842, z = 1390.781 }, rot = { x = 0.000, y = 171.824, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 103007, monster_id = 25060101, pos = { x = 1106.895, y = 283.628, z = 1392.849 }, rot = { x = 0.000, y = 171.824, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 103008, monster_id = 25030201, pos = { x = 1105.604, y = 282.884, z = 1389.943 }, rot = { x = 0.000, y = 171.824, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 103011, gadget_id = 70310006, pos = { x = 1116.214, y = 283.088, z = 1373.082 }, rot = { x = 0.000, y = 283.805, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103012, name = "ANY_MONSTER_DIE_103012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_103012", action = "action_EVENT_ANY_MONSTER_DIE_103012" }
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
		monsters = { 103001, 103002, 103003, 103004, 103005 },
		gadgets = { 103011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_103012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_103012(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_103012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1115, y=282, z=1373}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1115,y=282,z=1373}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end