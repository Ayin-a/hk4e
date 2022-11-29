-- 基础信息
local base_info = {
	group_id = 139999033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33001, monster_id = 21010401, pos = { x = 9.504, y = 2.863, z = -0.616 }, rot = { x = 0.000, y = 265.706, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 2 },
	{ config_id = 33002, monster_id = 28060512, pos = { x = 7.266, y = 2.863, z = 2.383 }, rot = { x = 0.000, y = 243.284, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5175 }, pose_id = 2, area_id = 2 },
	{ config_id = 33003, monster_id = 21010201, pos = { x = 5.707, y = 2.863, z = 4.196 }, rot = { x = 0.000, y = 245.382, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9002, area_id = 2 },
	{ config_id = 33004, monster_id = 21010401, pos = { x = 7.595, y = 2.863, z = 5.648 }, rot = { x = 0.000, y = 249.334, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 2 },
	{ config_id = 33005, monster_id = 21020201, pos = { x = 4.968, y = 2.863, z = -0.479 }, rot = { x = 0.000, y = 245.032, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 33007, shape = RegionShape.SPHERE, radius = 20, pos = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1033006, name = "ANY_MONSTER_DIE_33006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33006", action = "action_EVENT_ANY_MONSTER_DIE_33006" },
	{ config_id = 1033007, name = "ENTER_REGION_33007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_33007" }
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
		monsters = { 33001, 33002, 33003, 33004, 33005 },
		gadgets = { },
		regions = { 33007 },
		triggers = { "ANY_MONSTER_DIE_33006", "ENTER_REGION_33007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33006(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 33, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_33007(context, evt)
	-- 调用提示id为 400301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end