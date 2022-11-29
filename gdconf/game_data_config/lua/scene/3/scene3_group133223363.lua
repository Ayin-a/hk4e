-- 基础信息
local base_info = {
	group_id = 133223363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363001, monster_id = 22040101, pos = { x = -5775.147, y = 200.832, z = -2516.705 }, rot = { x = 0.000, y = 305.612, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 363003, monster_id = 22040201, pos = { x = -5777.128, y = 200.875, z = -2515.633 }, rot = { x = 0.000, y = 131.379, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 363005, monster_id = 22040101, pos = { x = -5774.632, y = 200.193, z = -2557.380 }, rot = { x = 0.000, y = 324.260, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 363006, monster_id = 22050101, pos = { x = -5777.070, y = 200.482, z = -2552.137 }, rot = { x = 0.000, y = 350.521, z = 0.000 }, level = 1, drop_tag = "兽境猎犬", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 363007, monster_id = 22040201, pos = { x = -5795.869, y = 200.790, z = -2481.636 }, rot = { x = 0.000, y = 140.937, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 363008, monster_id = 22050201, pos = { x = -5791.390, y = 200.216, z = -2483.867 }, rot = { x = 0.000, y = 133.900, z = 0.000 }, level = 1, drop_tag = "兽境猎犬", pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1363002, name = "ANY_MONSTER_DIE_363002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363002", action = "action_EVENT_ANY_MONSTER_DIE_363002" },
	{ config_id = 1363009, name = "ANY_MONSTER_DIE_363009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363009", action = "action_EVENT_ANY_MONSTER_DIE_363009" }
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
		monsters = { 363001, 363003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 363007, 363008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 363005, 363006 },
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
function condition_EVENT_ANY_MONSTER_DIE_363002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363002(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-5766.738,y=200.0195,z=-2517.204}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223363, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-5766.738,y=200.0195,z=-2517.204}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223363, 2)
	
	return 0
end