-- 基础信息
local base_info = {
	group_id = 133104402
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 402001, monster_id = 21011201, pos = { x = 832.506, y = 226.584, z = 743.433 }, rot = { x = 5.271, y = 214.501, z = 5.119 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 402002, monster_id = 21011201, pos = { x = 827.496, y = 226.391, z = 745.265 }, rot = { x = 355.941, y = 183.673, z = 353.503 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 402003, monster_id = 21011201, pos = { x = 826.722, y = 226.298, z = 751.603 }, rot = { x = 350.735, y = 16.318, z = 0.061 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 402005, monster_id = 20011301, pos = { x = 822.934, y = 226.310, z = 759.516 }, rot = { x = 2.688, y = 194.058, z = 4.432 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 402007, monster_id = 21020301, pos = { x = 811.802, y = 224.726, z = 740.283 }, rot = { x = 349.511, y = 58.647, z = 358.109 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 402008, monster_id = 21020301, pos = { x = 810.452, y = 224.825, z = 740.105 }, rot = { x = 357.546, y = 62.697, z = 1.408 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 402009, monster_id = 21011201, pos = { x = 811.436, y = 224.785, z = 741.786 }, rot = { x = 359.855, y = 62.861, z = 3.684 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 402010, monster_id = 21011201, pos = { x = 810.848, y = 224.817, z = 742.373 }, rot = { x = 1.798, y = 54.214, z = 354.021 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 402011, monster_id = 21011201, pos = { x = 810.954, y = 224.863, z = 743.667 }, rot = { x = 355.101, y = 75.291, z = 4.169 }, level = 1, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 402015, gadget_id = 70300089, pos = { x = 827.176, y = 226.494, z = 742.943 }, rot = { x = 1.585, y = 100.382, z = 3.414 }, level = 1, isOneoff = true, area_id = 6 },
	{ config_id = 402016, gadget_id = 70300089, pos = { x = 831.195, y = 226.608, z = 741.724 }, rot = { x = 5.446, y = 73.045, z = 1.631 }, level = 1, isOneoff = true, area_id = 6 },
	{ config_id = 402017, gadget_id = 70300089, pos = { x = 827.682, y = 226.520, z = 753.891 }, rot = { x = 357.491, y = 109.019, z = 356.302 }, level = 1, isOneoff = true, area_id = 6 },
	{ config_id = 402020, gadget_id = 70220005, pos = { x = 838.784, y = 226.695, z = 741.394 }, rot = { x = 356.424, y = 0.252, z = 359.984 }, level = 1, area_id = 6 },
	{ config_id = 402021, gadget_id = 70220005, pos = { x = 822.087, y = 225.788, z = 742.347 }, rot = { x = 359.257, y = 359.460, z = 15.716 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1402022, name = "ANY_MONSTER_DIE_402022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_402022", action = "action_EVENT_ANY_MONSTER_DIE_402022" }
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
		-- description = suite_1,
		monsters = { 402001, 402002, 402003, 402005, 402007 },
		gadgets = { 402015, 402016, 402017, 402020, 402021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_402022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 402008, 402009, 402010, 402011 },
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
function condition_EVENT_ANY_MONSTER_DIE_402022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_402022(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=817, y=225, z=748}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104402, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=817,y=225,z=748}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end