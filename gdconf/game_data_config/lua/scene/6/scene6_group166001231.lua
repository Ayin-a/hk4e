-- 基础信息
local base_info = {
	group_id = 166001231
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
	{ config_id = 231001, gadget_id = 70310148, pos = { x = 976.204, y = 774.643, z = 320.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 231002, gadget_id = 70360001, pos = { x = 976.150, y = 774.646, z = 320.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1231009, name = "GADGET_CREATE_231009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_231009", action = "action_EVENT_GADGET_CREATE_231009", trigger_count = 0 },
	{ config_id = 1231010, name = "SELECT_OPTION_231010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_231010", action = "action_EVENT_SELECT_OPTION_231010", trigger_count = 0 }
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
		gadgets = { 231001, 231002 },
		regions = { },
		triggers = { "GADGET_CREATE_231009", "SELECT_OPTION_231010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_231009(context, evt)
	if 231002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_231009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001231, 231002, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_231010(context, evt)
	-- 判断是gadgetid 231002 option_id 188
	if 231002 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_231010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001249, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end