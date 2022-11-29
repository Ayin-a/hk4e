-- 基础信息
local base_info = {
	group_id = 133105264
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264001, monster_id = 21030401, pos = { x = 841.632, y = 205.592, z = -37.820 }, rot = { x = 0.000, y = 104.664, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 264002, monster_id = 21011201, pos = { x = 854.628, y = 207.315, z = -43.186 }, rot = { x = 0.000, y = 306.399, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 264003, monster_id = 21011201, pos = { x = 851.978, y = 206.969, z = -38.391 }, rot = { x = 0.000, y = 200.302, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 264005, monster_id = 21011001, pos = { x = 857.413, y = 206.323, z = -26.304 }, rot = { x = 0.000, y = 190.014, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 9 },
	{ config_id = 264006, monster_id = 21020301, pos = { x = 858.344, y = 206.630, z = -29.961 }, rot = { x = 0.000, y = 209.419, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 264007, monster_id = 21011001, pos = { x = 860.707, y = 206.688, z = -27.128 }, rot = { x = 0.000, y = 208.688, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 9 },
	{ config_id = 264008, monster_id = 21011001, pos = { x = 854.477, y = 213.408, z = -47.697 }, rot = { x = 0.000, y = 338.918, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 9 },
	{ config_id = 264009, monster_id = 21011201, pos = { x = 849.129, y = 206.875, z = -43.854 }, rot = { x = 0.000, y = 48.593, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 264004, gadget_id = 70300107, pos = { x = 851.991, y = 206.919, z = -41.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 264011, gadget_id = 70300084, pos = { x = 863.219, y = 209.104, z = -41.394 }, rot = { x = 6.871, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 264012, gadget_id = 70300084, pos = { x = 851.295, y = 206.210, z = -30.488 }, rot = { x = 6.871, y = 282.976, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 264013, gadget_id = 70300084, pos = { x = 837.492, y = 204.321, z = -33.787 }, rot = { x = 2.986, y = 233.859, z = 0.665 }, level = 1, area_id = 9 },
	{ config_id = 264014, gadget_id = 70220013, pos = { x = 858.071, y = 208.773, z = -47.986 }, rot = { x = 12.167, y = 1.042, z = 9.753 }, level = 1, area_id = 9 },
	{ config_id = 264015, gadget_id = 70310001, pos = { x = 854.807, y = 207.002, z = -33.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 264016, gadget_id = 70310001, pos = { x = 860.505, y = 208.242, z = -37.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1264010, name = "ANY_MONSTER_DIE_264010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_264010", action = "action_EVENT_ANY_MONSTER_DIE_264010" }
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
		monsters = { 264001, 264002, 264003, 264008, 264009 },
		gadgets = { 264004, 264011, 264012, 264013, 264014, 264015, 264016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_264010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 264005, 264006, 264007 },
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
function condition_EVENT_ANY_MONSTER_DIE_264010(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) <= 2 then
		return true
	
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_264010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105264, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=853,y=206,z=-31}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=853, y=206, z=-31}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end