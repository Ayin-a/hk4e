-- 基础信息
local base_info = {
	group_id = 133313012
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
	{ config_id = 12001, gadget_id = 70290695, pos = { x = -815.632, y = -241.740, z = 5854.824 }, rot = { x = 0.000, y = 71.593, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 12002, gadget_id = 70950145, pos = { x = -816.102, y = -242.240, z = 5855.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "GADGET_CREATE_12003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12003", action = "action_EVENT_GADGET_CREATE_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "SELECT_OPTION_12004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12004", action = "action_EVENT_SELECT_OPTION_12004", trigger_count = 0 }
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
		gadgets = { 12001, 12002 },
		regions = { },
		triggers = { "GADGET_CREATE_12003", "SELECT_OPTION_12004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_12003(context, evt)
	if 12002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313012, 12002, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12004(context, evt)
	-- 判断是gadgetid 12002 option_id 68
	if 12002 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310322") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133313012 ；指定config：12002；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313012, 12002, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end