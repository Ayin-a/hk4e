-- 基础信息
local base_info = {
	group_id = 133314321
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 321001, monster_id = 25210101, pos = { x = -293.972, y = 244.081, z = 4235.826 }, rot = { x = 0.000, y = 6.688, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9505, area_id = 32 },
	{ config_id = 321002, monster_id = 25210403, pos = { x = -295.308, y = 244.062, z = 4239.940 }, rot = { x = 0.000, y = 157.264, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9501, area_id = 32 },
	{ config_id = 321003, monster_id = 25310201, pos = { x = -293.278, y = 243.992, z = 4238.784 }, rot = { x = 0.000, y = 249.811, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 9001, area_id = 32 },
	{ config_id = 321004, monster_id = 25210402, pos = { x = -296.794, y = 243.949, z = 4237.171 }, rot = { x = 0.000, y = 77.852, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9503, area_id = 32 },
	{ config_id = 321005, monster_id = 25310301, pos = { x = -289.101, y = 245.779, z = 4242.554 }, rot = { x = 0.000, y = 236.939, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", area_id = 32 },
	{ config_id = 321007, monster_id = 25310101, pos = { x = -287.919, y = 245.795, z = 4239.444 }, rot = { x = 0.000, y = 252.131, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 321009, gadget_id = 70220048, pos = { x = -300.591, y = 241.390, z = 4239.875 }, rot = { x = 358.843, y = 347.560, z = 354.770 }, level = 1, area_id = 32 },
	{ config_id = 321010, gadget_id = 70330396, pos = { x = -304.603, y = 240.233, z = 4240.195 }, rot = { x = 0.890, y = 359.951, z = 353.758 }, level = 1, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 321011, gadget_id = 70330396, pos = { x = -285.345, y = 245.778, z = 4243.338 }, rot = { x = 358.865, y = 0.115, z = 0.374 }, level = 1, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 321012, gadget_id = 70310006, pos = { x = -294.350, y = 243.979, z = 4237.696 }, rot = { x = 0.894, y = 0.069, z = 0.896 }, level = 1, state = GadgetState.GearStart, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1321013, name = "ANY_MONSTER_DIE_321013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_321013", action = "action_EVENT_ANY_MONSTER_DIE_321013" }
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
		monsters = { 321001, 321002, 321003, 321004 },
		gadgets = { 321009, 321010, 321011, 321012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_321013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 321005, 321007 },
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
function condition_EVENT_ANY_MONSTER_DIE_321013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_321013(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-309, y=243, z=4230}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-309,y=243,z=4230}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314321, 2)
	
	return 0
end