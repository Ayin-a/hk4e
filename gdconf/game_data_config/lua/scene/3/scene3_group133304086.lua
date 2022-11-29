-- 基础信息
local base_info = {
	group_id = 133304086
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 86001, monster_id = 25020201, pos = { x = -1693.190, y = 254.360, z = 2839.465 }, rot = { x = 0.000, y = 293.027, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9002, area_id = 21 },
	{ config_id = 86002, monster_id = 25020201, pos = { x = -1704.058, y = 256.374, z = 2840.150 }, rot = { x = 0.000, y = 32.471, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9004, area_id = 21 },
	{ config_id = 86003, monster_id = 25010201, pos = { x = -1704.397, y = 255.931, z = 2842.641 }, rot = { x = 0.000, y = 154.914, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9006, area_id = 21 },
	{ config_id = 86004, monster_id = 25010201, pos = { x = -1699.635, y = 254.384, z = 2845.674 }, rot = { x = 0.000, y = 228.135, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9004, area_id = 21 },
	{ config_id = 86005, monster_id = 25030201, pos = { x = -1704.647, y = 254.590, z = 2853.568 }, rot = { x = 0.000, y = 129.562, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 21 },
	{ config_id = 86006, monster_id = 25010201, pos = { x = -1712.038, y = 256.898, z = 2846.812 }, rot = { x = 0.000, y = 132.989, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 86007, gadget_id = 70300105, pos = { x = -1703.072, y = 256.927, z = 2835.895 }, rot = { x = 347.462, y = 269.154, z = 352.039 }, level = 30, area_id = 21 },
	{ config_id = 86008, gadget_id = 70300094, pos = { x = -1696.985, y = 255.466, z = 2836.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 86009, gadget_id = 70300094, pos = { x = -1708.394, y = 257.282, z = 2840.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 86010, gadget_id = 70300093, pos = { x = -1691.758, y = 253.472, z = 2844.129 }, rot = { x = 0.000, y = 321.510, z = 348.181 }, level = 30, area_id = 21 },
	{ config_id = 86011, gadget_id = 70310006, pos = { x = -1700.291, y = 254.997, z = 2842.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086012, name = "ANY_MONSTER_DIE_86012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86012", action = "action_EVENT_ANY_MONSTER_DIE_86012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1086013, name = "ANY_MONSTER_LIVE_86013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_86013", action = "action_EVENT_ANY_MONSTER_LIVE_86013" }
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
		monsters = { 86001, 86002, 86003, 86004 },
		gadgets = { 86007, 86008, 86009, 86010, 86011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86012(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 86005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 86006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1698, y=254, z=2842}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1698.996,y=254.7866,z=2842.884}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end