-- 基础信息
local base_info = {
	group_id = 133301195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 23010101, pos = { x = -201.876, y = 224.646, z = 3913.315 }, rot = { x = 0.000, y = 314.257, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 22 },
	{ config_id = 195002, monster_id = 23010201, pos = { x = -204.241, y = 224.138, z = 3915.473 }, rot = { x = 0.000, y = 129.199, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 22 },
	{ config_id = 195003, monster_id = 23010501, pos = { x = -211.379, y = 222.672, z = 3901.213 }, rot = { x = 0.000, y = 42.295, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 195005, gadget_id = 70310006, pos = { x = -207.295, y = 224.112, z = 3912.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 195006, gadget_id = 70300104, pos = { x = -210.464, y = 224.047, z = 3909.704 }, rot = { x = 0.000, y = 301.409, z = 0.000 }, level = 1, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1195004, name = "ANY_MONSTER_DIE_195004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_195004", action = "action_EVENT_ANY_MONSTER_DIE_195004" }
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
		monsters = { 195001, 195002 },
		gadgets = { 195005, 195006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_195004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 195003 },
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
function condition_EVENT_ANY_MONSTER_DIE_195004(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_195004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-203, y=224, z=3910}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-203,y=224,z=3910}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301195, 2)
	
	return 0
end