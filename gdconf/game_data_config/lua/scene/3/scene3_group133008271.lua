-- 基础信息
local base_info = {
	group_id = 133008271
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 271001, gadget_id = 70211121, pos = { x = 1046.588, y = 456.440, z = -808.486 }, rot = { x = 24.320, y = 228.369, z = 0.606 }, level = 26, drop_tag = "雪山解谜高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 271002, gadget_id = 70211121, pos = { x = 1048.496, y = 454.028, z = -814.731 }, rot = { x = 358.827, y = 113.563, z = 317.320 }, level = 26, drop_tag = "雪山解谜高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 271003, gadget_id = 70211147, pos = { x = 1038.116, y = 446.820, z = -815.850 }, rot = { x = 359.483, y = 3.553, z = 8.266 }, level = 26, chest_drop_id = 2001800, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 271004, gadget_id = 70211121, pos = { x = 1032.640, y = 451.638, z = -817.682 }, rot = { x = 354.453, y = 86.801, z = 350.020 }, level = 26, drop_tag = "雪山解谜高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 271006, gadget_id = 70211111, pos = { x = 1035.619, y = 452.181, z = -807.334 }, rot = { x = 359.553, y = 173.129, z = 352.901 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1271005, name = "GADGET_STATE_CHANGE_271005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_271005", action = "action_EVENT_GADGET_STATE_CHANGE_271005" }
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
	suite = 2,
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
		monsters = { },
		gadgets = { 271001, 271002, 271003, 271004, 271006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_271005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_GADGET_STATE_CHANGE_271005(context, evt)
	if 271003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_271005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300827101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 30080101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end