-- 基础信息
local base_info = {
	group_id = 199002046
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
	{ config_id = 46002, gadget_id = 70360001, pos = { x = 69.328, y = 138.343, z = -751.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 46001, shape = RegionShape.SPHERE, radius = 80, pos = { x = 68.588, y = 138.132, z = -752.389 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1046001, name = "ENTER_REGION_46001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46001", action = "action_EVENT_ENTER_REGION_46001" },
	{ config_id = 1046003, name = "GADGET_CREATE_46003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46003", action = "action_EVENT_GADGET_CREATE_46003", trigger_count = 0 },
	{ config_id = 1046004, name = "SELECT_OPTION_46004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_46004", action = "action_EVENT_SELECT_OPTION_46004", trigger_count = 0 }
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
		gadgets = { 46002 },
		regions = { 46001 },
		triggers = { "ENTER_REGION_46001", "GADGET_CREATE_46003", "SELECT_OPTION_46004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_46001(context, evt)
	if evt.param1 ~= 46001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46001(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=68.58807,y=138.1316,z=-752.3885}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111017, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46003(context, evt)
	if 46002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002046, 46002, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_46004(context, evt)
	-- 判断是gadgetid 46002 option_id 64
	if 46002 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_46004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902121finished") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end