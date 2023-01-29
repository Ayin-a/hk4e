-- 基础信息
local base_info = {
	group_id = 133316080
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
	{ config_id = 80001, gadget_id = 70300203, pos = { x = 933.972, y = 141.940, z = 6362.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 80002, gadget_id = 70360001, pos = { x = 933.972, y = 141.940, z = 6362.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 35 } }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080003, name = "GADGET_CREATE_80003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80003", action = "action_EVENT_GADGET_CREATE_80003" },
	{ config_id = 1080004, name = "SELECT_OPTION_80004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80004", action = "action_EVENT_SELECT_OPTION_80004" }
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
		gadgets = { 80001, 80002 },
		regions = { },
		triggers = { "GADGET_CREATE_80003", "SELECT_OPTION_80004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_80003(context, evt)
	if 80002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316080, 80002, {35}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80004(context, evt)
	-- 判断是gadgetid 80002 option_id 35
	if 80002 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80004(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7325609")
	
	return 0
end