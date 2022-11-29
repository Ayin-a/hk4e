-- 基础信息
local base_info = {
	group_id = 133303212
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 212001, monster_id = 25210101, pos = { x = -1478.664, y = 243.443, z = 3806.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9505, area_id = 23 },
	{ config_id = 212002, monster_id = 25210303, pos = { x = -1482.979, y = 244.178, z = 3811.744 }, rot = { x = 0.000, y = 139.227, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9001, area_id = 23 },
	{ config_id = 212003, monster_id = 25310301, pos = { x = -1475.104, y = 245.552, z = 3814.687 }, rot = { x = 0.000, y = 231.955, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 9001, area_id = 23 },
	{ config_id = 212005, monster_id = 25210303, pos = { x = -1482.791, y = 246.660, z = 3821.840 }, rot = { x = 0.000, y = 97.109, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 212006, monster_id = 25210402, pos = { x = -1479.863, y = 241.832, z = 3799.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 212007, monster_id = 25210402, pos = { x = -1488.805, y = 241.433, z = 3802.277 }, rot = { x = 0.000, y = 26.653, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 212008, monster_id = 25310201, pos = { x = -1485.114, y = 240.962, z = 3798.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 212009, gadget_id = 70220048, pos = { x = -1471.438, y = 244.044, z = 3806.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 212010, gadget_id = 70220048, pos = { x = -1471.173, y = 243.584, z = 3804.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 212011, gadget_id = 70300092, pos = { x = -1490.624, y = 242.342, z = 3806.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 212012, gadget_id = 70300105, pos = { x = -1469.561, y = 247.057, z = 3818.563 }, rot = { x = 352.419, y = 314.435, z = 11.456 }, level = 1, area_id = 23 },
	{ config_id = 212013, gadget_id = 70310006, pos = { x = -1477.914, y = 244.322, z = 3810.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1212004, name = "ANY_MONSTER_DIE_212004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_212004", action = "action_EVENT_ANY_MONSTER_DIE_212004" }
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
		monsters = { 212001, 212002, 212003, 212005 },
		gadgets = { 212009, 212010, 212011, 212012, 212013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_212004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 212006, 212007, 212008 },
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
function condition_EVENT_ANY_MONSTER_DIE_212004(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_212004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1477, y=244, z=3808}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1477,y=244,z=3808}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303212, 2)
	
	return 0
end