-- 基础信息
local base_info = {
	group_id = 133223298
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 298001, monster_id = 22040101, pos = { x = -6476.805, y = 200.382, z = -2470.310 }, rot = { x = 0.000, y = 305.612, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 298002, monster_id = 22040101, pos = { x = -6483.677, y = 200.175, z = -2479.940 }, rot = { x = 0.000, y = 273.485, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 298003, monster_id = 22040101, pos = { x = -6484.008, y = 200.233, z = -2476.975 }, rot = { x = 0.000, y = 280.783, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 298005, monster_id = 22040101, pos = { x = -6477.396, y = 201.581, z = -2501.047 }, rot = { x = 0.000, y = 324.260, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 298007, monster_id = 22040101, pos = { x = -6462.630, y = 201.613, z = -2475.151 }, rot = { x = 0.000, y = 280.043, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 298008, monster_id = 22050101, pos = { x = -6492.897, y = 200.283, z = -2519.629 }, rot = { x = 0.000, y = 50.480, z = 0.000 }, level = 1, drop_tag = "兽境猎犬", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 }
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
	{ config_id = 1298009, name = "ANY_MONSTER_DIE_298009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_298009", action = "action_EVENT_ANY_MONSTER_DIE_298009" }
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
		monsters = { 298001, 298002, 298003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_298009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 298005, 298007, 298008 },
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
function condition_EVENT_ANY_MONSTER_DIE_298009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_298009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-6476.804,y=200.3321,z=-2470.31}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223298, 2)
	
	return 0
end