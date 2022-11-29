-- 基础信息
local base_info = {
	group_id = 133302555
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
	{ config_id = 555002, gadget_id = 70360286, pos = { x = -384.026, y = 283.429, z = 2843.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1555001, name = "SELECT_OPTION_555001", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_555001", action = "action_EVENT_SELECT_OPTION_555001", trigger_count = 0 },
	{ config_id = 1555003, name = "GADGET_CREATE_555003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_555003", action = "action_EVENT_GADGET_CREATE_555003", trigger_count = 0 }
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
		gadgets = { 555002 },
		regions = { },
		triggers = { "SELECT_OPTION_555001", "GADGET_CREATE_555003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_555001(context, evt)
	-- 判断是gadgetid 555002 option_id 787
	if 555002 ~= evt.param1 then
		return false	
	end
	
	if 787 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_555001(context, evt)
	-- 删除指定group： 133302555 ；指定config：555002；物件身上指定option：787；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302555, 555002, 787) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133302555") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_555003(context, evt)
	if 555002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_555003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302555, 555002, {787}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end