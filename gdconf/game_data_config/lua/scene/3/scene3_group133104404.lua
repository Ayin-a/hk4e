-- 基础信息
local base_info = {
	group_id = 133104404
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 404001, monster_id = 21011201, pos = { x = 188.203, y = 238.231, z = 108.372 }, rot = { x = 354.378, y = 21.184, z = 353.244 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 404002, monster_id = 21011201, pos = { x = 178.766, y = 238.280, z = 114.222 }, rot = { x = 356.092, y = 97.629, z = 15.251 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 404003, monster_id = 21011201, pos = { x = 194.724, y = 237.886, z = 108.516 }, rot = { x = 0.000, y = 321.789, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 404006, monster_id = 20011301, pos = { x = 185.383, y = 240.089, z = 100.118 }, rot = { x = 11.967, y = 1.915, z = 4.283 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 9 },
	{ config_id = 404007, monster_id = 21020301, pos = { x = 180.235, y = 238.801, z = 107.758 }, rot = { x = 2.946, y = 78.490, z = 8.276 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 404008, monster_id = 21020301, pos = { x = 184.686, y = 235.090, z = 131.881 }, rot = { x = 353.322, y = 190.648, z = 356.941 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 404009, monster_id = 21011201, pos = { x = 183.020, y = 235.242, z = 131.613 }, rot = { x = 353.480, y = 193.465, z = 356.617 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 404010, monster_id = 21011201, pos = { x = 186.611, y = 235.137, z = 131.297 }, rot = { x = 354.813, y = 193.940, z = 354.796 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 404011, monster_id = 21011201, pos = { x = 182.031, y = 235.431, z = 131.013 }, rot = { x = 352.871, y = 179.869, z = 358.240 }, level = 1, drop_tag = "丘丘人", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 404012, gadget_id = 70300089, pos = { x = 188.526, y = 237.669, z = 110.314 }, rot = { x = 0.000, y = 72.960, z = 0.000 }, level = 1, isOneoff = true, area_id = 9 },
	{ config_id = 404013, gadget_id = 70300089, pos = { x = 192.458, y = 237.678, z = 110.335 }, rot = { x = 0.000, y = 72.960, z = 0.000 }, level = 1, isOneoff = true, area_id = 9 },
	{ config_id = 404014, gadget_id = 70300089, pos = { x = 180.168, y = 238.292, z = 113.593 }, rot = { x = 0.000, y = 72.960, z = 0.000 }, level = 1, isOneoff = true, area_id = 9 },
	{ config_id = 404017, gadget_id = 70300102, pos = { x = 185.415, y = 239.641, z = 99.882 }, rot = { x = 0.747, y = 255.016, z = 356.444 }, level = 1, area_id = 9 },
	{ config_id = 404018, gadget_id = 70300075, pos = { x = 190.816, y = 236.401, z = 119.308 }, rot = { x = 3.919, y = 288.081, z = 353.786 }, level = 1, area_id = 9 },
	{ config_id = 404019, gadget_id = 70300075, pos = { x = 199.238, y = 238.558, z = 104.739 }, rot = { x = 4.837, y = 27.230, z = 8.825 }, level = 1, area_id = 9 },
	{ config_id = 404020, gadget_id = 70220005, pos = { x = 193.195, y = 237.156, z = 115.258 }, rot = { x = 7.988, y = 0.545, z = 1.848 }, level = 1, area_id = 9 },
	{ config_id = 404021, gadget_id = 70220005, pos = { x = 199.765, y = 238.262, z = 107.893 }, rot = { x = 6.181, y = 347.652, z = 3.202 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1404022, name = "ANY_MONSTER_DIE_404022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_404022", action = "action_EVENT_ANY_MONSTER_DIE_404022" }
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
		monsters = { 404001, 404002, 404003, 404006, 404007 },
		gadgets = { 404012, 404013, 404014, 404017, 404018, 404019, 404020, 404021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_404022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 404008, 404009, 404010, 404011 },
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
function condition_EVENT_ANY_MONSTER_DIE_404022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_404022(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=183, y=238, z=108}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104404, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=183,y=238,z=108}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end