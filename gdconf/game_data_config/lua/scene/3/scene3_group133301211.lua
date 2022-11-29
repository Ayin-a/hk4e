-- 基础信息
local base_info = {
	group_id = 133301211
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 211001, monster_id = 26120301, pos = { x = -910.184, y = 206.370, z = 3811.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", isElite = true, pose_id = 101, area_id = 23 },
	{ config_id = 211002, monster_id = 26090701, pos = { x = -915.210, y = 205.656, z = 3807.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 211003, monster_id = 26090701, pos = { x = -915.314, y = 206.941, z = 3812.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 211004, monster_id = 26120101, pos = { x = -918.668, y = 209.010, z = 3817.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", isElite = true, pose_id = 201, area_id = 23 },
	{ config_id = 211005, monster_id = 26090401, pos = { x = -915.323, y = 208.868, z = 3820.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 211006, monster_id = 26090401, pos = { x = -912.246, y = 208.469, z = 3819.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
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
	{ config_id = 1211007, name = "ANY_MONSTER_DIE_211007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_211007", action = "action_EVENT_ANY_MONSTER_DIE_211007" }
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
		monsters = { 211001, 211002, 211003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_211007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 211004, 211005, 211006 },
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
function condition_EVENT_ANY_MONSTER_DIE_211007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_211007(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301211, 2)
	
	return 0
end