-- 基础信息
local base_info = {
	group_id = 133302163
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163001, monster_id = 25310101, pos = { x = -661.121, y = 237.980, z = 2247.948 }, rot = { x = 0.000, y = 174.487, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, pose_id = 9005, area_id = 24 },
	{ config_id = 163002, monster_id = 25210101, pos = { x = -662.867, y = 236.883, z = 2245.745 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9505, area_id = 24 },
	{ config_id = 163003, monster_id = 25210201, pos = { x = -667.770, y = 235.034, z = 2246.608 }, rot = { x = 0.000, y = 295.785, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 24 },
	{ config_id = 163004, monster_id = 25210501, pos = { x = -657.008, y = 240.248, z = 2249.156 }, rot = { x = 0.000, y = 49.126, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 24 },
	{ config_id = 163005, monster_id = 25310301, pos = { x = -667.296, y = 235.296, z = 2249.194 }, rot = { x = 0.000, y = 129.562, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, area_id = 24 },
	{ config_id = 163006, monster_id = 25210101, pos = { x = -669.562, y = 234.156, z = 2249.130 }, rot = { x = 0.000, y = 132.989, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163007, gadget_id = 70300105, pos = { x = -651.973, y = 243.708, z = 2241.210 }, rot = { x = 21.125, y = 259.003, z = 340.909 }, level = 27, area_id = 24 },
	{ config_id = 163008, gadget_id = 70300094, pos = { x = -651.232, y = 243.236, z = 2244.156 }, rot = { x = 10.831, y = 0.000, z = 19.315 }, level = 27, area_id = 24 },
	{ config_id = 163009, gadget_id = 70300094, pos = { x = -650.106, y = 243.440, z = 2245.384 }, rot = { x = 10.831, y = 0.000, z = 19.315 }, level = 27, area_id = 24 },
	{ config_id = 163010, gadget_id = 70300093, pos = { x = -651.513, y = 242.535, z = 2248.067 }, rot = { x = 10.027, y = 325.323, z = 20.948 }, level = 27, area_id = 24 },
	{ config_id = 163011, gadget_id = 70310006, pos = { x = -661.063, y = 237.643, z = 2245.502 }, rot = { x = 0.000, y = 0.000, z = 9.423 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163012, name = "ANY_MONSTER_DIE_163012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163012", action = "action_EVENT_ANY_MONSTER_DIE_163012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1163013, name = "ANY_MONSTER_LIVE_163013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_163013", action = "action_EVENT_ANY_MONSTER_LIVE_163013" }
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
		monsters = { 163001, 163002, 163003, 163004 },
		gadgets = { 163007, 163008, 163009, 163010, 163011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_163012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163012(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_163012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 163005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 163006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-661, y=238, z=2244}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-661,y=238,z=2244}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end