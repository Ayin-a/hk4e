-- 基础信息
local base_info = {
	group_id = 199001019
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
	{ config_id = 19001, gadget_id = 70360001, pos = { x = 132.628, y = 123.468, z = -165.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	-- enter region后派蒙提示这个海螺是影像海螺
	{ config_id = 19004, shape = RegionShape.SPHERE, radius = 7, pos = { x = 131.710, y = 120.620, z = -169.848 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- gruop创生加载option
	{ config_id = 1019002, name = "GADGET_CREATE_19002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19002", action = "action_EVENT_GADGET_CREATE_19002", trigger_count = 0 },
	-- 调查后删除option，增加任务进度
	{ config_id = 1019003, name = "SELECT_OPTION_19003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19003", action = "action_EVENT_SELECT_OPTION_19003", trigger_count = 0 },
	-- enter region后派蒙提示这个海螺是影像海螺
	{ config_id = 1019004, name = "ENTER_REGION_19004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19004", action = "action_EVENT_ENTER_REGION_19004" }
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
		gadgets = { 19001 },
		regions = { 19004 },
		triggers = { "GADGET_CREATE_19002", "SELECT_OPTION_19003", "ENTER_REGION_19004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_19002(context, evt)
	if 19001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199001019, 19001, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_19003(context, evt)
	-- 判断是gadgetid 19001 option_id 64
	if 19001 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19003(context, evt)
	-- 删除指定group： 199001019 ；指定config：19001；物件身上指定option：64；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199001019, 19001, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "quest7902402finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=132,y=123,z=-165}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111228, pos, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19004(context, evt)
	if evt.param1 ~= 19004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19004(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=131.7,y=120.6,z=-169.8}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111218, pos, 14) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end