-- 基础信息
local base_info = {
	group_id = 133103652
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
	{ config_id = 652001, gadget_id = 70710295, pos = { x = 623.505, y = 210.203, z = 1297.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6, is_enable_interact = false },
	{ config_id = 652003, gadget_id = 70360001, pos = { x = 623.505, y = 208.823, z = 1297.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1652002, name = "QUEST_START_652002", event = EventType.EVENT_QUEST_START, source = "7182109", condition = "", action = "action_EVENT_QUEST_START_652002" },
	{ config_id = 1652004, name = "SELECT_OPTION_652004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_652004", action = "action_EVENT_SELECT_OPTION_652004" }
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
		gadgets = { 652001, 652003 },
		regions = { },
		triggers = { "QUEST_START_652002", "SELECT_OPTION_652004" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_652002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103652, 652003, {71821}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_652004(context, evt)
	-- 判断是gadgetid 652003 option_id 71821
	if 652003 ~= evt.param1 then
		return false	
	end
	
	if 71821 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_652004(context, evt)
	-- 删除指定group： 133103652 ；指定config：652003；物件身上指定option：71821；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103652, 652003, 71821) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 652001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7182109") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end