-- 基础信息
local base_info = {
	group_id = 220163012
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
	{ config_id = 12001, gadget_id = 70220103, pos = { x = -43.453, y = 77.092, z = -30.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "VARIABLE_CHANGE_12003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12003", action = "action_EVENT_VARIABLE_CHANGE_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "VARIABLE_CHANGE_12004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12004", action = "action_EVENT_VARIABLE_CHANGE_12004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "discSuccess1", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 12006, gadget_id = 70900203, pos = { x = -47.005, y = 84.521, z = -37.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 12008, gadget_id = 70350085, pos = { x = -43.966, y = 76.235, z = -27.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
	},
	regions = {
		{ config_id = 12007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -47.128, y = 83.657, z = -40.141 } },
		{ config_id = 12009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -43.900, y = 75.916, z = -31.571 } }
	},
	triggers = {
		{ config_id = 1012002, name = "VARIABLE_CHANGE_12002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12002", action = "action_EVENT_VARIABLE_CHANGE_12002" },
		{ config_id = 1012005, name = "GADGET_CREATE_12005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12005", action = "action_EVENT_GADGET_CREATE_12005", trigger_count = 0 },
		{ config_id = 1012007, name = "ENTER_REGION_12007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12007", action = "action_EVENT_ENTER_REGION_12007" },
		{ config_id = 1012009, name = "ENTER_REGION_12009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12009", action = "action_EVENT_ENTER_REGION_12009" }
	}
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
		triggers = { "VARIABLE_CHANGE_12003", "VARIABLE_CHANGE_12004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_VARIABLE_CHANGE_12003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"discSuccess1"为0
	if ScriptLib.GetGroupVariableValue(context, "discSuccess1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_12003(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220163012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_12004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"discSuccess1"为1
	if ScriptLib.GetGroupVariableValue(context, "discSuccess1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_12004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220163012, 2)
	
	return 0
end