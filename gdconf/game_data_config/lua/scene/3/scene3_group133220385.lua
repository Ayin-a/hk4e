-- 基础信息
local base_info = {
	group_id = 133220385
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
	{ config_id = 385001, gadget_id = 70290095, pos = { x = -2466.009, y = 373.794, z = -4409.968 }, rot = { x = 0.000, y = 303.953, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 385002, gadget_id = 70330064, pos = { x = -2438.688, y = 402.255, z = -4440.077 }, rot = { x = 0.000, y = 23.910, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 385003, gadget_id = 70290095, pos = { x = -2471.060, y = 373.794, z = -4417.469 }, rot = { x = 0.000, y = 303.953, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 385007, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2474.376, y = 375.632, z = -4406.785 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1385007, name = "ENTER_REGION_385007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_385007", action = "action_EVENT_ENTER_REGION_385007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 385004, gadget_id = 70950047, pos = { x = -2471.169, y = 386.146, z = -4418.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 385005, gadget_id = 70950047, pos = { x = -2467.833, y = 386.146, z = -4413.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 385006, gadget_id = 70950047, pos = { x = -2466.240, y = 386.146, z = -4410.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
		gadgets = { 385001, 385002, 385003 },
		regions = { 385007 },
		triggers = { "ENTER_REGION_385007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_385007(context, evt)
	if evt.param1 ~= 385007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_385007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 385001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 385003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end