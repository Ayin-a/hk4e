-- 基础信息
local base_info = {
	group_id = 133103266
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266001, monster_id = 21010501, pos = { x = 776.381, y = 325.502, z = 1826.520 }, rot = { x = 0.000, y = 248.665, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 6 },
	{ config_id = 266002, monster_id = 21010301, pos = { x = 762.476, y = 324.014, z = 1824.493 }, rot = { x = 0.000, y = 181.836, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 6 },
	{ config_id = 266003, monster_id = 21011201, pos = { x = 763.578, y = 324.673, z = 1829.769 }, rot = { x = 0.000, y = 145.542, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 266004, monster_id = 21030401, pos = { x = 767.204, y = 324.307, z = 1828.733 }, rot = { x = 0.000, y = 175.140, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 },
	{ config_id = 266005, monster_id = 21010301, pos = { x = 770.592, y = 324.157, z = 1826.087 }, rot = { x = 0.000, y = 154.891, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011, area_id = 6 },
	{ config_id = 266006, monster_id = 21010601, pos = { x = 765.678, y = 320.716, z = 1804.052 }, rot = { x = 0.000, y = 24.854, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 266007, monster_id = 21010601, pos = { x = 757.464, y = 321.740, z = 1808.491 }, rot = { x = 0.000, y = 62.433, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 266008, monster_id = 21020101, pos = { x = 761.523, y = 320.435, z = 1805.774 }, rot = { x = 0.000, y = 23.957, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 266009, gadget_id = 70300084, pos = { x = 768.943, y = 324.194, z = 1835.963 }, rot = { x = 356.119, y = 281.427, z = 355.759 }, level = 1, area_id = 6 },
	{ config_id = 266010, gadget_id = 70220014, pos = { x = 776.585, y = 325.819, z = 1827.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 266011, gadget_id = 70220013, pos = { x = 756.141, y = 325.469, z = 1828.297 }, rot = { x = 0.000, y = 300.453, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 266012, gadget_id = 70300100, pos = { x = 761.676, y = 323.918, z = 1822.810 }, rot = { x = 0.000, y = 99.863, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 266013, gadget_id = 70300100, pos = { x = 771.282, y = 324.130, z = 1824.952 }, rot = { x = 0.000, y = 122.893, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 266014, gadget_id = 70300088, pos = { x = 773.324, y = 324.450, z = 1830.656 }, rot = { x = 359.529, y = 120.212, z = 359.799 }, level = 1, area_id = 6 },
	{ config_id = 266015, gadget_id = 70220013, pos = { x = 772.866, y = 324.295, z = 1832.821 }, rot = { x = 2.178, y = 355.748, z = 352.003 }, level = 1, area_id = 6 },
	{ config_id = 266016, gadget_id = 70300088, pos = { x = 764.539, y = 324.977, z = 1834.868 }, rot = { x = 0.000, y = 66.517, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 266018, gadget_id = 70300084, pos = { x = 760.171, y = 325.363, z = 1833.692 }, rot = { x = 357.826, y = 231.678, z = 12.899 }, level = 1, area_id = 6 },
	{ config_id = 266019, gadget_id = 70220013, pos = { x = 757.173, y = 325.317, z = 1829.921 }, rot = { x = 0.000, y = 310.176, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1266017, name = "ANY_MONSTER_DIE_266017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_266017", action = "action_EVENT_ANY_MONSTER_DIE_266017" }
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
		monsters = { 266001, 266002, 266003, 266004, 266005 },
		gadgets = { 266009, 266010, 266011, 266012, 266013, 266014, 266015, 266016, 266018, 266019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_266017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_266017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_266017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 266007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 266008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 266006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=764, y=324, z=1827}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=764,y=324,z=1827}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end