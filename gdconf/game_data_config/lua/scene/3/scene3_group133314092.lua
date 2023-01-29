-- 基础信息
local base_info = {
	group_id = 133314092
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
	{ config_id = 92001, gadget_id = 71700288, pos = { x = -1137.905, y = 31.300, z = 4482.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 92002, gadget_id = 70950145, pos = { x = -1137.905, y = 31.300, z = 4482.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1092003, name = "GADGET_CREATE_92003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_92003", action = "action_EVENT_GADGET_CREATE_92003" },
	{ config_id = 1092004, name = "SELECT_OPTION_92004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_92004", action = "action_EVENT_SELECT_OPTION_92004" }
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
		gadgets = { 92001, 92002 },
		regions = { },
		triggers = { "GADGET_CREATE_92003", "SELECT_OPTION_92004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_92003(context, evt)
	if 92002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_92003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314092, 92002, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_92004(context, evt)
	-- 判断是gadgetid 92002 option_id 68
	if 92002 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_92004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328122") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133314092 ；指定config：92002；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314092, 92002, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end