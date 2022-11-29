-- 基础信息
local base_info = {
	group_id = 220102006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6019, monster_id = 21010201, pos = { x = -105.914, y = 4.940, z = 88.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 6027, monster_id = 21010201, pos = { x = -104.444, y = 4.944, z = 88.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6001, gadget_id = 70360021, pos = { x = -83.000, y = 8.759, z = 53.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 8 },
	{ config_id = 6002, gadget_id = 70360021, pos = { x = -84.000, y = 8.759, z = 53.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 5 },
	{ config_id = 6003, gadget_id = 70360021, pos = { x = -92.335, y = 9.301, z = 53.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart },
	{ config_id = 6004, gadget_id = 70360021, pos = { x = -88.779, y = 8.500, z = 40.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart },
	{ config_id = 6005, gadget_id = 70360021, pos = { x = -77.832, y = 9.458, z = 39.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 4 },
	{ config_id = 6006, gadget_id = 70360021, pos = { x = -90.440, y = 21.000, z = 56.500 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 6 },
	{ config_id = 6007, gadget_id = 70350005, pos = { x = -73.732, y = 13.063, z = 83.416 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 70360021, pos = { x = -90.707, y = 8.500, z = 40.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 3 },
	{ config_id = 6010, gadget_id = 70360021, pos = { x = -86.810, y = 21.000, z = 59.990 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 7 },
	{ config_id = 6011, gadget_id = 70220004, pos = { x = -88.582, y = 7.706, z = 58.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 6012, gadget_id = 70220004, pos = { x = -93.285, y = 7.681, z = 58.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 6013, gadget_id = 70220004, pos = { x = -109.856, y = 7.811, z = 21.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 6014, gadget_id = 70220004, pos = { x = -114.149, y = 7.811, z = 22.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 6015, gadget_id = 70220004, pos = { x = -119.092, y = 7.839, z = 22.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 6016, gadget_id = 70211101, pos = { x = -97.136, y = 5.034, z = 82.579 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 6017, gadget_id = 70220004, pos = { x = -99.629, y = 4.940, z = 82.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 6018, gadget_id = 70220004, pos = { x = -104.034, y = 4.944, z = 82.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 6020, gadget_id = 70220004, pos = { x = -88.127, y = 9.089, z = 82.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 6021, gadget_id = 70360021, pos = { x = -86.598, y = 8.500, z = 42.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 10 },
	{ config_id = 6022, gadget_id = 70360021, pos = { x = -95.272, y = 9.344, z = 63.794 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 11 },
	{ config_id = 6023, gadget_id = 70220013, pos = { x = -72.273, y = 7.040, z = 48.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6024, gadget_id = 70220013, pos = { x = -103.797, y = 6.874, z = 55.018 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1 },
	{ config_id = 6025, gadget_id = 70220026, pos = { x = -105.460, y = 6.852, z = 57.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6026, gadget_id = 70220026, pos = { x = -104.309, y = 6.854, z = 56.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6028, gadget_id = 70320002, pos = { x = -100.032, y = 6.874, z = 55.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6029, gadget_id = 70320002, pos = { x = -103.992, y = 6.855, z = 65.232 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 6008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -80.226, y = 13.305, z = 82.966 } }
}

-- 触发器
triggers = {
	{ config_id = 1006008, name = "ENTER_REGION_6008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_6008" }
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
		monsters = { 6019, 6027 },
		gadgets = { 6001, 6002, 6004, 6005, 6006, 6007, 6009, 6010, 6011, 6012, 6013, 6014, 6015, 6016, 6017, 6018, 6020, 6021, 6022, 6023, 6024, 6025, 6026, 6028, 6029 },
		regions = { 6008 },
		triggers = { "ENTER_REGION_6008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_6008(context, evt)
	-- 将configid为 6007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220102004, monsters = {}, gadgets = {4015} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end