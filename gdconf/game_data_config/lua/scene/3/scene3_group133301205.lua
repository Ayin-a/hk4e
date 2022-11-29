-- 基础信息
local base_info = {
	group_id = 133301205
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 205001, monster_id = 25070101, pos = { x = -242.510, y = 240.538, z = 3779.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 22 },
	{ config_id = 205002, monster_id = 25020201, pos = { x = -244.828, y = 239.782, z = 3781.940 }, rot = { x = 0.000, y = 107.205, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 22 },
	{ config_id = 205003, monster_id = 25010201, pos = { x = -253.513, y = 240.220, z = 3781.150 }, rot = { x = 0.000, y = 247.020, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 2, area_id = 22 },
	{ config_id = 205004, monster_id = 25010201, pos = { x = -238.540, y = 240.628, z = 3787.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 2, area_id = 22 },
	{ config_id = 205005, monster_id = 25030201, pos = { x = -256.682, y = 237.271, z = 3791.304 }, rot = { x = 0.000, y = 129.562, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 22 },
	{ config_id = 205006, monster_id = 25010201, pos = { x = -258.953, y = 237.483, z = 3791.234 }, rot = { x = 0.000, y = 132.989, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 205007, gadget_id = 70300105, pos = { x = -245.077, y = 244.049, z = 3772.538 }, rot = { x = 354.667, y = 272.901, z = 335.760 }, level = 33, area_id = 22 },
	{ config_id = 205008, gadget_id = 70300094, pos = { x = -239.224, y = 241.678, z = 3776.182 }, rot = { x = 19.051, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 205009, gadget_id = 70300094, pos = { x = -240.697, y = 242.026, z = 3775.453 }, rot = { x = 20.004, y = 359.828, z = 356.908 }, level = 33, area_id = 22 },
	{ config_id = 205010, gadget_id = 70300093, pos = { x = -238.043, y = 240.856, z = 3780.827 }, rot = { x = 0.000, y = 321.510, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 205011, gadget_id = 70310006, pos = { x = -243.063, y = 240.243, z = 3781.162 }, rot = { x = 5.412, y = 1.817, z = 18.587 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1205012, name = "ANY_MONSTER_DIE_205012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_205012", action = "action_EVENT_ANY_MONSTER_DIE_205012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1205013, name = "ANY_MONSTER_LIVE_205013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_205013", action = "action_EVENT_ANY_MONSTER_LIVE_205013" }
	}
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
		monsters = { 205001, 205002, 205003, 205004 },
		gadgets = { 205007, 205008, 205009, 205010, 205011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_205012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_205012(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_205012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-243, y=239, z=3783}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-243,y=239,z=3783}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end