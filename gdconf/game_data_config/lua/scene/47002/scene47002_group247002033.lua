-- 基础信息
local base_info = {
	group_id = 247002033
}

-- DEFS_MISCS
local GroupId = 247002033
local ChestConfigID = 33001
local RegionID = 33004
local ChestConfigIDList = {33001}

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
	{ config_id = 33001, gadget_id = 70211111, pos = { x = 241.073, y = 0.051, z = 163.070 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 33002, gadget_id = 70310125, pos = { x = 260.000, y = 0.114, z = 160.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 33003, gadget_id = 70310125, pos = { x = 240.000, y = 0.114, z = 140.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 33005, gadget_id = 70360283, pos = { x = 241.440, y = 10.016, z = 153.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33007, gadget_id = 70360283, pos = { x = 241.469, y = 10.032, z = 158.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33008, gadget_id = 70310125, pos = { x = 220.000, y = 0.114, z = 160.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 33009, gadget_id = 70310125, pos = { x = 240.000, y = 0.114, z = 180.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 33004, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 240.000, y = 0.051, z = 160.000 } },
	{ config_id = 33006, shape = RegionShape.SPHERE, radius = 2, pos = { x = 240.711, y = 0.050, z = 159.893 } }
}

-- 触发器
triggers = {
	{ config_id = 1033004, name = "ENTER_REGION_33004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1033006, name = "ENTER_REGION_33006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_33006", action = "action_EVENT_ENTER_REGION_33006" }
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
		gadgets = { 33001, 33002, 33003, 33005, 33007, 33008, 33009 },
		regions = { 33004, 33006 },
		triggers = { "ENTER_REGION_33004", "ENTER_REGION_33006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_33006(context, evt)
	if evt.param1 ~= 33006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_33006(context, evt)
	-- 将configid为 33007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 33005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/RogueDungeon_ChestRoom"