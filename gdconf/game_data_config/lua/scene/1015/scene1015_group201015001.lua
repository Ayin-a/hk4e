-- 基础信息
local base_info = {
	group_id = 201015001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1002, monster_id = 21010501, pos = { x = -83.075, y = 31.381, z = 68.117 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1003, monster_id = 21010501, pos = { x = -80.747, y = 29.910, z = 99.401 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1004, monster_id = 21011002, pos = { x = -77.184, y = 29.910, z = 99.556 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1005, monster_id = 21011001, pos = { x = -81.364, y = 28.711, z = 57.513 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1007, monster_id = 21011001, pos = { x = -75.919, y = 31.160, z = 85.970 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1008, monster_id = 21011001, pos = { x = -77.384, y = 29.910, z = 130.156 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1009, monster_id = 21011001, pos = { x = -87.790, y = 29.892, z = 124.833 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1010, monster_id = 21010501, pos = { x = -83.446, y = 28.838, z = 59.520 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1011, monster_id = 21010401, pos = { x = -80.978, y = 28.711, z = 60.084 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 1012, monster_id = 21010902, pos = { x = -81.564, y = 29.910, z = 81.805 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1013, monster_id = 21011001, pos = { x = -83.539, y = 30.010, z = 80.731 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1015, monster_id = 21010501, pos = { x = -89.053, y = 31.910, z = 86.497 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1016, monster_id = 21010401, pos = { x = -75.735, y = 29.820, z = 116.686 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 1017, monster_id = 21010401, pos = { x = -76.585, y = 29.802, z = 115.321 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 1018, monster_id = 21010901, pos = { x = -92.389, y = 29.910, z = 109.547 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1024, gadget_id = 70220005, pos = { x = 18.731, y = 0.600, z = -2.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15 },
	{ config_id = 1025, gadget_id = 70220005, pos = { x = 18.571, y = 0.600, z = 2.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15 },
	{ config_id = 1026, gadget_id = 70220005, pos = { x = -77.295, y = 29.816, z = 116.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15 },
	{ config_id = 1027, gadget_id = 70220005, pos = { x = -82.029, y = 29.968, z = 149.548 }, rot = { x = 0.000, y = 160.338, z = 0.000 }, level = 15 },
	{ config_id = 1028, gadget_id = 70220005, pos = { x = -84.763, y = 29.968, z = 147.858 }, rot = { x = 0.000, y = 17.484, z = 0.000 }, level = 15 },
	{ config_id = 1029, gadget_id = 70710005, pos = { x = 77.000, y = -13.500, z = -2.900 }, rot = { x = 0.000, y = 123.069, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70710005, pos = { x = 52.500, y = -15.000, z = 23.900 }, rot = { x = 0.000, y = 132.153, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70710005, pos = { x = 32.700, y = -13.500, z = 5.500 }, rot = { x = 0.000, y = 288.639, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70710005, pos = { x = -82.100, y = 12.661, z = 36.900 }, rot = { x = 0.000, y = 87.090, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70710005, pos = { x = -74.701, y = 12.261, z = 68.029 }, rot = { x = 0.000, y = 358.083, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70710005, pos = { x = -85.009, y = 11.561, z = 97.214 }, rot = { x = 0.000, y = 89.920, z = 0.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70710005, pos = { x = -82.300, y = 11.500, z = 117.400 }, rot = { x = 0.000, y = 324.350, z = 0.000 }, level = 1 },
	{ config_id = 1036, gadget_id = 70710005, pos = { x = -82.000, y = 12.661, z = 137.800 }, rot = { x = 0.000, y = 146.293, z = 0.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70710005, pos = { x = -88.600, y = 11.100, z = 80.300 }, rot = { x = 0.000, y = 259.829, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3, shape = RegionShape.CUBIC, size = { x = 60.000, y = 20.000, z = 15.000 }, pos = { x = -83.800, y = 30.777, z = 37.629 } }
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ENTER_REGION_3", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3", action = "action_EVENT_ENTER_REGION_3", forbid_guest = false }
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
		monsters = { 1002, 1003, 1004, 1005, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1015, 1016, 1017, 1018 },
		gadgets = { 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037 },
		regions = { 3 },
		triggers = { "ENTER_REGION_3" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3(context, evt)
	if evt.param1 ~= 3 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201015002, monsters = {}, gadgets = {2024} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end