-- 基础信息
local base_info = {
	group_id = 133105261
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 261001, monster_id = 21010101, pos = { x = 797.426, y = 238.959, z = -223.679 }, rot = { x = 0.000, y = 69.319, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 261002, monster_id = 21010101, pos = { x = 798.558, y = 238.954, z = -224.823 }, rot = { x = 0.000, y = 10.728, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 261003, monster_id = 21020201, pos = { x = 790.469, y = 239.395, z = -224.314 }, rot = { x = 0.000, y = 105.782, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 9 },
	{ config_id = 261004, monster_id = 21030101, pos = { x = 801.538, y = 240.745, z = -222.091 }, rot = { x = 0.000, y = 255.010, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 9 },
	{ config_id = 261005, monster_id = 20011201, pos = { x = 799.010, y = 239.871, z = -222.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 9 },
	{ config_id = 261006, monster_id = 20011201, pos = { x = 799.763, y = 240.205, z = -234.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 9 },
	{ config_id = 261007, monster_id = 21020101, pos = { x = 800.853, y = 239.733, z = -243.077 }, rot = { x = 0.000, y = 357.196, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 261008, monster_id = 21010601, pos = { x = 803.691, y = 240.338, z = -247.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 261009, monster_id = 21010601, pos = { x = 798.929, y = 239.511, z = -247.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 261010, monster_id = 21010601, pos = { x = 801.141, y = 239.935, z = -245.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 261019, monster_id = 21011001, pos = { x = 781.572, y = 244.638, z = -238.117 }, rot = { x = 0.000, y = 55.896, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 261011, gadget_id = 70300102, pos = { x = 799.729, y = 239.278, z = -234.111 }, rot = { x = 6.242, y = 359.823, z = 359.981 }, level = 1, area_id = 9 },
	{ config_id = 261012, gadget_id = 70300102, pos = { x = 798.474, y = 238.498, z = -223.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 261013, gadget_id = 70300087, pos = { x = 799.751, y = 239.743, z = -234.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 261014, gadget_id = 70220005, pos = { x = 803.998, y = 240.746, z = -221.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 261015, gadget_id = 70220005, pos = { x = 805.236, y = 240.746, z = -221.446 }, rot = { x = 0.000, y = 105.802, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 261016, gadget_id = 70300084, pos = { x = 786.208, y = 238.620, z = -249.350 }, rot = { x = 0.000, y = 121.942, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 261017, gadget_id = 70300087, pos = { x = 799.079, y = 238.961, z = -222.919 }, rot = { x = 0.000, y = 24.078, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1261018, name = "ANY_MONSTER_DIE_261018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_261018", action = "action_EVENT_ANY_MONSTER_DIE_261018" }
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
		monsters = { 261001, 261002, 261003, 261004, 261005, 261006, 261019 },
		gadgets = { 261011, 261012, 261013, 261014, 261015, 261016, 261017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_261018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_261018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_261018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=796, y=238, z=-229}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=796,y=238,z=-229}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 261007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 261008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 261009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 261010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end