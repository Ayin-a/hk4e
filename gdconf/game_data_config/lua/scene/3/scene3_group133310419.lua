-- 基础信息
local base_info = {
	group_id = 133310419
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
	{ config_id = 419004, gadget_id = 70330434, pos = { x = -2177.058, y = 153.231, z = 5015.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 1
	{ config_id = 419005, gadget_id = 70690001, pos = { x = -2194.460, y = 174.013, z = 5027.188 }, rot = { x = 0.000, y = 304.347, z = 0.000 }, level = 32, area_id = 27 },
	-- 2
	{ config_id = 419006, gadget_id = 70690001, pos = { x = -2207.996, y = 174.013, z = 5036.437 }, rot = { x = 0.000, y = 304.347, z = 0.000 }, level = 32, area_id = 27 },
	-- 2
	{ config_id = 419007, gadget_id = 70690001, pos = { x = -2223.526, y = 174.013, z = 5047.051 }, rot = { x = 0.000, y = 304.347, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 419001, shape = RegionShape.CYLINDER, radius = 12, pos = { x = -2176.369, y = 168.689, z = 5015.221 }, height = 20.000, area_id = 27 },
	{ config_id = 419002, shape = RegionShape.CYLINDER, radius = 12, pos = { x = -2176.369, y = 168.689, z = 5015.221 }, height = 20.000, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1419001, name = "ENTER_REGION_419001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_419001", action = "action_EVENT_ENTER_REGION_419001", trigger_count = 0 },
	{ config_id = 1419002, name = "LEAVE_REGION_419002", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_419002", trigger_count = 0 },
	-- 延时消除风圈
	{ config_id = 1419003, name = "TIME_AXIS_PASS_419003", event = EventType.EVENT_TIME_AXIS_PASS, source = "leave1", condition = "condition_EVENT_TIME_AXIS_PASS_419003", action = "action_EVENT_TIME_AXIS_PASS_419003", trigger_count = 0 },
	-- 保底移除加速环
	{ config_id = 1419014, name = "GROUP_LOAD_419014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_419014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 419008, gadget_id = 70690001, pos = { x = -2249.695, y = 174.013, z = 5064.932 }, rot = { x = 0.000, y = 304.347, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 419009, gadget_id = 70690001, pos = { x = -2260.350, y = 174.013, z = 5072.213 }, rot = { x = 0.000, y = 290.987, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 419010, gadget_id = 70690001, pos = { x = -2279.985, y = 172.674, z = 5079.745 }, rot = { x = 0.000, y = 290.987, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 419011, gadget_id = 70690001, pos = { x = -2302.484, y = 171.150, z = 5088.376 }, rot = { x = 0.000, y = 290.987, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 419012, gadget_id = 70690001, pos = { x = -2317.950, y = 169.188, z = 5094.309 }, rot = { x = 0.000, y = 290.987, z = 0.000 }, level = 32, area_id = 27 }
	},
	regions = {
		{ config_id = 419013, shape = RegionShape.CUBIC, size = { x = 200.000, y = 50.000, z = 100.000 }, pos = { x = -2228.242, y = 182.018, z = 5048.556 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1419013, name = "LEAVE_REGION_419013", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_419013", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 419004 },
		regions = { 419001, 419002 },
		triggers = { "ENTER_REGION_419001", "LEAVE_REGION_419002", "TIME_AXIS_PASS_419003", "GROUP_LOAD_419014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 419005, 419006, 419007 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_419001(context, evt)
	if evt.param1 ~= 419001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_419001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310419, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_419002(context, evt)
	-- 创建标识为"leave1"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "leave1", {30}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_419003(context, evt)
	if "leave1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_419003(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310419, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_419014(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310419, 2)
	
	return 0
end