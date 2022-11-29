-- 基础信息
local base_info = {
	group_id = 133301203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 25310201, pos = { x = -732.064, y = 246.938, z = 3411.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, pose_id = 9001, area_id = 23 },
	{ config_id = 203002, monster_id = 25210401, pos = { x = -735.105, y = 246.094, z = 3412.022 }, rot = { x = 0.000, y = 85.561, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9503, area_id = 23 },
	{ config_id = 203003, monster_id = 25210401, pos = { x = -735.718, y = 244.478, z = 3417.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 23 },
	{ config_id = 203004, monster_id = 25210401, pos = { x = -740.852, y = 247.437, z = 3406.224 }, rot = { x = 0.000, y = 196.841, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 23 },
	{ config_id = 203005, monster_id = 25310101, pos = { x = -746.232, y = 244.397, z = 3422.127 }, rot = { x = 0.000, y = 144.757, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, pose_id = 1, area_id = 23 },
	{ config_id = 203006, monster_id = 25210101, pos = { x = -745.887, y = 243.668, z = 3424.239 }, rot = { x = 0.000, y = 148.184, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203007, gadget_id = 70300105, pos = { x = -753.647, y = 250.754, z = 3411.630 }, rot = { x = 356.883, y = 180.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 203008, gadget_id = 70300094, pos = { x = -736.628, y = 246.748, z = 3409.167 }, rot = { x = 6.994, y = 359.408, z = 359.107 }, level = 33, area_id = 23 },
	{ config_id = 203009, gadget_id = 70300094, pos = { x = -737.138, y = 247.009, z = 3408.125 }, rot = { x = 0.000, y = 0.000, z = 2.741 }, level = 33, area_id = 23 },
	{ config_id = 203010, gadget_id = 70300093, pos = { x = -741.320, y = 245.094, z = 3416.051 }, rot = { x = 345.829, y = 212.479, z = -0.004 }, level = 33, area_id = 23 },
	{ config_id = 203011, gadget_id = 70310006, pos = { x = -732.555, y = 246.382, z = 3413.147 }, rot = { x = 15.024, y = 2.970, z = 16.474 }, level = 33, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1203012, name = "ANY_MONSTER_DIE_203012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_203012", action = "action_EVENT_ANY_MONSTER_DIE_203012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1203013, name = "ANY_MONSTER_LIVE_203013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_203013", action = "action_EVENT_ANY_MONSTER_LIVE_203013" }
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
		monsters = { 203001, 203002, 203003, 203004 },
		gadgets = { 203007, 203008, 203009, 203010, 203011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_203012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_203012(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_203012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-732, y=246, z=3414}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-732,y=246,z=3414}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end