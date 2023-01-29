-- 基础信息
local base_info = {
	group_id = 133314089
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
	{ config_id = 89001, gadget_id = 71700288, pos = { x = -862.926, y = -12.252, z = 4688.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 89002, gadget_id = 70950145, pos = { x = -862.926, y = -12.252, z = 4688.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089003, name = "GADGET_CREATE_89003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_89003", action = "action_EVENT_GADGET_CREATE_89003" },
	{ config_id = 1089004, name = "SELECT_OPTION_89004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_89004", action = "action_EVENT_SELECT_OPTION_89004" }
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
		gadgets = { 89001, 89002 },
		regions = { },
		triggers = { "GADGET_CREATE_89003", "SELECT_OPTION_89004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_89003(context, evt)
	if 89002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_89003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314089, 89002, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_89004(context, evt)
	-- 判断是gadgetid 89002 option_id 64
	if 89002 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_89004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328113") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133314089 ；指定config：89002；物件身上指定option：64；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314089, 89002, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end