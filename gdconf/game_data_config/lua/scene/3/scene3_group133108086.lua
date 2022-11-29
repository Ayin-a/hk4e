-- 基础信息
local base_info = {
	group_id = 133108086
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 86001, monster_id = 21010301, pos = { x = -98.931, y = 202.995, z = -996.945 }, rot = { x = 0.000, y = 333.453, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, area_id = 7 },
	{ config_id = 86002, monster_id = 21011001, pos = { x = -98.036, y = 202.995, z = -998.238 }, rot = { x = 0.000, y = 330.218, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1411 }, pose_id = 32, area_id = 7 },
	{ config_id = 86003, monster_id = 22010101, pos = { x = -102.971, y = 202.919, z = -991.099 }, rot = { x = 0.000, y = 28.086, z = 0.000 }, level = 1, drop_tag = "深渊法师", affix = { 1411 }, area_id = 7 },
	{ config_id = 86004, monster_id = 21010201, pos = { x = -97.103, y = 203.017, z = -987.511 }, rot = { x = 0.000, y = 66.569, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, pose_id = 9011, area_id = 7 },
	{ config_id = 86005, monster_id = 21010201, pos = { x = -109.249, y = 202.947, z = -994.484 }, rot = { x = 0.000, y = 255.737, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, pose_id = 9011, area_id = 7 },
	{ config_id = 86006, monster_id = 21010201, pos = { x = -104.546, y = 202.856, z = -989.370 }, rot = { x = 0.000, y = 169.648, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, area_id = 7 },
	{ config_id = 86007, monster_id = 21010601, pos = { x = -108.193, y = 202.965, z = -985.757 }, rot = { x = 0.000, y = 28.086, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, area_id = 7 },
	{ config_id = 86008, monster_id = 21010301, pos = { x = -99.891, y = 202.995, z = -997.986 }, rot = { x = 0.000, y = 28.086, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, area_id = 7 },
	{ config_id = 86009, monster_id = 21010301, pos = { x = -97.454, y = 202.995, z = -995.149 }, rot = { x = 0.000, y = 28.086, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, area_id = 7 },
	{ config_id = 86010, monster_id = 21010501, pos = { x = -108.019, y = 202.966, z = -983.951 }, rot = { x = 0.000, y = 140.248, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1411 }, pose_id = 32, area_id = 7 },
	{ config_id = 86011, monster_id = 21010601, pos = { x = -105.373, y = 202.910, z = -991.714 }, rot = { x = 0.000, y = 73.338, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1411 }, pose_id = 9011, area_id = 7 },
	{ config_id = 86012, monster_id = 21030301, pos = { x = -97.134, y = 202.995, z = -997.314 }, rot = { x = 358.351, y = 335.143, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1411 }, area_id = 7 },
	{ config_id = 86013, monster_id = 21030301, pos = { x = -107.971, y = 202.976, z = -983.759 }, rot = { x = 0.000, y = 152.594, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1411 }, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 86014, gadget_id = 70220014, pos = { x = -110.110, y = 203.362, z = -999.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86015, gadget_id = 70220014, pos = { x = -96.538, y = 202.902, z = -984.952 }, rot = { x = 357.186, y = 321.922, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86016, gadget_id = 70300086, pos = { x = -111.406, y = 203.469, z = -997.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86017, gadget_id = 70300089, pos = { x = -108.890, y = 202.885, z = -997.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86018, gadget_id = 70300100, pos = { x = -110.772, y = 202.919, z = -995.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86019, gadget_id = 70300100, pos = { x = -95.472, y = 203.224, z = -986.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86020, gadget_id = 70220013, pos = { x = -110.228, y = 202.913, z = -984.690 }, rot = { x = 0.000, y = 141.934, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86021, gadget_id = 70220014, pos = { x = -106.703, y = 202.906, z = -982.822 }, rot = { x = 0.000, y = 156.241, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86022, gadget_id = 70220013, pos = { x = -105.092, y = 202.957, z = -982.387 }, rot = { x = 0.000, y = 94.613, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86023, gadget_id = 70220013, pos = { x = -99.880, y = 202.997, z = -999.772 }, rot = { x = 0.000, y = 17.108, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 86024, gadget_id = 70300100, pos = { x = -104.183, y = 202.909, z = -991.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 86025, shape = RegionShape.SPHERE, radius = 24.4, pos = { x = -99.276, y = 202.947, z = -992.035 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1086025, name = "ENTER_REGION_86025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86025", action = "action_EVENT_ENTER_REGION_86025" },
	{ config_id = 1086026, name = "ANY_MONSTER_DIE_86026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86026", action = "action_EVENT_ANY_MONSTER_DIE_86026" },
	{ config_id = 1086027, name = "ANY_MONSTER_DIE_86027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86027", action = "action_EVENT_ANY_MONSTER_DIE_86027" }
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
		monsters = { 86001, 86002, 86004, 86005, 86010, 86011 },
		gadgets = { 86014, 86015, 86016, 86017, 86018, 86019, 86020, 86021, 86022, 86023, 86024 },
		regions = { 86025 },
		triggers = { "ENTER_REGION_86025", "ANY_MONSTER_DIE_86026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 86006, 86007, 86008, 86009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 86003, 86012, 86013 },
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
function condition_EVENT_ENTER_REGION_86025(context, evt)
	if evt.param1 ~= 86025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_86025(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-99,y=202,z=-992}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110086, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108086, 2)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-105, y=202, z=-995}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-105,y=202,z=-995}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108086, 3)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-105, y=202, z=-995}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-105,y=202,z=-995}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end