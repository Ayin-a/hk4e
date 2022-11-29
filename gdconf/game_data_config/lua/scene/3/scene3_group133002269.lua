-- 基础信息
local base_info = {
	group_id = 133002269
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 973, monster_id = 21010601, pos = { x = 1646.009, y = 265.827, z = -775.020 }, rot = { x = 0.000, y = 109.221, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 974, monster_id = 21010601, pos = { x = 1662.267, y = 266.612, z = -776.460 }, rot = { x = 0.000, y = 92.694, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 977, monster_id = 20011201, pos = { x = 1663.734, y = 267.115, z = -776.004 }, rot = { x = 0.000, y = 255.491, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 3 },
	{ config_id = 978, monster_id = 21020201, pos = { x = 1659.281, y = 267.075, z = -765.787 }, rot = { x = 0.000, y = 209.746, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 3 },
	{ config_id = 979, monster_id = 21030201, pos = { x = 1649.788, y = 265.145, z = -776.200 }, rot = { x = 0.000, y = 288.963, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 3 },
	{ config_id = 980, monster_id = 21020101, pos = { x = 1650.448, y = 264.736, z = -794.647 }, rot = { x = 0.000, y = 6.922, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 3 },
	{ config_id = 982, monster_id = 21010501, pos = { x = 1652.481, y = 264.992, z = -791.296 }, rot = { x = 0.000, y = 348.052, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 983, monster_id = 21030301, pos = { x = 1649.893, y = 264.855, z = -791.266 }, rot = { x = 0.000, y = 8.841, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2251, gadget_id = 70300102, pos = { x = 1646.015, y = 265.367, z = -774.838 }, rot = { x = 0.000, y = 0.000, z = 357.625 }, level = 1, area_id = 3 },
	{ config_id = 2252, gadget_id = 70300102, pos = { x = 1662.530, y = 266.161, z = -776.461 }, rot = { x = 0.000, y = 0.000, z = 1.583 }, level = 1, area_id = 3 },
	{ config_id = 2253, gadget_id = 70300087, pos = { x = 1663.706, y = 266.653, z = -776.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2254, gadget_id = 70300087, pos = { x = 1659.421, y = 265.934, z = -772.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2255, gadget_id = 70300087, pos = { x = 1643.144, y = 265.831, z = -776.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2256, gadget_id = 70220005, pos = { x = 1647.037, y = 265.789, z = -775.180 }, rot = { x = 0.000, y = 133.150, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2257, gadget_id = 70220005, pos = { x = 1657.804, y = 265.870, z = -772.500 }, rot = { x = 0.000, y = 201.928, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2258, gadget_id = 70220005, pos = { x = 1668.727, y = 267.794, z = -782.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2259, gadget_id = 70300084, pos = { x = 1662.989, y = 267.166, z = -787.444 }, rot = { x = 0.000, y = 80.929, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000350, name = "ANY_MONSTER_DIE_350", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_350", action = "action_EVENT_ANY_MONSTER_DIE_350" }
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
		monsters = { 973, 974, 977, 978, 979 },
		gadgets = { 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_350" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_350(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_350(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1654, y=265, z=-771}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1654,y=265,z=-771}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 980, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 982, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 983, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end