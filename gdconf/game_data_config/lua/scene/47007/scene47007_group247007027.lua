-- 基础信息
local base_info = {
	group_id = 247007027
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
	{ config_id = 27001, gadget_id = 70360283, pos = { x = 41.956, y = 9.782, z = 79.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27002, gadget_id = 70360283, pos = { x = 79.883, y = 4.260, z = 121.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27003, gadget_id = 70360283, pos = { x = 0.056, y = 4.285, z = 121.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 悬吊陷阱
	{ config_id = 27004, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 5.000 }, pos = { x = 41.956, y = 5.274, z = 79.983 } },
	-- 悬吊陷阱
	{ config_id = 27005, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 5.000 }, pos = { x = 79.883, y = 4.260, z = 121.408 } },
	-- 悬吊陷阱
	{ config_id = 27006, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 5.000 }, pos = { x = 0.056, y = 4.285, z = 121.761 } }
}

-- 触发器
triggers = {
	-- 悬吊陷阱
	{ config_id = 1027004, name = "ENTER_REGION_27004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27004", action = "action_EVENT_ENTER_REGION_27004" },
	-- 悬吊陷阱
	{ config_id = 1027005, name = "ENTER_REGION_27005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27005", action = "action_EVENT_ENTER_REGION_27005" },
	-- 悬吊陷阱
	{ config_id = 1027006, name = "ENTER_REGION_27006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27006", action = "action_EVENT_ENTER_REGION_27006" }
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
		gadgets = { 27001, 27002, 27003 },
		regions = { 27004, 27005, 27006 },
		triggers = { "ENTER_REGION_27004", "ENTER_REGION_27005", "ENTER_REGION_27006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_27004(context, evt)
	if evt.param1 ~= 27004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27004(context, evt)
	-- 将configid为 27001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27005(context, evt)
	if evt.param1 ~= 27005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27005(context, evt)
	-- 将configid为 27002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27006(context, evt)
	if evt.param1 ~= 27006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27006(context, evt)
	-- 将configid为 27003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end