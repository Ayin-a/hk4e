-- 基础信息
local base_info = {
	group_id = 133008559
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
	{ config_id = 559001, gadget_id = 70950043, pos = { x = 1016.600, y = 545.600, z = -854.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 559002, shape = RegionShape.SPHERE, radius = 150, pos = { x = 1016.600, y = 545.600, z = -854.100 }, area_id = 10 },
	{ config_id = 559003, shape = RegionShape.SPHERE, radius = 150, pos = { x = 1016.600, y = 545.600, z = -854.100 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1559002, name = "ENTER_REGION_559002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_559002", action = "action_EVENT_ENTER_REGION_559002", trigger_count = 0 },
	{ config_id = 1559003, name = "LEAVE_REGION_559003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_559003", action = "action_EVENT_LEAVE_REGION_559003", trigger_count = 0 }
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
		regions = { 559002, 559003 },
		triggers = { "ENTER_REGION_559002", "LEAVE_REGION_559003" },
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
function condition_EVENT_ENTER_REGION_559002(context, evt)
	if evt.param1 ~= 559002 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_559002(context, evt)
	-- 创建id为559001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 559001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_559003(context, evt)
	if evt.param1 ~= 559003 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_559003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008559, EntityType.GADGET, 559001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end