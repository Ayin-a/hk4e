-- 基础信息
local base_info = {
	group_id = 133223277
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277001, monster_id = 22040201, pos = { x = -6014.917, y = 200.624, z = -3245.823 }, rot = { x = 0.000, y = 87.107, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 18 },
	{ config_id = 277002, monster_id = 22040201, pos = { x = -6010.297, y = 200.301, z = -3248.433 }, rot = { x = 0.000, y = 319.645, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 18 },
	{ config_id = 277003, monster_id = 22040201, pos = { x = -6010.965, y = 200.287, z = -3242.315 }, rot = { x = 0.000, y = 204.705, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 18 },
	{ config_id = 277005, monster_id = 22040201, pos = { x = -6017.488, y = 200.417, z = -3233.004 }, rot = { x = 0.000, y = 159.976, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 18 },
	{ config_id = 277006, monster_id = 22040201, pos = { x = -6015.964, y = 200.656, z = -3255.558 }, rot = { x = 0.000, y = 33.564, z = 0.000 }, level = 1, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 18 },
	{ config_id = 277008, monster_id = 22050201, pos = { x = -6021.791, y = 201.928, z = -3242.650 }, rot = { x = 0.000, y = 94.757, z = 0.000 }, level = 1, drop_tag = "兽境猎犬", disableWander = true, pose_id = 101, area_id = 18 }
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
	{ config_id = 1277009, name = "ANY_MONSTER_DIE_277009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_277009", action = "action_EVENT_ANY_MONSTER_DIE_277009" }
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
		monsters = { 277001, 277002, 277003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_277009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 277005, 277006, 277008 },
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
function condition_EVENT_ANY_MONSTER_DIE_277009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_277009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-6013.359,y=200.2417,z=-3256.829}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223277, 2)
	
	return 0
end