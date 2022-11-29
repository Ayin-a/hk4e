-- 基础信息
local base_info = {
	group_id = 133223415
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
	{ config_id = 415001, gadget_id = 70290159, pos = { x = -6108.571, y = 205.917, z = -2853.073 }, rot = { x = 358.694, y = 256.057, z = 354.755 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415003, gadget_id = 70290159, pos = { x = -6070.264, y = 207.876, z = -2892.548 }, rot = { x = 340.682, y = 284.120, z = 3.231 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415007, gadget_id = 70290159, pos = { x = -6128.252, y = 203.140, z = -2859.162 }, rot = { x = 0.000, y = 348.622, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415009, gadget_id = 70290159, pos = { x = -6066.468, y = 208.185, z = -2910.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415012, gadget_id = 70290159, pos = { x = -6049.687, y = 207.022, z = -2918.591 }, rot = { x = 0.000, y = 110.697, z = 347.151 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415013, gadget_id = 70290159, pos = { x = -6022.514, y = 204.383, z = -2903.411 }, rot = { x = 346.711, y = 281.242, z = 346.997 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415015, gadget_id = 70290159, pos = { x = -6008.819, y = 214.054, z = -2922.227 }, rot = { x = 0.909, y = 272.724, z = 2.012 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415016, gadget_id = 70290159, pos = { x = -6034.826, y = 207.391, z = -2874.425 }, rot = { x = 0.000, y = 298.329, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415018, gadget_id = 70290159, pos = { x = -6067.072, y = 208.839, z = -2871.864 }, rot = { x = 0.000, y = 323.844, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415019, gadget_id = 70290159, pos = { x = -6105.221, y = 206.522, z = -2869.234 }, rot = { x = 0.000, y = 338.771, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415020, gadget_id = 70290159, pos = { x = -6086.146, y = 208.287, z = -2863.397 }, rot = { x = 0.000, y = 281.742, z = 11.810 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415024, gadget_id = 70290159, pos = { x = -6035.980, y = 206.007, z = -2895.676 }, rot = { x = 0.000, y = 292.912, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 415025, gadget_id = 70290159, pos = { x = -6055.129, y = 198.083, z = -2903.577 }, rot = { x = 358.950, y = 2.217, z = 8.368 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 任务完成关闭雾灯
	{ config_id = 1415004, name = "QUEST_FINISH_415004", event = EventType.EVENT_QUEST_FINISH, source = "7222806", condition = "", action = "action_EVENT_QUEST_FINISH_415004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 415002, gadget_id = 70290159, pos = { x = -6095.992, y = 208.100, z = -2880.493 }, rot = { x = 353.375, y = 328.667, z = 357.910 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415005, gadget_id = 70290159, pos = { x = -6038.762, y = 207.574, z = -2887.614 }, rot = { x = 344.615, y = 69.614, z = 358.869 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415006, gadget_id = 70290159, pos = { x = -6032.225, y = 207.270, z = -2875.096 }, rot = { x = 0.000, y = 79.444, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415008, gadget_id = 70290159, pos = { x = -6094.259, y = 208.521, z = -2897.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415011, gadget_id = 70290159, pos = { x = -6048.429, y = 198.588, z = -2895.132 }, rot = { x = 357.727, y = 34.873, z = 26.081 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415014, gadget_id = 70290159, pos = { x = -6007.437, y = 212.619, z = -2911.237 }, rot = { x = 0.000, y = 289.525, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415017, gadget_id = 70290159, pos = { x = -6051.337, y = 207.473, z = -2865.586 }, rot = { x = 0.000, y = 119.563, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415021, gadget_id = 70290159, pos = { x = -6121.613, y = 205.604, z = -2870.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415022, gadget_id = 70290159, pos = { x = -6072.970, y = 208.828, z = -2857.363 }, rot = { x = 0.000, y = 110.557, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 415023, gadget_id = 70290159, pos = { x = -6040.265, y = 202.628, z = -2928.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
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
		gadgets = { 415001, 415003, 415007, 415009, 415012, 415013, 415015, 415016, 415018, 415019, 415020, 415024, 415025 },
		regions = { },
		triggers = { "QUEST_FINISH_415004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_415004(context, evt)
	        for k,v in pairs(gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 133223415, v.config_id, 0)
	        end
	
	return 0
end