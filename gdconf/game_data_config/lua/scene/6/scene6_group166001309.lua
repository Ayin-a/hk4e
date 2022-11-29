-- 基础信息
local base_info = {
	group_id = 166001309
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
	{ config_id = 309002, gadget_id = 70310004, pos = { x = 370.670, y = 109.222, z = 1245.214 }, rot = { x = 12.991, y = 357.851, z = 354.298 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 309003, gadget_id = 70710397, pos = { x = 368.605, y = 109.345, z = 1245.038 }, rot = { x = 358.476, y = 55.458, z = 3.795 }, level = 36, area_id = 300 },
	{ config_id = 309004, gadget_id = 70950135, pos = { x = 368.349, y = 109.257, z = 1245.999 }, rot = { x = 6.770, y = 90.964, z = 8.266 }, level = 36, area_id = 300 },
	{ config_id = 309005, gadget_id = 70500000, pos = { x = 368.847, y = 109.276, z = 1246.327 }, rot = { x = 0.000, y = 0.000, z = 341.101 }, level = 36, point_type = 9289, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 309007, gadget_id = 70290353, pos = { x = 380.754, y = 106.080, z = 1262.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 309006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 369.651, y = 108.615, z = 1245.672 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1309001, name = "QUEST_FINISH_309001", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_309001" },
	{ config_id = 1309006, name = "ENTER_REGION_309006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_309006" }
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
		monsters = { },
		gadgets = { 309007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 309002, 309003, 309004, 309005, 309007 },
		regions = { 309006 },
		triggers = { "QUEST_FINISH_309001", "ENTER_REGION_309006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_309001(context, evt)
	-- 调用提示id为 60010290 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010290) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_309006(context, evt)
	-- 调用提示id为 60010320 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010320) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end