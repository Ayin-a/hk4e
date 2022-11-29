-- 基础信息
local base_info = {
	group_id = 133213154
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
	{ config_id = 154001, monster_id = 25080101, pos = { x = -3183.894, y = 200.157, z = -3262.963 }, rot = { x = 0.000, y = 167.236, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1006, area_id = 12 },
	{ config_id = 154002, monster_id = 25080201, pos = { x = -3183.451, y = 200.012, z = -3268.589 }, rot = { x = 0.000, y = 341.392, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1004, area_id = 12 },
	{ config_id = 154007, monster_id = 25080301, pos = { x = -3174.343, y = 200.047, z = -3265.796 }, rot = { x = 0.000, y = 93.829, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 12 },
	{ config_id = 154011, monster_id = 25100201, pos = { x = -3182.827, y = 200.000, z = -3273.989 }, rot = { x = 0.000, y = 327.357, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 154005, gadget_id = 70360063, pos = { x = -3183.086, y = 200.078, z = -3265.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1154009, name = "ANY_MONSTER_DIE_154009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_154009", action = "action_EVENT_ANY_MONSTER_DIE_154009" }
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
		monsters = { 154001, 154002, 154007 },
		gadgets = { 154005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_154009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 154011 },
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
function condition_EVENT_ANY_MONSTER_DIE_154009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_154009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3183.086,y=200.0783,z=-3265.599}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213154, 2)
	
	return 0
end