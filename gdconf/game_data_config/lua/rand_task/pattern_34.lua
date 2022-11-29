-- 基础信息
local base_info = {
	group_id = 139999034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 25010301, pos = { x = -3.052, y = 3.054, z = 1.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 2 },
	{ config_id = 34002, monster_id = 25010401, pos = { x = 0.499, y = 3.054, z = 0.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 2 },
	{ config_id = 34003, monster_id = 28060511, pos = { x = -1.472, y = 3.054, z = -2.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", affix = { 5175 }, pose_id = 2, area_id = 2 },
	{ config_id = 34004, monster_id = 25020201, pos = { x = 1.639, y = 3.054, z = -5.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 2 },
	{ config_id = 34005, monster_id = 25020201, pos = { x = -4.973, y = 3.054, z = -4.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 34007, shape = RegionShape.SPHERE, radius = 20, pos = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1034006, name = "ANY_MONSTER_DIE_34006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34006", action = "action_EVENT_ANY_MONSTER_DIE_34006" },
	{ config_id = 1034007, name = "ENTER_REGION_34007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_34007" }
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
		monsters = { 34001, 34002, 34003, 34004, 34005 },
		gadgets = { },
		regions = { 34007 },
		triggers = { "ANY_MONSTER_DIE_34006", "ENTER_REGION_34007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34006(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 34, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_34007(context, evt)
	-- 调用提示id为 400304 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400304) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end