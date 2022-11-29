-- 基础信息
local base_info = {
	group_id = 133105265
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265001, monster_id = 25010501, pos = { x = 875.801, y = 272.981, z = -206.041 }, rot = { x = 0.000, y = 349.076, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9004, area_id = 9 },
	{ config_id = 265002, monster_id = 25010501, pos = { x = 878.352, y = 272.303, z = -200.291 }, rot = { x = 0.000, y = 68.108, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9003, area_id = 9 },
	{ config_id = 265003, monster_id = 25060101, pos = { x = 874.116, y = 272.648, z = -201.803 }, rot = { x = 0.000, y = 297.288, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9006, area_id = 9 },
	{ config_id = 265004, monster_id = 25010201, pos = { x = 872.629, y = 272.610, z = -201.295 }, rot = { x = 0.000, y = 112.900, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9006, area_id = 9 },
	{ config_id = 265005, monster_id = 25020201, pos = { x = 866.877, y = 273.884, z = -205.905 }, rot = { x = 0.000, y = 39.567, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 2, area_id = 9 },
	{ config_id = 265006, monster_id = 25070101, pos = { x = 861.923, y = 275.278, z = -206.618 }, rot = { x = 0.000, y = 44.267, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 9 },
	{ config_id = 265007, monster_id = 25030301, pos = { x = 859.374, y = 275.588, z = -204.619 }, rot = { x = 0.000, y = 57.125, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 9 },
	{ config_id = 265008, monster_id = 25010301, pos = { x = 860.547, y = 276.017, z = -208.032 }, rot = { x = 0.000, y = 57.125, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 9 },
	{ config_id = 265009, monster_id = 25010301, pos = { x = 857.708, y = 276.493, z = -206.867 }, rot = { x = 0.000, y = 57.125, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 9 }
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
	{ config_id = 1265010, name = "ANY_MONSTER_DIE_265010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_265010", action = "action_EVENT_ANY_MONSTER_DIE_265010" }
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
		monsters = { 265001, 265002, 265003, 265004, 265005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_265010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 265006, 265007, 265008, 265009 },
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
function condition_EVENT_ANY_MONSTER_DIE_265010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_265010(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=869,y=272,z=-199}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=869, y=272, z=-199}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105265, 2)
	
	return 0
end