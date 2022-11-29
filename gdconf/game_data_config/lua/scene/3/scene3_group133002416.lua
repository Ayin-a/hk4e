-- 基础信息
local base_info = {
	group_id = 133002416
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 416001, monster_id = 21011401, pos = { x = 1038.711, y = 338.336, z = -984.340 }, rot = { x = 0.000, y = 198.055, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 416003, monster_id = 21010901, pos = { x = 1037.038, y = 340.235, z = -995.301 }, rot = { x = 0.000, y = 170.939, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 416004, monster_id = 21011401, pos = { x = 1032.495, y = 340.756, z = -999.827 }, rot = { x = 0.000, y = 163.739, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 416005, monster_id = 21010901, pos = { x = 1031.785, y = 339.312, z = -995.449 }, rot = { x = 0.000, y = 158.982, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 416006, monster_id = 21011401, pos = { x = 1034.936, y = 341.263, z = -1000.113 }, rot = { x = 0.000, y = 163.739, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 416009, monster_id = 21030101, pos = { x = 1033.678, y = 340.390, z = -997.018 }, rot = { x = 0.000, y = 168.720, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 416013, monster_id = 21030101, pos = { x = 1035.952, y = 338.315, z = -982.468 }, rot = { x = 0.000, y = 179.323, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 416014, monster_id = 21030501, pos = { x = 1039.298, y = 338.110, z = -982.157 }, rot = { x = 0.000, y = 194.072, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 416015, monster_id = 21011401, pos = { x = 1036.384, y = 338.384, z = -984.318 }, rot = { x = 0.000, y = 173.382, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 416007, gadget_id = 70300081, pos = { x = 1031.993, y = 337.842, z = -990.114 }, rot = { x = 0.000, y = 52.897, z = 0.000 }, level = 1, area_id = 10, is_enable_interact = false },
	{ config_id = 416008, gadget_id = 70300101, pos = { x = 1030.582, y = 339.028, z = -986.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10, is_enable_interact = false },
	{ config_id = 416010, gadget_id = 70220013, pos = { x = 1030.087, y = 337.288, z = -993.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 416011, gadget_id = 70220013, pos = { x = 1028.220, y = 337.215, z = -991.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 416012, gadget_id = 70300075, pos = { x = 1036.660, y = 338.543, z = -987.836 }, rot = { x = 0.000, y = 76.055, z = 0.000 }, level = 1, area_id = 10, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1416002, name = "ANY_MONSTER_DIE_416002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_416002", action = "action_EVENT_ANY_MONSTER_DIE_416002" }
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
		monsters = { 416003, 416004, 416005, 416006, 416009 },
		gadgets = { 416007, 416008, 416010, 416011, 416012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_416002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 416001, 416013, 416014, 416015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_416002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002416) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_416002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002416, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end