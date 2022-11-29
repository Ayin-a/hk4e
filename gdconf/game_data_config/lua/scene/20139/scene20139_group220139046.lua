-- 基础信息
local base_info = {
	group_id = 220139046
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
	{ config_id = 46002, gadget_id = 70360001, pos = { x = 68.063, y = 76.272, z = 59.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 46001, shape = RegionShape.CUBIC, size = { x = 110.000, y = 150.000, z = 110.000 }, pos = { x = 137.219, y = 119.580, z = 23.918 }, vision_type_list = { 201390001 } }
}

-- 触发器
triggers = {
	{ config_id = 1046001, name = "ENTER_REGION_46001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1046003, name = "VARIABLE_CHANGE_46003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_46003", action = "action_EVENT_VARIABLE_CHANGE_46003", trigger_count = 0 },
	{ config_id = 1046004, name = "GROUP_LOAD_46004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_46004", action = "action_EVENT_GROUP_LOAD_46004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "castle", value = 0, no_refresh = true }
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
		gadgets = { 46002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_46003", "GROUP_LOAD_46004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 46001 },
		triggers = { "ENTER_REGION_46001" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_46003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"castle"为1
	if ScriptLib.GetGroupVariableValue(context, "castle") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_46003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220139046, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_46004(context, evt)
	-- 判断变量"castle"为1
	if ScriptLib.GetGroupVariableValue(context, "castle") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_46004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220139046, 2)
	
	return 0
end