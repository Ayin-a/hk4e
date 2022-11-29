-- 基础信息
local base_info = {
	group_id = 133104551
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
	{ config_id = 551001, gadget_id = 70360001, pos = { x = 337.165, y = 298.618, z = 725.747 }, rot = { x = 0.000, y = 29.620, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 551002, gadget_id = 70211121, pos = { x = 337.530, y = 298.057, z = 725.692 }, rot = { x = 8.528, y = 36.932, z = 351.584 }, level = 16, chest_drop_id = 2000500, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 551008, shape = RegionShape.SPHERE, radius = 15, pos = { x = 336.730, y = 300.720, z = 726.157 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1551003, name = "GADGET_CREATE_551003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_551003", action = "action_EVENT_GADGET_CREATE_551003", trigger_count = 0 },
	{ config_id = 1551004, name = "SELECT_OPTION_551004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_551004", action = "action_EVENT_SELECT_OPTION_551004" },
	{ config_id = 1551008, name = "ENTER_REGION_551008", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_551008", action = "action_EVENT_ENTER_REGION_551008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "wishIndex", value = 0, no_refresh = true },
	{ config_id = 2, name = "isActive", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 551001 },
		regions = { 551008 },
		triggers = { "GADGET_CREATE_551003", "SELECT_OPTION_551004", "ENTER_REGION_551008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 551002 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_551003(context, evt)
	-- 判断是gadgetid 551001
	if 551001 ~= evt.param1 then
			return false
		end
	
	-- 判断变量"isActive"为0
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_551003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_551004(context, evt)
	if 551001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_551004(context, evt)
	-- 删除指定group： 133104551 ；指定config：551001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104551, 551001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104551") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104551, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_551008(context, evt)
	if evt.param1 ~= 551008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_551008(context, evt)
	-- 调用提示id为 31040515 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040515) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end