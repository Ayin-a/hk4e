-- 基础信息
local base_info = {
	group_id = 133217036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 20060201, pos = { x = -4449.682, y = 234.842, z = -3953.872 }, rot = { x = 0.000, y = 69.683, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
	{ config_id = 36002, monster_id = 20060201, pos = { x = -4461.938, y = 235.923, z = -3951.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
	{ config_id = 36003, monster_id = 20060301, pos = { x = -4467.349, y = 232.534, z = -3939.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
	{ config_id = 36004, monster_id = 20060301, pos = { x = -4455.050, y = 236.710, z = -3959.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
	{ config_id = 36005, monster_id = 20060101, pos = { x = -4454.904, y = 234.348, z = -3947.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
	{ config_id = 36006, monster_id = 20060101, pos = { x = -4432.944, y = 234.765, z = -3945.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 }
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
	{ config_id = 1036007, name = "ANY_MONSTER_DIE_36007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36007", action = "action_EVENT_ANY_MONSTER_DIE_36007" }
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
		monsters = { 36003, 36004, 36005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 36001, 36002, 36006 },
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
function condition_EVENT_ANY_MONSTER_DIE_36007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-4454.904,y=234.348,z=-3947.461}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217036, 2)
	
	return 0
end