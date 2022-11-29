-- 基础信息
local base_info = {
	group_id = 220131012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12003, monster_id = 21010201, pos = { x = 93.138, y = 10.530, z = -71.097 }, rot = { x = 0.000, y = 271.158, z = 0.000 }, level = 1, disableWander = true, pose_id = 9016 },
	{ config_id = 12005, monster_id = 21010501, pos = { x = 91.820, y = 10.531, z = -69.008 }, rot = { x = 0.000, y = 235.948, z = 0.000 }, level = 1, disableWander = true, pose_id = 9016 },
	{ config_id = 12006, monster_id = 21010501, pos = { x = 94.402, y = 10.530, z = -73.211 }, rot = { x = 0.000, y = 291.584, z = 0.000 }, level = 1, disableWander = true, pose_id = 9010 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12002, gadget_id = 70310020, pos = { x = 129.169, y = -6.820, z = -51.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
	{ config_id = 12009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 130.287, y = -6.488, z = -52.045 } }
}

-- 触发器
triggers = {
	{ config_id = 1012009, name = "ENTER_REGION_12009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12009", action = "action_EVENT_ENTER_REGION_12009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Start", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 12004, monster_id = 21010201, pos = { x = 90.952, y = 10.532, z = -63.132 }, rot = { x = 0.000, y = 317.054, z = 0.000 }, level = 1, disableWander = true, pose_id = 9016 }
	},
	gadgets = {
		{ config_id = 12001, gadget_id = 70690011, pos = { x = 134.700, y = -8.460, z = -51.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	regions = {
		{ config_id = 12008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 80.000, z = 80.000 }, pos = { x = 88.936, y = 0.787, z = -15.438 } }
	},
	triggers = {
		{ config_id = 1012007, name = "VARIABLE_CHANGE_12007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12007", action = "action_EVENT_VARIABLE_CHANGE_12007" },
		{ config_id = 1012008, name = "ENTER_REGION_12008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12008", action = "" }
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
		monsters = { 12003, 12005, 12006 },
		gadgets = { 12002 },
		regions = { 12009 },
		triggers = { "ENTER_REGION_12009" },
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
function condition_EVENT_ENTER_REGION_12009(context, evt)
	if evt.param1 ~= 12009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 12002, 5, {4,3,2,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end