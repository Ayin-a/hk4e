-- 基础信息
local base_info = {
	group_id = 133003481
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1711, monster_id = 21010101, pos = { x = 2795.714, y = 260.006, z = -1264.085 }, rot = { x = 0.000, y = 27.245, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1712, monster_id = 21010601, pos = { x = 2798.992, y = 260.957, z = -1281.300 }, rot = { x = 0.000, y = 73.352, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1713, monster_id = 20011201, pos = { x = 2800.445, y = 261.354, z = -1280.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 1715, monster_id = 20011201, pos = { x = 2796.999, y = 260.663, z = -1277.917 }, rot = { x = 0.000, y = 14.532, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 1716, monster_id = 21020201, pos = { x = 2800.772, y = 259.742, z = -1258.767 }, rot = { x = 0.000, y = 221.763, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 1 },
	{ config_id = 1717, monster_id = 21010901, pos = { x = 2814.258, y = 260.964, z = -1280.693 }, rot = { x = 0.000, y = 329.321, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 1720, monster_id = 21020101, pos = { x = 2813.937, y = 260.775, z = -1278.177 }, rot = { x = 0.000, y = 312.007, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 },
	{ config_id = 1721, monster_id = 21030101, pos = { x = 2817.342, y = 261.351, z = -1280.000 }, rot = { x = 0.000, y = 295.899, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4330, gadget_id = 70300085, pos = { x = 2799.284, y = 260.377, z = -1280.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4331, gadget_id = 70300085, pos = { x = 2795.930, y = 259.491, z = -1264.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4332, gadget_id = 70300087, pos = { x = 2800.443, y = 260.830, z = -1280.828 }, rot = { x = 0.000, y = 307.552, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4333, gadget_id = 70300087, pos = { x = 2797.971, y = 259.871, z = -1266.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4334, gadget_id = 70300087, pos = { x = 2797.078, y = 260.260, z = -1277.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4335, gadget_id = 70220005, pos = { x = 2796.419, y = 259.955, z = -1263.079 }, rot = { x = 0.000, y = 242.757, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4337, gadget_id = 70220005, pos = { x = 2807.955, y = 259.914, z = -1264.331 }, rot = { x = 359.941, y = 312.108, z = 0.224 }, level = 1, area_id = 1 },
	{ config_id = 4338, gadget_id = 70220013, pos = { x = 2809.360, y = 259.925, z = -1264.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4339, gadget_id = 70220013, pos = { x = 2804.592, y = 260.766, z = -1281.272 }, rot = { x = 0.000, y = 31.631, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4340, gadget_id = 70220013, pos = { x = 2802.994, y = 260.723, z = -1282.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4341, gadget_id = 70220013, pos = { x = 2806.314, y = 260.712, z = -1279.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4342, gadget_id = 70220005, pos = { x = 2801.687, y = 260.531, z = -1278.503 }, rot = { x = 0.231, y = 211.057, z = 0.015 }, level = 1, area_id = 1 },
	{ config_id = 4343, gadget_id = 70300084, pos = { x = 2807.056, y = 260.836, z = -1282.467 }, rot = { x = 0.000, y = 39.730, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4344, gadget_id = 70300084, pos = { x = 2813.457, y = 260.434, z = -1269.760 }, rot = { x = 0.000, y = 18.699, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4345, gadget_id = 70300084, pos = { x = 2786.333, y = 259.374, z = -1274.567 }, rot = { x = 0.000, y = 200.510, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4347, gadget_id = 70300084, pos = { x = 2793.589, y = 259.050, z = -1254.056 }, rot = { x = 6.356, y = 252.668, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4348, gadget_id = 70300078, pos = { x = 2788.722, y = 259.624, z = -1276.050 }, rot = { x = 0.000, y = 285.801, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4350, gadget_id = 70300078, pos = { x = 2794.468, y = 259.502, z = -1256.923 }, rot = { x = 0.000, y = 344.287, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4351, gadget_id = 70300078, pos = { x = 2806.269, y = 259.905, z = -1261.049 }, rot = { x = 352.334, y = 47.025, z = 358.542 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000585, name = "ANY_MONSTER_DIE_585", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_585", action = "action_EVENT_ANY_MONSTER_DIE_585" }
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
		monsters = { 1711, 1712, 1713, 1715, 1716 },
		gadgets = { 4330, 4331, 4332, 4333, 4334, 4335, 4337, 4338, 4339, 4340, 4341, 4342, 4343, 4344, 4345, 4347, 4348, 4350, 4351 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_585" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_585(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_585(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2801, y=260, z=-1271}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2801,y=260,z=-1271}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1720, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1721, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1717, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end