-- 基础信息
local base_info = {
	group_id = 220113007
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
	-- 绿
	{ config_id = 7001, gadget_id = 70380033, pos = { x = 14.500, y = 5.000, z = 59.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 },
	-- 橙
	{ config_id = 7002, gadget_id = 70380033, pos = { x = 13.700, y = -10.000, z = 52.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3 },
	-- 黄
	{ config_id = 7003, gadget_id = 70380033, pos = { x = 14.500, y = 1.000, z = 45.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4 },
	-- 红
	{ config_id = 7004, gadget_id = 70380033, pos = { x = 13.800, y = 10.000, z = 52.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5 }
}

-- 区域
regions = {
	{ config_id = 7008, shape = RegionShape.CUBIC, size = { x = 10.000, y = 40.000, z = 10.000 }, pos = { x = 9.217, y = -1.337, z = 52.301 } }
}

-- 触发器
triggers = {
	{ config_id = 1007008, name = "ENTER_REGION_7008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7008", action = "action_EVENT_ENTER_REGION_7008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 7005, gadget_id = 70360282, pos = { x = 16.900, y = 10.000, z = 39.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 7006, gadget_id = 70380033, pos = { x = 12.245, y = -10.000, z = 67.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
		{ config_id = 7007, gadget_id = 40000001, pos = { x = 8.305, y = -7.537, z = 53.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 7001, 7002, 7003, 7004 },
		regions = { 7008 },
		triggers = { "ENTER_REGION_7008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_7008(context, evt)
	if evt.param1 ~= 7008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7008(context, evt)
	-- 改变指定group组220113007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113007, 7001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113007, 7002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113007中， configid为7003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113007, 7003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113007中， configid为7004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113007, 7004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end