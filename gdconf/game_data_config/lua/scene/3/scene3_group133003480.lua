-- 基础信息
local base_info = {
	group_id = 133003480
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1700, monster_id = 21010101, pos = { x = 2186.943, y = 213.110, z = -1469.722 }, rot = { x = 0.000, y = 27.245, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1701, monster_id = 21010601, pos = { x = 2190.361, y = 212.972, z = -1487.128 }, rot = { x = 0.000, y = 73.352, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1702, monster_id = 20011201, pos = { x = 2191.931, y = 213.429, z = -1486.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 1703, monster_id = 20011201, pos = { x = 2185.599, y = 213.101, z = -1474.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1705, monster_id = 21020201, pos = { x = 2184.297, y = 212.956, z = -1481.708 }, rot = { x = 0.000, y = 304.866, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 },
	{ config_id = 1707, monster_id = 21010601, pos = { x = 2169.038, y = 213.170, z = -1459.667 }, rot = { x = 0.000, y = 112.181, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1709, monster_id = 21020101, pos = { x = 2173.231, y = 213.074, z = -1459.398 }, rot = { x = 0.000, y = 111.857, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 },
	{ config_id = 1710, monster_id = 21030101, pos = { x = 2171.478, y = 213.278, z = -1462.688 }, rot = { x = 0.000, y = 115.667, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4318, gadget_id = 70300102, pos = { x = 2191.118, y = 212.516, z = -1487.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4319, gadget_id = 70300102, pos = { x = 2187.049, y = 212.650, z = -1469.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4320, gadget_id = 70300087, pos = { x = 2191.938, y = 212.966, z = -1486.656 }, rot = { x = 0.000, y = 307.552, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4321, gadget_id = 70300087, pos = { x = 2185.581, y = 212.639, z = -1474.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4322, gadget_id = 70300087, pos = { x = 2186.955, y = 212.845, z = -1484.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4323, gadget_id = 70220005, pos = { x = 2187.539, y = 213.114, z = -1468.823 }, rot = { x = 0.000, y = 242.757, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4324, gadget_id = 70220005, pos = { x = 2198.098, y = 212.266, z = -1471.703 }, rot = { x = 0.231, y = 211.057, z = 0.015 }, level = 1, area_id = 1 },
	{ config_id = 4325, gadget_id = 70220005, pos = { x = 2197.694, y = 212.273, z = -1471.006 }, rot = { x = 359.941, y = 312.108, z = 0.224 }, level = 1, area_id = 1 },
	{ config_id = 4326, gadget_id = 70220013, pos = { x = 2199.859, y = 212.271, z = -1471.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4327, gadget_id = 70220013, pos = { x = 2203.964, y = 212.279, z = -1475.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4328, gadget_id = 70220013, pos = { x = 2204.163, y = 213.755, z = -1491.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4329, gadget_id = 70220013, pos = { x = 2196.451, y = 212.701, z = -1487.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000584, name = "ANY_MONSTER_DIE_584", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_584", action = "action_EVENT_ANY_MONSTER_DIE_584" }
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
		monsters = { 1700, 1701, 1702, 1703, 1705 },
		gadgets = { 4318, 4319, 4320, 4321, 4322, 4323, 4324, 4325, 4326, 4327, 4328, 4329 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_584" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_584(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_584(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2192, y=212, z=-1476}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2192,y=212,z=-1476}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1709, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1707, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1710, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end