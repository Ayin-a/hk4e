-- 基础信息
local base_info = {
	group_id = 133304161
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161005, monster_id = 25210303, pos = { x = -1318.676, y = 261.498, z = 2948.460 }, rot = { x = 0.000, y = 129.889, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 161006, monster_id = 25210302, pos = { x = -1304.700, y = 262.464, z = 2946.604 }, rot = { x = 0.000, y = 171.685, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9005, area_id = 21 },
	{ config_id = 161007, monster_id = 25210302, pos = { x = -1302.197, y = 264.023, z = 2941.884 }, rot = { x = 0.000, y = 275.959, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9005, area_id = 21 },
	{ config_id = 161009, monster_id = 25310201, pos = { x = -1310.744, y = 263.596, z = 2939.527 }, rot = { x = 0.000, y = 144.463, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 9001, area_id = 21 },
	{ config_id = 161010, monster_id = 25210402, pos = { x = -1315.327, y = 261.641, z = 2949.998 }, rot = { x = 0.000, y = 149.656, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 161011, monster_id = 25210402, pos = { x = -1320.977, y = 261.718, z = 2945.865 }, rot = { x = 0.000, y = 111.456, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 161001, gadget_id = 70300094, pos = { x = -1300.608, y = 265.129, z = 2935.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 161002, gadget_id = 70300094, pos = { x = -1299.502, y = 264.789, z = 2936.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 161003, gadget_id = 70300092, pos = { x = -1316.261, y = 262.628, z = 2941.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 161012, gadget_id = 70300105, pos = { x = -1305.907, y = 265.650, z = 2930.236 }, rot = { x = 0.942, y = 68.520, z = 7.076 }, level = 1, area_id = 21 },
	{ config_id = 161013, gadget_id = 70310004, pos = { x = -1306.844, y = 264.389, z = 2938.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161004, name = "ANY_MONSTER_DIE_161004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_161004", action = "action_EVENT_ANY_MONSTER_DIE_161004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 161008, monster_id = 25210501, pos = { x = -1311.984, y = 264.507, z = 2935.218 }, rot = { x = 0.000, y = 24.180, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9504, area_id = 21 }
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
		monsters = { 161006, 161007, 161009 },
		gadgets = { 161001, 161002, 161003, 161012, 161013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_161004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 161005, 161010, 161011 },
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
function condition_EVENT_ANY_MONSTER_DIE_161004(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_161004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1302, y=265, z=2935}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1302,y=265,z=2935}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304161, 2)
	
	return 0
end