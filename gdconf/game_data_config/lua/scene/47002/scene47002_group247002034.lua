-- 基础信息
local base_info = {
	group_id = 247002034
}

-- DEFS_MISCS
local GroupId = 247002034
local ChestConfigID = 34001
local RegionID = 34004
local ChestConfigIDList = {34001}

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
	{ config_id = 34001, gadget_id = 70211111, pos = { x = 400.000, y = 0.100, z = 320.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 34002, gadget_id = 70310125, pos = { x = 420.000, y = 0.114, z = 320.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 34003, gadget_id = 70310125, pos = { x = 400.000, y = 0.114, z = 300.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 34005, gadget_id = 70360283, pos = { x = 396.514, y = 18.515, z = 323.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34006, gadget_id = 70360283, pos = { x = 396.588, y = 18.517, z = 316.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34007, gadget_id = 70360283, pos = { x = 403.507, y = 18.515, z = 323.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34008, gadget_id = 70360283, pos = { x = 403.395, y = 18.515, z = 316.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34010, gadget_id = 70310125, pos = { x = 380.000, y = 0.114, z = 320.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 34011, gadget_id = 70310125, pos = { x = 400.000, y = 0.124, z = 340.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 34004, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 400.000, y = 0.051, z = 320.000 } },
	{ config_id = 34009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 399.995, y = 0.050, z = 320.086 } }
}

-- 触发器
triggers = {
	{ config_id = 1034004, name = "ENTER_REGION_34004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1034009, name = "ENTER_REGION_34009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34009", action = "action_EVENT_ENTER_REGION_34009" }
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
		gadgets = { 34001, 34002, 34003, 34005, 34006, 34007, 34008, 34010, 34011 },
		regions = { 34004, 34009 },
		triggers = { "ENTER_REGION_34004", "ENTER_REGION_34009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_34009(context, evt)
	if evt.param1 ~= 34009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34009(context, evt)
	-- 将configid为 34005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/RogueDungeon_ChestRoom"