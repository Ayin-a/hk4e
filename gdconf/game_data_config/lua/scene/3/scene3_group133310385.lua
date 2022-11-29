-- 基础信息
local base_info = {
	group_id = 133310385
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 385001, monster_id = 26120301, pos = { x = -2426.761, y = 255.092, z = 4193.387 }, rot = { x = 0.000, y = 0.523, z = 0.000 }, level = 1, drop_tag = "大蕈兽", isElite = true, pose_id = 101, area_id = 26 },
	{ config_id = 385002, monster_id = 26090701, pos = { x = -2431.787, y = 254.358, z = 4190.123 }, rot = { x = 0.000, y = 0.523, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 385003, monster_id = 26090701, pos = { x = -2431.891, y = 253.845, z = 4195.035 }, rot = { x = 0.000, y = 0.523, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 385004, monster_id = 26120101, pos = { x = -2435.245, y = 252.970, z = 4199.644 }, rot = { x = 0.000, y = 0.523, z = 0.000 }, level = 1, drop_tag = "大蕈兽", isElite = true, pose_id = 201, area_id = 26 },
	{ config_id = 385005, monster_id = 26090401, pos = { x = -2431.900, y = 253.116, z = 4202.757 }, rot = { x = 0.000, y = 0.523, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 385006, monster_id = 26090401, pos = { x = -2428.823, y = 253.718, z = 4201.876 }, rot = { x = 0.000, y = 0.523, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
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
	{ config_id = 1385007, name = "ANY_MONSTER_DIE_385007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_385007", action = "action_EVENT_ANY_MONSTER_DIE_385007" }
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
		monsters = { 385001, 385002, 385003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_385007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 385004, 385005, 385006 },
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
function condition_EVENT_ANY_MONSTER_DIE_385007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_385007(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310385, 2)
	
	return 0
end