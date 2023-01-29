-- 基础信息
local base_info = {
	group_id = 133316079
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
	{ config_id = 79001, gadget_id = 70300203, pos = { x = 1075.341, y = 143.641, z = 6429.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 79002, gadget_id = 70360001, pos = { x = 1075.362, y = 143.641, z = 6429.023 }, rot = { x = 354.633, y = 359.695, z = 6.502 }, level = 1, worktop_config = { init_options = { 220 } }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1079003, name = "GADGET_CREATE_79003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_79003", action = "action_EVENT_GADGET_CREATE_79003" },
	{ config_id = 1079004, name = "SELECT_OPTION_79004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79004", action = "action_EVENT_SELECT_OPTION_79004" }
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
		gadgets = { 79001, 79002 },
		regions = { },
		triggers = { "GADGET_CREATE_79003", "SELECT_OPTION_79004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_79003(context, evt)
	if 79002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_79003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316079, 79002, {220}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79004(context, evt)
	-- 判断是gadgetid 79002 option_id 220
	if 79002 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79004(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7325608")
	
	return 0
end