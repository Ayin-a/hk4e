-- 基础信息
local base_info = {
	group_id = 111102051
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
	{ config_id = 51001, gadget_id = 70380229, pos = { x = 1369.051, y = 324.697, z = -1983.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110200005 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 变量water为1 创建水片
	{ config_id = 1051002, name = "VARIABLE_CHANGE_51002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51002", action = "action_EVENT_VARIABLE_CHANGE_51002" }
}

-- 变量
variables = {
	{ config_id = 1, name = "water", value = 1, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_51002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_51002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"water"为1
	if ScriptLib.GetGroupVariableValue(context, "water") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_51002(context, evt)
	-- 创建id为51001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 51001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end