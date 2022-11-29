-- 基础信息
local base_info = {
	group_id = 133302162
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162001, monster_id = 25310301, pos = { x = -981.558, y = 210.485, z = 2827.793 }, rot = { x = 0.000, y = 249.809, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, pose_id = 9003, area_id = 24 },
	{ config_id = 162002, monster_id = 25210301, pos = { x = -984.068, y = 210.621, z = 2830.152 }, rot = { x = 0.000, y = 160.186, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9007, area_id = 24 },
	{ config_id = 162003, monster_id = 25210201, pos = { x = -988.714, y = 212.983, z = 2824.630 }, rot = { x = 0.000, y = 232.416, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 24 },
	{ config_id = 162004, monster_id = 25210201, pos = { x = -977.788, y = 210.210, z = 2834.164 }, rot = { x = 0.000, y = 27.357, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 24 },
	{ config_id = 162005, monster_id = 25310101, pos = { x = -993.971, y = 215.045, z = 2826.929 }, rot = { x = 0.000, y = 55.863, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, pose_id = 1, area_id = 24 },
	{ config_id = 162006, monster_id = 25210501, pos = { x = -996.898, y = 215.923, z = 2826.208 }, rot = { x = 0.000, y = 73.749, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162007, gadget_id = 70300105, pos = { x = -984.391, y = 213.282, z = 2817.137 }, rot = { x = 355.013, y = 264.559, z = 349.997 }, level = 27, area_id = 24 },
	{ config_id = 162008, gadget_id = 70300094, pos = { x = -984.748, y = 212.177, z = 2823.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 162009, gadget_id = 70300094, pos = { x = -986.300, y = 212.468, z = 2823.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 162010, gadget_id = 70300093, pos = { x = -989.352, y = 213.213, z = 2827.887 }, rot = { x = 346.931, y = 327.021, z = 334.953 }, level = 27, area_id = 24 },
	{ config_id = 162011, gadget_id = 70310006, pos = { x = -983.365, y = 211.053, z = 2827.232 }, rot = { x = 14.375, y = 358.522, z = 348.176 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1162012, name = "ANY_MONSTER_DIE_162012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162012", action = "action_EVENT_ANY_MONSTER_DIE_162012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1162013, name = "ANY_MONSTER_LIVE_162013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_162013", action = "action_EVENT_ANY_MONSTER_LIVE_162013" }
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
		monsters = { 162001, 162002, 162003, 162004 },
		gadgets = { 162007, 162008, 162009, 162010, 162011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_162012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162012(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 162005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 162006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-971, y=210, z=2829}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-971,y=210,z=2829}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end