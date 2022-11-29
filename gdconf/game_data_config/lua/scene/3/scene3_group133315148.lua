-- 基础信息
local base_info = {
	group_id = 133315148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148001, monster_id = 25310101, pos = { x = 170.271, y = 287.244, z = 2479.567 }, rot = { x = 0.000, y = 299.770, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, pose_id = 9001, area_id = 20 },
	{ config_id = 148002, monster_id = 25210201, pos = { x = 166.817, y = 286.386, z = 2482.747 }, rot = { x = 0.000, y = 128.627, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9501, area_id = 20 },
	{ config_id = 148003, monster_id = 25210301, pos = { x = 161.752, y = 286.549, z = 2476.190 }, rot = { x = 0.000, y = 246.489, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 },
	{ config_id = 148004, monster_id = 25210301, pos = { x = 172.051, y = 288.889, z = 2471.169 }, rot = { x = 0.000, y = 155.444, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 },
	{ config_id = 148005, monster_id = 25310301, pos = { x = 181.224, y = 290.477, z = 2472.341 }, rot = { x = 0.000, y = 313.898, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, area_id = 20 },
	{ config_id = 148006, monster_id = 25210501, pos = { x = 180.623, y = 290.468, z = 2470.683 }, rot = { x = 0.000, y = 327.154, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 148007, gadget_id = 70300105, pos = { x = 169.705, y = 286.698, z = 2491.565 }, rot = { x = 10.315, y = 313.008, z = 4.714 }, level = 27, area_id = 20 },
	{ config_id = 148008, gadget_id = 70300094, pos = { x = 159.791, y = 284.435, z = 2491.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 148009, gadget_id = 70300094, pos = { x = 161.427, y = 284.870, z = 2492.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 148010, gadget_id = 70300093, pos = { x = 167.746, y = 288.057, z = 2472.227 }, rot = { x = 0.000, y = 321.510, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 148011, gadget_id = 70310006, pos = { x = 168.762, y = 286.459, z = 2480.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1148012, name = "ANY_MONSTER_DIE_148012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148012", action = "action_EVENT_ANY_MONSTER_DIE_148012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1148013, name = "ANY_MONSTER_LIVE_148013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_148013", action = "action_EVENT_ANY_MONSTER_LIVE_148013" }
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
		monsters = { 148001, 148002, 148003, 148004 },
		gadgets = { 148007, 148008, 148009, 148010, 148011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148012(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 148005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 148006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=168, y=286, z=2482}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=168,y=286,z=2482}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end