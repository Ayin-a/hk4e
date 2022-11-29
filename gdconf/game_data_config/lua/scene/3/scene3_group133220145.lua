-- 基础信息
local base_info = {
	group_id = 133220145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145001, monster_id = 23010501, pos = { x = -2443.287, y = 225.901, z = -4193.346 }, rot = { x = 0.000, y = 220.027, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 11 },
	{ config_id = 145003, monster_id = 23010101, pos = { x = -2439.878, y = 226.809, z = -4204.292 }, rot = { x = 0.000, y = 292.283, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 11 },
	{ config_id = 145005, monster_id = 23010401, pos = { x = -2451.242, y = 225.686, z = -4190.349 }, rot = { x = 0.000, y = 165.699, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 11 },
	{ config_id = 145012, monster_id = 23010601, pos = { x = -2442.701, y = 226.513, z = -4202.671 }, rot = { x = 0.000, y = 282.208, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9002, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145004, name = "ANY_MONSTER_DIE_145004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145004", action = "action_EVENT_ANY_MONSTER_DIE_145004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 145002, monster_id = 23010301, pos = { x = -2443.179, y = 225.838, z = -4193.365 }, rot = { x = 0.000, y = 211.998, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 11 }
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
		monsters = { 145001, 145012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_145004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 145003, 145005 },
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
function condition_EVENT_ANY_MONSTER_DIE_145004(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2443.179,y=225.4652,z=-4193.365}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220145, 2)
	
	return 0
end