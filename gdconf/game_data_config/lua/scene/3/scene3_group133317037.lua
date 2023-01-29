-- 基础信息
local base_info = {
	group_id = 133317037
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
	{ config_id = 37001, gadget_id = 70360001, pos = { x = 1021.946, y = 420.160, z = 6081.268 }, rot = { x = 7.572, y = 0.534, z = 4.364 }, level = 1, worktop_config = { init_options = { 35 } }, area_id = 30 },
	{ config_id = 37004, gadget_id = 70300203, pos = { x = 1021.940, y = 420.160, z = 6081.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037002, name = "SELECT_OPTION_37002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_37002", action = "action_EVENT_SELECT_OPTION_37002" },
	{ config_id = 1037003, name = "GADGET_CREATE_37003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_37003", action = "action_EVENT_GADGET_CREATE_37003" }
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
		gadgets = { 37001, 37004 },
		regions = { },
		triggers = { "SELECT_OPTION_37002", "GADGET_CREATE_37003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 卸载指定gadget
function TLA_remove_gadget_by_configid(context, evt, group_id, config_id)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, group_id, EntityType.GADGET, config_id ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_37002(context, evt)
	-- 判断是gadgetid 37001 option_id 35
	if 37001 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_37002(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7323523")
	
	TLA_remove_gadget_by_configid(context, evt, 133317037, 37004)
	
	TLA_remove_gadget_by_configid(context, evt, 133317037, 37001)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_37003(context, evt)
	if 37001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_37003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133317037, 37001, {35}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end