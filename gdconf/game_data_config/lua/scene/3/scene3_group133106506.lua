-- 基础信息
local base_info = {
	group_id = 133106506
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
	{ config_id = 506001, gadget_id = 70290199, pos = { x = -681.834, y = 282.068, z = 2100.706 }, rot = { x = 352.123, y = 201.826, z = 9.521 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 506002, gadget_id = 70290191, pos = { x = -674.508, y = 277.275, z = 2073.112 }, rot = { x = 343.415, y = 320.847, z = 359.785 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 506003, gadget_id = 70290191, pos = { x = -677.685, y = 279.950, z = 2086.928 }, rot = { x = 14.218, y = 134.009, z = 359.011 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 506004, gadget_id = 70211121, pos = { x = -682.637, y = 282.464, z = 2101.660 }, rot = { x = 1.334, y = 200.414, z = 9.641 }, level = 26, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 506005, gadget_id = 70330021, pos = { x = -669.359, y = 279.802, z = 2097.530 }, rot = { x = 355.582, y = 0.444, z = 348.525 }, level = 36, area_id = 19 },
	{ config_id = 506007, gadget_id = 70290191, pos = { x = -670.725, y = 279.767, z = 2092.051 }, rot = { x = 346.318, y = 320.838, z = 359.871 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 506008, gadget_id = 70290190, pos = { x = -661.631, y = 274.999, z = 2069.270 }, rot = { x = 345.201, y = 322.034, z = 4.549 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 506009, gadget_id = 70330021, pos = { x = -655.280, y = 273.495, z = 2066.506 }, rot = { x = 351.891, y = 0.126, z = 358.224 }, level = 36, area_id = 19 },
	{ config_id = 506010, gadget_id = 70290190, pos = { x = -660.223, y = 276.781, z = 2082.924 }, rot = { x = 7.463, y = 174.547, z = 1.649 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1506006, name = "ANY_GADGET_DIE_506006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_506006", action = "action_EVENT_ANY_GADGET_DIE_506006" }
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
		gadgets = { 506001, 506002, 506003, 506004, 506005, 506007, 506008, 506009, 506010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_506006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_506006(context, evt)
	if 506001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_506006(context, evt)
	-- 将configid为 506004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 506004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end