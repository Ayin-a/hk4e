-- 基础信息
local base_info = {
	group_id = 133004006
}

-- Trigger变量
local defs = {
	gadget_id_1 = 31,
	gadget_id_2 = 32,
	gadget_id_3 = 33,
	gadget_id_4 = 34,
	gadget_id_5 = 35,
	gadget_id_6 = 36
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
	{ config_id = 31, gadget_id = 70680001, pos = { x = 2801.539, y = 210.330, z = -45.690 }, rot = { x = 0.000, y = 158.618, z = 0.000 }, level = 23, arguments = { 0, 10, 5 }, area_id = 4 },
	{ config_id = 32, gadget_id = 70690006, pos = { x = 2793.660, y = 222.000, z = -53.118 }, rot = { x = 0.000, y = 276.058, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 33, gadget_id = 70690006, pos = { x = 2809.018, y = 222.000, z = -35.897 }, rot = { x = 0.000, y = 133.091, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 34, gadget_id = 70680003, pos = { x = 2812.387, y = 236.000, z = -31.288 }, rot = { x = 0.000, y = 244.528, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 35, gadget_id = 70690006, pos = { x = 2809.947, y = 248.000, z = -26.613 }, rot = { x = 0.000, y = 131.940, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 36, gadget_id = 70680003, pos = { x = 2788.634, y = 236.000, z = -59.089 }, rot = { x = 0.000, y = 35.720, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 37, gadget_id = 70690006, pos = { x = 2784.123, y = 248.000, z = -62.035 }, rot = { x = 0.000, y = 246.157, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000027, name = "GADGET_CREATE_27", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_27", action = "action_EVENT_GADGET_CREATE_27" }
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
	rand_suite = true
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
		gadgets = { 31, 32, 33, 34, 36 },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_27(context, evt)
	if evt.param1 ~= defs.gadget_id_1 then
			return false
		else 
			return true
		end
end

-- 触发操作
function action_EVENT_GADGET_CREATE_27(context, evt)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_1, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_2, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_3, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_4, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_5, GadgetState.Default)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133004006, defs.gadget_id_6, GadgetState.Default)
		return 0
end