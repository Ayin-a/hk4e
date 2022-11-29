-- 基础信息
local base_info = {
	group_id = 166001284
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
	{ config_id = 284001, gadget_id = 70710062, pos = { x = 1114.405, y = 714.754, z = 456.362 }, rot = { x = 336.730, y = 215.813, z = -0.001 }, level = 36, area_id = 300 },
	{ config_id = 284002, gadget_id = 70710062, pos = { x = 1114.601, y = 714.562, z = 456.685 }, rot = { x = 336.730, y = 238.657, z = -0.001 }, level = 36, area_id = 300 },
	{ config_id = 284003, gadget_id = 70360001, pos = { x = 1114.370, y = 714.568, z = 456.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1284004, name = "GADGET_CREATE_284004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_284004", action = "action_EVENT_GADGET_CREATE_284004", trigger_count = 0 },
	{ config_id = 1284005, name = "SELECT_OPTION_284005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_284005", action = "action_EVENT_SELECT_OPTION_284005", trigger_count = 0 }
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
		gadgets = { 284001, 284002, 284003 },
		regions = { },
		triggers = { "GADGET_CREATE_284004", "SELECT_OPTION_284005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_284004(context, evt)
	if 284003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_284004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {215}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_284005(context, evt)
	-- 判断是gadgetid 284003 option_id 215
	if 284003 ~= evt.param1 then
		return false	
	end
	
	if 215 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_284005(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-908, y= 116, z=1771}, radius = 2, rot = {x=0, y=77.86326, z=0},scene_id=3})
	return 0
end