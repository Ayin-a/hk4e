-- 基础信息
local base_info = {
	group_id = 133107192
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
	{ config_id = 192001, gadget_id = 70360189, pos = { x = -733.274, y = 301.685, z = 575.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 192002, gadget_id = 70300118, pos = { x = -732.418, y = 301.540, z = 575.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192003, name = "GADGET_CREATE_192003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_192003", action = "action_EVENT_GADGET_CREATE_192003", trigger_count = 0 },
	{ config_id = 1192004, name = "SELECT_OPTION_192004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_192004", action = "action_EVENT_SELECT_OPTION_192004" }
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
		gadgets = { 192001, 192002 },
		regions = { },
		triggers = { "GADGET_CREATE_192003", "SELECT_OPTION_192004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_192003(context, evt)
	if 192001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_192003(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, 133107192, 192001, {99})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_192004(context, evt)
	-- 判断是gadgetid 192001 option_id 99
	if 192001 ~= evt.param1 then
		return false	
	end
	
	if 99 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_192004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q2103703") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133107192 ；指定config：192001；物件身上指定option：99；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107192, 192001, 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107192, EntityType.GADGET, 192001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107192, EntityType.GADGET, 192002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end