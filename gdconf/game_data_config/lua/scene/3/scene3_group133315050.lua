-- 基础信息
local base_info = {
	group_id = 133315050
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
	{ config_id = 50005, gadget_id = 70360001, pos = { x = 574.810, y = 136.965, z = 2561.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 50006, gadget_id = 71700402, pos = { x = 580.586, y = 137.195, z = 2566.364 }, rot = { x = 0.000, y = 300.884, z = 0.000 }, level = 1, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 50004, shape = RegionShape.SPHERE, radius = 4, pos = { x = 580.591, y = 137.193, z = 2566.355 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1050004, name = "ENTER_REGION_50004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_50004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "123", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 50001, gadget_id = 70500000, pos = { x = 590.061, y = 135.588, z = 2566.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9311, persistent = true, area_id = 20 }
	},
	triggers = {
		{ config_id = 1050002, name = "GATHER_50002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_50002", action = "action_EVENT_GATHER_50002" },
		{ config_id = 1050003, name = "GROUP_LOAD_50003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_50003", action = "action_EVENT_GROUP_LOAD_50003", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 50005, 50006 },
		regions = { 50004 },
		triggers = { "ENTER_REGION_50004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 50006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_50004(context, evt)
	-- 将configid为 50005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 50005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"