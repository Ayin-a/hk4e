-- 基础信息
local base_info = {
	group_id = 220023003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011301, pos = { x = 61.032, y = -0.984, z = 30.543 }, rot = { x = 0.000, y = 164.498, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 20011201, pos = { x = 60.401, y = -0.984, z = 36.654 }, rot = { x = 0.000, y = 177.443, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 20011201, pos = { x = 59.254, y = -0.984, z = 28.448 }, rot = { x = 0.000, y = 97.888, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3004, gadget_id = 70900013, pos = { x = 71.661, y = -2.219, z = 33.081 }, rot = { x = 3.866, y = 325.978, z = 180.000 }, level = 1, state = GadgetState.GearAction1, arguments = { 0, 0, 0 } },
	{ config_id = 3005, gadget_id = 70900013, pos = { x = 87.396, y = -2.318, z = 33.248 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, state = GadgetState.GearAction1, arguments = { 0, 0, 0 } },
	{ config_id = 3006, gadget_id = 70900013, pos = { x = 102.348, y = -2.341, z = 32.956 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, state = GadgetState.GearAction1, arguments = { 0, 0, 0 } },
	{ config_id = 3007, gadget_id = 70380009, pos = { x = 72.332, y = -1.367, z = 33.029 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 3008, gadget_id = 70380009, pos = { x = 87.292, y = -1.417, z = 32.966 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 3009, gadget_id = 70380009, pos = { x = 102.241, y = -1.345, z = 32.919 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 3010, gadget_id = 70211001, pos = { x = 59.036, y = -0.984, z = 26.581 }, rot = { x = 0.000, y = 357.948, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 3, shape = RegionShape.CUBIC, size = { x = 16.160, y = 7.240, z = 27.360 }, pos = { x = 56.296, y = -0.984, z = 33.134 } }
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ENTER_REGION_3", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3", action = "action_EVENT_ENTER_REGION_3" }
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
		gadgets = { 3004, 3005, 3006, 3007, 3008, 3009, 3010 },
		regions = { 3 },
		triggers = { "ENTER_REGION_3" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3(context, evt)
	if evt.param1 ~= 3 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3(context, evt)
	
	-- 将configid为 33 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3005, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 34 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3006, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 5 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStart) then
			return -1
		end 
	
	-- 启动移动平台
	ScriptLib.StartPlatform(context, 3007) 
	
	
	-- 启动移动平台
	ScriptLib.StartPlatform(context, 3008)
	
	
	-- 启动移动平台
	ScriptLib.StartPlatform(context, 3009) 
	
	
	
	return 0
end