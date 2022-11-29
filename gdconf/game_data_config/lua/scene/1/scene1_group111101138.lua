-- 基础信息
local base_info = {
	group_id = 111101138
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
}

-- 区域
regions = {
	{ config_id = 138001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2707.406, y = 194.600, z = -1795.816 } },
	{ config_id = 138002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2651.670, y = 194.600, z = -1815.431 } }
}

-- 触发器
triggers = {
	{ config_id = 1138001, name = "ENTER_REGION_138001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_138001" },
	{ config_id = 1138002, name = "LEAVE_REGION_138002", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_138002" }
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
		gadgets = { },
		regions = { 138001, 138002 },
		triggers = { "ENTER_REGION_138001", "LEAVE_REGION_138002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_138001(context, evt)
	if evt.param4 ~= nil then
		ScriptLib.PrintContextLog(context, "## enter evt.param4 = "..evt.param4)
	else ScriptLib.PrintContextLog(context, "## enter evt.param4 = nil")
	end
	local ret = ScriptLib.GetPlayerVehicleType(context, context.uid)
	ScriptLib.PrintContextLog(context, "## enter vehicle_state = "..ret)
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_138002(context, evt)
	if evt.param4 ~= nil then
		ScriptLib.PrintContextLog(context, "## enter evt.param4 = "..evt.param4)
	else ScriptLib.PrintContextLog(context, "## enter evt.param4 = nil")
	end
	local ret = ScriptLib.GetPlayerVehicleType(context, context.uid)
	ScriptLib.PrintContextLog(context, "## enter vehicle_state = "..ret)
	return 0
end