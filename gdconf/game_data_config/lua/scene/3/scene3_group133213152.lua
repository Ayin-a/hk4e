-- 基础信息
local base_info = {
	group_id = 133213152
}

-- Trigger变量
local defs = {
	gadget_id = 0
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 25080101, pos = { x = -3351.983, y = 200.060, z = -3676.521 }, rot = { x = 0.000, y = 252.411, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1006, area_id = 12 },
	{ config_id = 152002, monster_id = 25100101, pos = { x = -3352.412, y = 200.000, z = -3669.157 }, rot = { x = 0.000, y = 134.861, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 12 },
	{ config_id = 152004, monster_id = 25080201, pos = { x = -3348.072, y = 200.286, z = -3679.681 }, rot = { x = 0.000, y = 342.957, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 12 },
	{ config_id = 152005, monster_id = 25080301, pos = { x = -3346.207, y = 200.075, z = -3675.272 }, rot = { x = 0.000, y = 234.022, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1004, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152003, gadget_id = 70360063, pos = { x = -3348.634, y = 200.065, z = -3675.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1152007, name = "ANY_MONSTER_DIE_152007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_152007", action = "action_EVENT_ANY_MONSTER_DIE_152007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = false },
	{ config_id = 2, name = "isSpawn", value = 0, no_refresh = false }
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
		monsters = { 152001, 152004, 152005 },
		gadgets = { 152003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_152007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 152002 },
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
function condition_EVENT_ANY_MONSTER_DIE_152007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_152007(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 0, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3348.634,y=200.0648,z=-3675.596}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213152, 2)
	
	return 0
end