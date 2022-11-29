-- 基础信息
local base_info = {
	group_id = 133309670
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 670001, monster_id = 25210101, pos = { x = -2535.129, y = 142.442, z = 5164.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9505, area_id = 27 },
	{ config_id = 670002, monster_id = 25210303, pos = { x = -2536.492, y = 142.345, z = 5174.774 }, rot = { x = 0.000, y = 139.172, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9001, area_id = 27 },
	{ config_id = 670003, monster_id = 25310301, pos = { x = -2530.202, y = 142.533, z = 5171.931 }, rot = { x = 0.000, y = 232.009, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 9001, area_id = 27 },
	{ config_id = 670004, monster_id = 25210303, pos = { x = -2539.577, y = 142.377, z = 5170.905 }, rot = { x = 0.000, y = 97.096, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 670005, monster_id = 25210402, pos = { x = -2528.050, y = 142.408, z = 5155.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 670006, monster_id = 25210402, pos = { x = -2539.228, y = 142.610, z = 5156.326 }, rot = { x = 0.000, y = 26.631, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 670007, monster_id = 25310201, pos = { x = -2522.138, y = 142.081, z = 5158.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 670008, gadget_id = 70220048, pos = { x = -2522.097, y = 142.485, z = 5173.836 }, rot = { x = 0.016, y = 0.202, z = 355.533 }, level = 1, area_id = 27 },
	{ config_id = 670009, gadget_id = 70220048, pos = { x = -2521.310, y = 142.413, z = 5171.598 }, rot = { x = 358.843, y = 347.560, z = 354.770 }, level = 1, area_id = 27 },
	{ config_id = 670010, gadget_id = 70330396, pos = { x = -2524.399, y = 142.531, z = 5179.351 }, rot = { x = 0.890, y = 359.951, z = 353.758 }, level = 1, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 670011, gadget_id = 70330396, pos = { x = -2533.559, y = 142.225, z = 5149.663 }, rot = { x = 358.865, y = 0.115, z = 0.374 }, level = 1, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 670012, gadget_id = 70310006, pos = { x = -2534.552, y = 142.430, z = 5168.517 }, rot = { x = 0.894, y = 0.069, z = 0.896 }, level = 1, state = GadgetState.GearStart, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1670013, name = "ANY_MONSTER_DIE_670013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_670013", action = "action_EVENT_ANY_MONSTER_DIE_670013" }
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
		monsters = { 670001, 670002, 670003, 670004 },
		gadgets = { 670008, 670009, 670010, 670011, 670012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_670013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 670005, 670006, 670007 },
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
function condition_EVENT_ANY_MONSTER_DIE_670013(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_670013(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2534, y=142, z=5166}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2534,y=142,z=5166}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309670, 2)
	
	return 0
end