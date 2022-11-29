-- 基础信息
local base_info = {
	group_id = 133210287
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 287001, monster_id = 20060201, pos = { x = -3982.463, y = 214.752, z = -697.708 }, rot = { x = 0.000, y = 303.286, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 287002, monster_id = 20060201, pos = { x = -3991.887, y = 216.787, z = -678.883 }, rot = { x = 0.000, y = 244.771, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 287003, monster_id = 20060201, pos = { x = -3993.764, y = 216.136, z = -692.902 }, rot = { x = 0.000, y = 26.578, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 287004, monster_id = 20060201, pos = { x = -3988.877, y = 218.154, z = -657.191 }, rot = { x = 0.000, y = 78.521, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 287005, monster_id = 20060301, pos = { x = -3976.696, y = 214.883, z = -692.880 }, rot = { x = 0.000, y = 315.031, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 287006, monster_id = 20060301, pos = { x = -3990.908, y = 216.896, z = -672.679 }, rot = { x = 0.000, y = 54.537, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 }
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
	{ config_id = 1287007, name = "ANY_MONSTER_DIE_287007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287007", action = "action_EVENT_ANY_MONSTER_DIE_287007" }
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
		monsters = { 287004, 287005, 287006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_287007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 287001, 287002, 287003 },
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
function condition_EVENT_ANY_MONSTER_DIE_287007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_287007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3976.696,y=214.883,z=-692.8798}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210287, 2)
	
	return 0
end