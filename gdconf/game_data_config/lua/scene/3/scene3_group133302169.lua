-- 基础信息
local base_info = {
	group_id = 133302169
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169001, monster_id = 23010501, pos = { x = -307.631, y = 248.790, z = 2215.645 }, rot = { x = 0.000, y = 314.257, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 24 },
	{ config_id = 169002, monster_id = 23010601, pos = { x = -309.990, y = 248.290, z = 2217.800 }, rot = { x = 0.000, y = 129.199, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 24 },
	{ config_id = 169003, monster_id = 23010301, pos = { x = -317.437, y = 255.477, z = 2206.227 }, rot = { x = 0.000, y = 42.295, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 169005, gadget_id = 70310001, pos = { x = -317.978, y = 255.085, z = 2214.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 169006, gadget_id = 70310479, pos = { x = -319.039, y = 255.115, z = 2215.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1169004, name = "ANY_MONSTER_DIE_169004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169004", action = "action_EVENT_ANY_MONSTER_DIE_169004" }
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
		monsters = { 169001, 169002 },
		gadgets = { 169005, 169006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_169004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 169003 },
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
function condition_EVENT_ANY_MONSTER_DIE_169004(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-310, y=250, z=2215}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-310,y=250,z=2215}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302169, 2)
	
	return 0
end