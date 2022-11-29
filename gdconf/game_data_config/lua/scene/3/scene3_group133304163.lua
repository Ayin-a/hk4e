-- 基础信息
local base_info = {
	group_id = 133304163
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163002, monster_id = 25210301, pos = { x = -1440.978, y = 267.354, z = 2901.270 }, rot = { x = 0.000, y = 42.428, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9005, area_id = 21 },
	{ config_id = 163003, monster_id = 25310301, pos = { x = -1435.073, y = 267.477, z = 2898.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, pose_id = 9001, area_id = 21 },
	{ config_id = 163005, monster_id = 25210503, pos = { x = -1417.056, y = 268.915, z = 2916.772 }, rot = { x = 0.000, y = 204.777, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 163006, monster_id = 25210503, pos = { x = -1412.873, y = 271.544, z = 2910.935 }, rot = { x = 0.000, y = 256.866, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 163007, monster_id = 25210303, pos = { x = -1418.539, y = 269.264, z = 2910.832 }, rot = { x = 0.000, y = 271.404, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 163008, monster_id = 25210402, pos = { x = -1440.980, y = 267.223, z = 2903.385 }, rot = { x = 0.000, y = 185.042, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9001, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163009, gadget_id = 70300094, pos = { x = -1429.975, y = 267.645, z = 2896.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 163010, gadget_id = 70300094, pos = { x = -1428.328, y = 267.506, z = 2897.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 163011, gadget_id = 70300092, pos = { x = -1422.661, y = 268.710, z = 2905.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 163012, gadget_id = 70300104, pos = { x = -1439.353, y = 267.312, z = 2893.152 }, rot = { x = 0.000, y = 320.277, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 163013, gadget_id = 70220048, pos = { x = -1442.789, y = 266.734, z = 2908.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163004, name = "ANY_MONSTER_DIE_163004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163004", action = "action_EVENT_ANY_MONSTER_DIE_163004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 163001, monster_id = 25210301, pos = { x = -1431.577, y = 267.567, z = 2905.052 }, rot = { x = 0.000, y = 303.783, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9007, area_id = 21 }
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
		monsters = { 163002, 163003, 163008 },
		gadgets = { 163009, 163010, 163011, 163012, 163013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_163004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 163005, 163006, 163007 },
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
function condition_EVENT_ANY_MONSTER_DIE_163004(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_163004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1432, y=267, z=2903}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1432,y=267,z=2903}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304163, 2)
	
	return 0
end