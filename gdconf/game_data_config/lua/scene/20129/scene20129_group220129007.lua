-- 基础信息
local base_info = {
	group_id = 220129007
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
	{ config_id = 7002, gadget_id = 70800214, pos = { x = 333.220, y = 199.816, z = 711.649 }, rot = { x = 0.000, y = 253.475, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 70211121, pos = { x = 334.740, y = 200.012, z = 727.967 }, rot = { x = 0.000, y = 278.891, z = 0.000 }, level = 1, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true },
	{ config_id = 7005, gadget_id = 70800107, pos = { x = 301.823, y = 246.163, z = 726.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7006, gadget_id = 70690037, pos = { x = 264.500, y = 247.100, z = 477.600 }, rot = { x = 358.000, y = 332.000, z = 338.300 }, level = 1 },
	{ config_id = 7007, gadget_id = 70690037, pos = { x = 266.900, y = 249.300, z = 704.600 }, rot = { x = 357.100, y = 331.500, z = 332.400 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7004, shape = RegionShape.SPHERE, radius = 35, pos = { x = 323.411, y = 200.112, z = 723.523 } }
}

-- 触发器
triggers = {
	{ config_id = 1007001, name = "DUNGEON_SETTLE_7001", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_7001", action = "action_EVENT_DUNGEON_SETTLE_7001" },
	{ config_id = 1007004, name = "ENTER_REGION_7004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7004", action = "action_EVENT_ENTER_REGION_7004", trigger_count = 0 }
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
		gadgets = { 7002, 7005, 7006, 7007 },
		regions = { 7004 },
		triggers = { "DUNGEON_SETTLE_7001", "ENTER_REGION_7004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7003 },
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
function condition_EVENT_DUNGEON_SETTLE_7001(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_7001(context, evt)
	-- 创建id为7003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7004(context, evt)
	if evt.param1 ~= 7004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7004(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10082)
	
	return 0
end