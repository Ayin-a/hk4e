-- 基础信息
local base_info = {
	group_id = 247005028
}

-- DEFS_MISCS
local GroupId = 247005028
local ChestConfigID = 28001
local RegionID = 28005

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
	{ config_id = 28001, gadget_id = 70211101, pos = { x = 151.539, y = -0.876, z = 203.700 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 28002, gadget_id = 70310125, pos = { x = -80.000, y = 0.114, z = 420.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28003, gadget_id = 70310125, pos = { x = -80.000, y = 0.124, z = 380.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28004, gadget_id = 70310125, pos = { x = -60.000, y = 0.114, z = 400.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28006, gadget_id = 70310125, pos = { x = -100.000, y = 0.114, z = 400.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 28008, gadget_id = 70310154, pos = { x = -86.800, y = 8.590, z = 398.610 }, rot = { x = 50.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 28009, gadget_id = 70310154, pos = { x = -72.975, y = 8.590, z = 397.610 }, rot = { x = 50.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 28010, gadget_id = 70360291, pos = { x = -80.066, y = -1.500, z = 398.081 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28011, gadget_id = 70211101, pos = { x = 85.610, y = 0.040, z = 538.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 28012, gadget_id = 70211101, pos = { x = 85.488, y = 0.017, z = 536.435 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 28014, gadget_id = 70360283, pos = { x = 80.375, y = 4.674, z = 538.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28015, gadget_id = 70211101, pos = { x = 67.122, y = 0.080, z = 337.252 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 28005, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = -80.000, y = -0.680, z = 400.000 } },
	{ config_id = 28013, shape = RegionShape.SPHERE, radius = 3, pos = { x = 80.375, y = -0.158, z = 537.990 } }
}

-- 触发器
triggers = {
	{ config_id = 1028005, name = "ENTER_REGION_28005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1028013, name = "ENTER_REGION_28013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28013", action = "action_EVENT_ENTER_REGION_28013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 28007, shape = RegionShape.SPHERE, radius = 2, pos = { x = -79.901, y = -0.680, z = 398.124 } }
	},
	triggers = {
		{ config_id = 1028007, name = "ENTER_REGION_28007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28007", action = "action_EVENT_ENTER_REGION_28007", trigger_count = 0 }
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
		gadgets = { 28001, 28002, 28003, 28004, 28006, 28008, 28009, 28010, 28011, 28012, 28014, 28015 },
		regions = { 28005, 28013 },
		triggers = { "ENTER_REGION_28005", "ENTER_REGION_28013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_28013(context, evt)
	if evt.param1 ~= 28013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28013(context, evt)
	-- 将configid为 28014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end