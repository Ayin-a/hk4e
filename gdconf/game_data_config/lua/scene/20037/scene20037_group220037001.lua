-- 基础信息
local base_info = {
	group_id = 220037001
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
	{ config_id = 1001, gadget_id = 70350003, pos = { x = 188.082, y = 18.766, z = 21.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350003, pos = { x = 197.327, y = 26.870, z = 32.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350003, pos = { x = 217.998, y = 26.909, z = 32.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350003, pos = { x = 227.991, y = 18.767, z = -14.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350003, pos = { x = 196.709, y = 27.017, z = -24.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350003, pos = { x = 228.088, y = 18.750, z = 22.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70350003, pos = { x = 207.606, y = 15.908, z = -18.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70350003, pos = { x = 188.125, y = 18.758, z = -14.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70350003, pos = { x = 207.762, y = 34.963, z = -43.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350003, pos = { x = 207.655, y = 34.845, z = 50.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350003, pos = { x = 178.067, y = 18.666, z = 4.147 }, rot = { x = 0.000, y = 90.156, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70350003, pos = { x = 159.138, y = 11.490, z = 23.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70380009, pos = { x = 102.241, y = -1.468, z = 33.028 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 1015, gadget_id = 70380009, pos = { x = 87.217, y = -1.468, z = 32.932 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 1016, gadget_id = 70380009, pos = { x = 72.202, y = -1.468, z = 32.974 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 1017, gadget_id = 70350003, pos = { x = 207.631, y = 15.617, z = 27.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70900013, pos = { x = 72.247, y = -2.000, z = 32.938 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStop, arguments = { 0, 0, 0 } },
	{ config_id = 1019, gadget_id = 70900013, pos = { x = 87.367, y = -2.000, z = 33.000 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStop, arguments = { 0, 0, 0 } },
	{ config_id = 1020, gadget_id = 70900013, pos = { x = 102.241, y = -2.000, z = 33.028 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStop, arguments = { 0, 0, 0 } },
	{ config_id = 1022, gadget_id = 70350003, pos = { x = 219.333, y = 27.016, z = -24.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70320002, pos = { x = 137.640, y = 2.682, z = 39.337 }, rot = { x = 0.000, y = 182.615, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1024, gadget_id = 70350004, pos = { x = 254.260, y = 25.919, z = 22.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70350004, pos = { x = 254.081, y = 25.903, z = -15.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70211001, pos = { x = 23.355, y = -3.797, z = 17.678 }, rot = { x = 0.000, y = 90.000, z = 9.770 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1027, gadget_id = 70211101, pos = { x = 169.607, y = 9.520, z = 32.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1028, gadget_id = 70211011, pos = { x = 297.885, y = 42.269, z = 23.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001021, name = "QUEST_START_1021", event = EventType.EVENT_QUEST_START, source = "1012210", condition = "", action = "action_EVENT_QUEST_START_1021" }
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
		gadgets = { 1001, 1002, 1003, 1004, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1022, 1023, 1024, 1025, 1026, 1027, 1028 },
		regions = { },
		triggers = { "QUEST_START_1021" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_1021(context, evt)
	-- 将configid为 1018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end