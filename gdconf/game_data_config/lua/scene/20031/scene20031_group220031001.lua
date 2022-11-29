-- 基础信息
local base_info = {
	group_id = 220031001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011401, pos = { x = -7.250, y = 42.016, z = 97.907 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20011401, pos = { x = -4.480, y = 42.016, z = 90.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20011401, pos = { x = 1.682, y = 42.016, z = 93.503 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20011401, pos = { x = 1.469, y = 42.016, z = 100.759 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, monster_id = 21010501, pos = { x = -3.419, y = 42.017, z = 114.733 }, rot = { x = 0.000, y = 187.722, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1029, monster_id = 21010501, pos = { x = -6.894, y = 42.016, z = 114.544 }, rot = { x = 0.000, y = 172.836, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1005, gadget_id = 70900201, pos = { x = 19.327, y = 51.016, z = 61.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70211001, pos = { x = 15.250, y = 47.016, z = 49.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1009, gadget_id = 70220013, pos = { x = 15.372, y = 47.016, z = 51.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70220013, pos = { x = 13.254, y = 47.016, z = 52.796 }, rot = { x = 0.000, y = 350.511, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70220025, pos = { x = 15.426, y = 47.107, z = 52.096 }, rot = { x = 272.911, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220025, pos = { x = -9.528, y = 47.039, z = 52.885 }, rot = { x = 271.408, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220013, pos = { x = -8.296, y = 47.016, z = 52.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220013, pos = { x = -9.516, y = 47.016, z = 54.150 }, rot = { x = 0.000, y = 336.834, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70220014, pos = { x = -6.333, y = 47.017, z = 52.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70220014, pos = { x = -9.484, y = 47.016, z = 55.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70220014, pos = { x = -7.314, y = 47.017, z = 53.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70220007, pos = { x = -3.664, y = 42.017, z = 119.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70220013, pos = { x = -7.043, y = 42.016, z = 118.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70220013, pos = { x = -4.984, y = 42.016, z = 117.757 }, rot = { x = 0.000, y = 336.145, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70220025, pos = { x = -6.310, y = 42.034, z = 117.844 }, rot = { x = 270.084, y = 0.229, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70220013, pos = { x = -1.861, y = 42.016, z = 123.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70220013, pos = { x = -2.473, y = 42.016, z = 126.186 }, rot = { x = 0.000, y = 39.616, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70220014, pos = { x = -3.482, y = 42.016, z = 123.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70220014, pos = { x = -1.097, y = 42.016, z = 122.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70220005, pos = { x = -2.990, y = 42.017, z = 117.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70220005, pos = { x = -2.081, y = 42.016, z = 117.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70310002, pos = { x = 20.963, y = 54.503, z = 42.522 }, rot = { x = 0.000, y = 276.672, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1031, gadget_id = 70310002, pos = { x = 14.036, y = 54.742, z = 49.981 }, rot = { x = 0.000, y = 91.797, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1032, gadget_id = 70310002, pos = { x = 21.392, y = 55.042, z = 59.973 }, rot = { x = 0.000, y = 272.765, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1033, gadget_id = 70310002, pos = { x = 2.464, y = 52.021, z = 51.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1034, gadget_id = 70310002, pos = { x = -10.470, y = 52.021, z = 59.911 }, rot = { x = 0.000, y = 92.483, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1035, gadget_id = 70310002, pos = { x = -10.977, y = 52.117, z = 70.991 }, rot = { x = 0.000, y = 88.907, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1036, gadget_id = 70220007, pos = { x = 40.122, y = 42.017, z = 88.920 }, rot = { x = 0.000, y = 275.691, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1007, shape = RegionShape.CUBIC, size = { x = 50.000, y = 20.000, z = 10.000 }, pos = { x = -2.136, y = 47.000, z = 60.789 } }
}

-- 触发器
triggers = {
	{ config_id = 1001006, name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006" },
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007" }
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
		monsters = { 1001, 1002, 1003, 1004, 1028, 1029 },
		gadgets = { 1005, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1030, 1031, 1032, 1033, 1034, 1035, 1036 },
		regions = { 1007 },
		triggers = { "ANY_MONSTER_DIE_1006", "ENTER_REGION_1007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220031001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220031009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end