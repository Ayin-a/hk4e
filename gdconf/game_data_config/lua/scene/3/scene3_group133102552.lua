-- 基础信息
local base_info = {
	group_id = 133102552
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 552001, monster_id = 21011001, pos = { x = 1318.582, y = 200.000, z = -71.393 }, rot = { x = 0.000, y = 106.393, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1411 }, pose_id = 32, area_id = 5 },
	{ config_id = 552002, monster_id = 21011001, pos = { x = 1332.429, y = 200.521, z = -80.330 }, rot = { x = 0.000, y = 311.704, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1411 }, pose_id = 32, area_id = 5 },
	{ config_id = 552003, monster_id = 22010101, pos = { x = 1312.984, y = 200.216, z = -90.339 }, rot = { x = 0.000, y = 275.279, z = 0.000 }, level = 1, drop_tag = "深渊法师", affix = { 1411 }, area_id = 5 },
	{ config_id = 552004, monster_id = 21010201, pos = { x = 1315.694, y = 200.082, z = -85.278 }, rot = { x = 0.000, y = 1.529, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, pose_id = 9011, area_id = 5 },
	{ config_id = 552005, monster_id = 21010201, pos = { x = 1315.653, y = 200.193, z = -80.227 }, rot = { x = 0.000, y = 196.373, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, pose_id = 9011, area_id = 5 },
	{ config_id = 552006, monster_id = 21010201, pos = { x = 1327.085, y = 200.192, z = -81.549 }, rot = { x = 0.000, y = 275.279, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, pose_id = 402, area_id = 5 },
	{ config_id = 552007, monster_id = 21010701, pos = { x = 1315.911, y = 200.043, z = -88.951 }, rot = { x = 0.000, y = 275.279, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, area_id = 5 },
	{ config_id = 552008, monster_id = 21010301, pos = { x = 1328.737, y = 200.284, z = -80.715 }, rot = { x = 0.000, y = 275.279, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, area_id = 5 },
	{ config_id = 552009, monster_id = 21010301, pos = { x = 1308.796, y = 200.045, z = -93.390 }, rot = { x = 0.000, y = 40.688, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1411 }, area_id = 5 },
	{ config_id = 552010, monster_id = 21030101, pos = { x = 1318.539, y = 200.044, z = -78.255 }, rot = { x = 0.000, y = 201.566, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1411 }, pose_id = 9012, area_id = 5 },
	{ config_id = 552011, monster_id = 21010201, pos = { x = 1307.424, y = 200.058, z = -93.563 }, rot = { x = 0.000, y = 21.009, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1411 }, pose_id = 402, area_id = 5 },
	{ config_id = 552012, monster_id = 21030201, pos = { x = 1319.699, y = 200.257, z = -72.315 }, rot = { x = 0.000, y = 184.295, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1411 }, area_id = 5 },
	{ config_id = 552013, monster_id = 21030201, pos = { x = 1308.139, y = 200.064, z = -94.297 }, rot = { x = 0.000, y = 39.787, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1411 }, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 552014, gadget_id = 70310009, pos = { x = 1308.270, y = 200.926, z = -86.881 }, rot = { x = 0.000, y = 314.181, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 552015, gadget_id = 70220013, pos = { x = 1310.881, y = 200.238, z = -71.404 }, rot = { x = 0.000, y = 317.659, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 552016, gadget_id = 70220013, pos = { x = 1306.048, y = 201.741, z = -82.680 }, rot = { x = 0.000, y = 92.564, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 552017, gadget_id = 70300086, pos = { x = 1318.704, y = 200.175, z = -94.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 552018, gadget_id = 70300088, pos = { x = 1310.346, y = 200.122, z = -96.179 }, rot = { x = 0.000, y = 299.447, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 552019, gadget_id = 70300088, pos = { x = 1322.583, y = 199.825, z = -78.881 }, rot = { x = 0.000, y = 144.626, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 552020, gadget_id = 70220014, pos = { x = 1305.622, y = 201.057, z = -88.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 552021, gadget_id = 70220014, pos = { x = 1305.798, y = 201.352, z = -86.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 552022, shape = RegionShape.SPHERE, radius = 17.7, pos = { x = 1313.333, y = 200.240, z = -82.932 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1552022, name = "ENTER_REGION_552022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_552022", action = "action_EVENT_ENTER_REGION_552022" },
	{ config_id = 1552026, name = "ANY_MONSTER_DIE_552026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_552026", action = "action_EVENT_ANY_MONSTER_DIE_552026" },
	{ config_id = 1552027, name = "ANY_MONSTER_DIE_552027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_552027", action = "action_EVENT_ANY_MONSTER_DIE_552027" }
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
		monsters = { 552001, 552002, 552004, 552005, 552010, 552011 },
		gadgets = { 552014, 552015, 552016, 552017, 552018, 552019, 552020, 552021 },
		regions = { 552022 },
		triggers = { "ENTER_REGION_552022", "ANY_MONSTER_DIE_552026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 552006, 552007, 552008, 552009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_552027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 552003, 552012, 552013 },
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
function condition_EVENT_ENTER_REGION_552022(context, evt)
	if evt.param1 ~= 552022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_552022(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1313,y=200,z=-82}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110086, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_552026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_552026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102552, 2)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1313, y=200, z=-82}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1313,y=200,z=-82}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_552027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_552027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102552, 3)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=131313, y=200, z=-82}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1313,y=200,z=-82}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end