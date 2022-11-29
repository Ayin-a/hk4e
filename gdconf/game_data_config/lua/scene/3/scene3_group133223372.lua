-- 基础信息
local base_info = {
	group_id = 133223372
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
	{ config_id = 372001, gadget_id = 70230051, pos = { x = -6141.527, y = 200.745, z = -2594.178 }, rot = { x = 0.000, y = 24.824, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 372002, gadget_id = 70230053, pos = { x = -6134.235, y = 200.713, z = -2594.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 372003, gadget_id = 70230056, pos = { x = -6130.625, y = 200.982, z = -2583.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 372004, gadget_id = 70230057, pos = { x = -6137.527, y = 201.106, z = -2578.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 372005, gadget_id = 70230054, pos = { x = -6145.504, y = 200.664, z = -2583.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1372006, name = "VARIABLE_CHANGE_372006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_372006", action = "action_EVENT_VARIABLE_CHANGE_372006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "Decal_Start", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		triggers = { "VARIABLE_CHANGE_372006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 372001, 372002, 372003, 372004, 372005 },
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
function condition_EVENT_VARIABLE_CHANGE_372006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Decal_Start"为1
	if ScriptLib.GetGroupVariableValue(context, "Decal_Start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_372006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223372, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end