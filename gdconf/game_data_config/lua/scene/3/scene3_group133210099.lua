-- 基础信息
local base_info = {
	group_id = 133210099
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 20060301, pos = { x = -3601.119, y = 205.803, z = -916.678 }, rot = { x = 0.000, y = 22.199, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 99002, monster_id = 20060301, pos = { x = -3597.721, y = 206.443, z = -917.287 }, rot = { x = 0.000, y = 301.701, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 99003, monster_id = 20060301, pos = { x = -3600.572, y = 205.726, z = -908.870 }, rot = { x = 0.000, y = 193.113, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 99004, monster_id = 20060301, pos = { x = -3604.610, y = 205.843, z = -912.117 }, rot = { x = 0.000, y = 78.521, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 99005, monster_id = 20060101, pos = { x = -3596.219, y = 206.859, z = -912.109 }, rot = { x = 0.000, y = 244.050, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 99006, monster_id = 20060101, pos = { x = -3600.883, y = 206.698, z = -912.872 }, rot = { x = 0.000, y = 230.609, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 }
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
	{ config_id = 1099007, name = "ANY_MONSTER_DIE_99007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99007", action = "action_EVENT_ANY_MONSTER_DIE_99007" }
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
		monsters = { 99001, 99004, 99006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 99002, 99003, 99005 },
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
function condition_EVENT_ANY_MONSTER_DIE_99007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3612.661,y=203.3407,z=-901.6976}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210099, 2)
	
	return 0
end