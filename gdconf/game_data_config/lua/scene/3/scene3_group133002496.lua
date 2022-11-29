-- 基础信息
local base_info = {
	group_id = 133002496
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 496001, monster_id = 21020201, pos = { x = 1641.505, y = 266.223, z = -756.437 }, rot = { x = 0.000, y = 117.658, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 3 },
	{ config_id = 496002, monster_id = 21011002, pos = { x = 1647.151, y = 265.143, z = -790.495 }, rot = { x = 0.000, y = 141.018, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 496003, monster_id = 21011002, pos = { x = 1652.757, y = 265.117, z = -789.134 }, rot = { x = 0.000, y = 180.644, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 496004, monster_id = 22010101, pos = { x = 1661.760, y = 266.376, z = -774.180 }, rot = { x = 0.000, y = 293.288, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 3 },
	{ config_id = 496005, monster_id = 21010301, pos = { x = 1658.658, y = 265.921, z = -776.133 }, rot = { x = 0.000, y = 14.633, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 3 },
	{ config_id = 496006, monster_id = 21010301, pos = { x = 1660.684, y = 266.428, z = -770.213 }, rot = { x = 0.000, y = 211.799, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 3 },
	{ config_id = 496007, monster_id = 21010502, pos = { x = 1660.834, y = 267.470, z = -797.946 }, rot = { x = 0.000, y = 196.728, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 496014, gadget_id = 70350201, pos = { x = 1625.427, y = 268.430, z = -780.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 496015, gadget_id = 70350201, pos = { x = 1639.380, y = 268.848, z = -738.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 496016, gadget_id = 70350201, pos = { x = 1627.408, y = 267.363, z = -752.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 496022, gadget_id = 70300084, pos = { x = 1669.631, y = 267.294, z = -759.146 }, rot = { x = 0.000, y = 356.541, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 496023, gadget_id = 70300084, pos = { x = 1636.645, y = 266.787, z = -792.464 }, rot = { x = 0.000, y = 110.030, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 496024, gadget_id = 70300085, pos = { x = 1659.295, y = 266.039, z = -772.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 496025, gadget_id = 70300087, pos = { x = 1659.245, y = 266.495, z = -772.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 496026, gadget_id = 70360163, pos = { x = 1650.075, y = 265.366, z = -770.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, persistent = true, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 496029, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1650.819, y = 266.796, z = -768.012 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1496027, name = "ANY_MONSTER_DIE_496027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_496027", action = "action_EVENT_ANY_MONSTER_DIE_496027" },
	{ config_id = 1496028, name = "GROUP_LOAD_496028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_496028" },
	{ config_id = 1496029, name = "ENTER_REGION_496029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_496029", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 496008, monster_id = 21020201, pos = { x = 1729.683, y = 257.865, z = -753.789 }, rot = { x = 0.000, y = 123.692, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 3 },
		{ config_id = 496009, monster_id = 21010201, pos = { x = 1731.789, y = 258.192, z = -757.685 }, rot = { x = 0.000, y = 347.123, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
		{ config_id = 496010, monster_id = 21010201, pos = { x = 1734.531, y = 258.285, z = -753.953 }, rot = { x = 0.000, y = 265.029, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
		{ config_id = 496011, monster_id = 21011001, pos = { x = 1709.149, y = 255.248, z = -761.394 }, rot = { x = 0.000, y = 180.644, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
		{ config_id = 496012, monster_id = 21011001, pos = { x = 1702.411, y = 255.262, z = -765.925 }, rot = { x = 0.000, y = 141.018, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
		{ config_id = 496013, monster_id = 21010201, pos = { x = 1710.893, y = 253.530, z = -774.498 }, rot = { x = 0.000, y = 145.907, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
		{ config_id = 496018, monster_id = 23010601, pos = { x = 1724.584, y = 257.396, z = -752.012 }, rot = { x = 0.000, y = 92.492, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 3 },
		{ config_id = 496019, monster_id = 23010301, pos = { x = 1704.051, y = 255.261, z = -760.769 }, rot = { x = 0.000, y = 169.350, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 3 },
		{ config_id = 496020, monster_id = 23010501, pos = { x = 1728.644, y = 257.736, z = -752.635 }, rot = { x = 0.000, y = 270.765, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 3 }
	},
	gadgets = {
		{ config_id = 496017, gadget_id = 70300084, pos = { x = 1649.705, y = 264.917, z = -788.941 }, rot = { x = 0.000, y = 74.255, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 496021, gadget_id = 70220008, pos = { x = 1683.391, y = 258.150, z = -744.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
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
		monsters = { 496001, 496002, 496003, 496004, 496005, 496006, 496007 },
		gadgets = { 496014, 496015, 496016, 496022, 496023, 496024, 496025 },
		regions = { 496029 },
		triggers = { "ANY_MONSTER_DIE_496027", "GROUP_LOAD_496028", "ENTER_REGION_496029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_496027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_496027(context, evt)
	-- 将configid为 496026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 496026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_496028(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 496026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_496029(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
end