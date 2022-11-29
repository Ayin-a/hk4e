-- 基础信息
local base_info = {
	group_id = 247002032
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
	{ config_id = 32001, gadget_id = 70211101, pos = { x = 119.828, y = -1.950, z = 79.572 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 32009, gadget_id = 70211101, pos = { x = 407.202, y = -0.876, z = 455.805 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 32010, gadget_id = 70211101, pos = { x = 407.142, y = -0.876, z = 449.580 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 32012, gadget_id = 70310154, pos = { x = 407.669, y = 0.268, z = 440.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32013, gadget_id = 70360291, pos = { x = 407.368, y = 0.019, z = 458.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32014, gadget_id = 70211101, pos = { x = 135.539, y = -0.562, z = 69.706 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 32011, shape = RegionShape.SPHERE, radius = 3, pos = { x = 407.327, y = -0.876, z = 455.784 } }
}

-- 触发器
triggers = {
	{ config_id = 1032011, name = "ENTER_REGION_32011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32011", action = "action_EVENT_ENTER_REGION_32011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 32002, gadget_id = 70310125, pos = { x = 180.000, y = 0.114, z = 80.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 32003, gadget_id = 70310125, pos = { x = 140.000, y = 0.114, z = 80.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
		{ config_id = 32004, gadget_id = 70310125, pos = { x = 160.000, y = 0.114, z = 60.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 32006, gadget_id = 70360283, pos = { x = 160.000, y = 22.265, z = 80.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 32008, gadget_id = 70310125, pos = { x = 160.000, y = 0.114, z = 100.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
	},
	regions = {
		{ config_id = 32005, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 160.000, y = 0.050, z = 80.000 } },
		{ config_id = 32007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 160.001, y = 0.050, z = 80.071 } }
	},
	triggers = {
		{ config_id = 1032005, name = "ENTER_REGION_32005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
		{ config_id = 1032007, name = "ENTER_REGION_32007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32007", action = "action_EVENT_ENTER_REGION_32007" }
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
		gadgets = { 32001, 32009, 32010, 32012, 32013, 32014 },
		regions = { 32011 },
		triggers = { "ENTER_REGION_32011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_32011(context, evt)
	if evt.param1 ~= 32011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32011(context, evt)
	-- 将configid为 32012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end