-- 基础信息
local base_info = {
	group_id = 133308265
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
	{ config_id = 265003, gadget_id = 70330407, pos = { x = -2337.397, y = 59.241, z = 4455.343 }, rot = { x = 0.000, y = 133.797, z = 0.000 }, level = 32, server_global_value_config = {SGV_BulletType = 0}, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 265002, shape = RegionShape.POLYGON, pos = { x = -2339.287, y = 59.725, z = 4458.869 }, height = 41.351, point_array = { { x = -2357.850, y = 4449.029 }, { x = -2349.404, y = 4440.223 }, { x = -2320.723, y = 4468.608 }, { x = -2329.148, y = 4477.515 } }, area_id = 26 },
	{ config_id = 265004, shape = RegionShape.POLYGON, pos = { x = -2339.287, y = 59.725, z = 4458.869 }, height = 41.351, point_array = { { x = -2357.850, y = 4449.029 }, { x = -2349.404, y = 4440.223 }, { x = -2320.723, y = 4468.608 }, { x = -2329.148, y = 4477.515 } }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1265002, name = "ENTER_REGION_265002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_265002", action = "action_EVENT_ENTER_REGION_265002", trigger_count = 0 },
	{ config_id = 1265004, name = "LEAVE_REGION_265004", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_265004", action = "action_EVENT_LEAVE_REGION_265004", trigger_count = 0 }
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
		gadgets = { 265003 },
		regions = { 265002, 265004 },
		triggers = { "ENTER_REGION_265002", "LEAVE_REGION_265004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_265002(context, evt)
	if evt.param1 ~= 265002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_265002(context, evt)
	-- 将configid为 265003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 265003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定265003物件设置其SGV:"SGV_BulletType"为2
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 265003, "SGV_BulletType", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_265004(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) > 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_265004(context, evt)
	-- 将configid为 265003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 265003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定265003物件设置其SGV:"SGV_BulletType"为0
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 265003, "SGV_BulletType", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end