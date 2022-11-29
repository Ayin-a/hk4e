-- 基础信息
local base_info = {
	group_id = 133008513
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 513001, monster_id = 23010301, pos = { x = 1399.980, y = 271.000, z = -499.419 }, rot = { x = 0.000, y = 314.257, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 513002, monster_id = 23010401, pos = { x = 1397.618, y = 271.161, z = -497.259 }, rot = { x = 0.000, y = 129.199, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 513003, monster_id = 23010101, pos = { x = 1387.463, y = 271.158, z = -502.442 }, rot = { x = 0.000, y = 69.581, z = 0.000 }, level = 1, drop_tag = "先遣队", climate_area_id = 1, area_id = 10 }
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
	{ config_id = 1513004, name = "ANY_MONSTER_DIE_513004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_513004", action = "action_EVENT_ANY_MONSTER_DIE_513004" }
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
		monsters = { 513001, 513002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_513004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 513003 },
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
function condition_EVENT_ANY_MONSTER_DIE_513004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_513004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1403, y=271, z=-495}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1403,y=271,z=-495}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008513, 2)
	
	return 0
end