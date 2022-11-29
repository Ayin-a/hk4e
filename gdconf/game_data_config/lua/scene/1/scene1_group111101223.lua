-- 基础信息
local base_info = {
	group_id = 111101223
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 223001,
	gadget_Teleport_2 = 223002,
	pointarray_1 = 110100043,
	moveSpeed = 10,
	groupID = 111101223
}

-- DEFS_MISCS
connectInfo = 
{
{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
{defs.gadget_Teleport_2,defs.gadget_Teleport_1,defs.pointarray_1,10}		
}

staticForwardSet = {1,2,3,4,5}
staticBackwardSet = {5,4,3,2,1}

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
	{ config_id = 223001, gadget_id = 70950095, pos = { x = 2926.414, y = 269.875, z = -1301.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 223002, gadget_id = 70950095, pos = { x = 2926.273, y = 269.683, z = -1284.189 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 223003, shape = RegionShape.SPHERE, radius = 1, pos = { x = 2926.455, y = 269.875, z = -1301.380 } },
	{ config_id = 223004, shape = RegionShape.SPHERE, radius = 1, pos = { x = 2926.267, y = 269.950, z = -1284.078 } }
}

-- 触发器
triggers = {
	{ config_id = 1223003, name = "ENTER_REGION_223003", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_223003", action = "action_EVENT_ENTER_REGION_223003", trigger_count = 0 },
	{ config_id = 1223004, name = "ENTER_REGION_223004", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_223004", action = "action_EVENT_ENTER_REGION_223004", trigger_count = 0 },
	{ config_id = 1223005, name = "GROUP_LOAD_223005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_223005", trigger_count = 0 }
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
		gadgets = { 223001, 223002 },
		regions = { 223003, 223004 },
		triggers = { "ENTER_REGION_223003", "ENTER_REGION_223004", "GROUP_LOAD_223005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_223003(context, evt)
	if evt.param1 ~= 223003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_223003(context, evt)
		local state = ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs.gadget_Teleport_2)
		if state == 0 then
			return -1
		elseif state == 201 then
			ScriptLib.MoveAvatarByPointArray(context, context.uid, defs.pointarray_1,staticBackwardSet, {speed=defs.moveSpeed}, "{\"MarkType\":1}")
		end
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_223004(context, evt)
	if evt.param1 ~= 223004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_223004(context, evt)
		local state = ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs.gadget_Teleport_2)
		if state == 0 then
			return -1
		elseif state == 201 then
			ScriptLib.MoveAvatarByPointArray(context, context.uid, defs.pointarray_1,staticBackwardSet, {speed=defs.moveSpeed}, "{\"MarkType\":1}")
		end
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_223005(context, evt)
	-- 将configid为 223001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 223002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end