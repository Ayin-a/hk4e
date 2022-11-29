-- 基础信息
local base_info = {
	group_id = 133106001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1003, monster_id = 22010201, pos = { x = -479.496, y = 196.647, z = 1078.490 }, rot = { x = 0.000, y = 82.957, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 8 },
	{ config_id = 1004, monster_id = 22010301, pos = { x = -475.453, y = 196.647, z = 1079.184 }, rot = { x = 0.000, y = 265.947, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 8 },
	{ config_id = 1005, monster_id = 21011002, pos = { x = -472.637, y = 196.647, z = 1081.026 }, rot = { x = 0.000, y = 28.619, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 8 },
	{ config_id = 1009, monster_id = 21011002, pos = { x = -474.810, y = 196.647, z = 1081.375 }, rot = { x = 0.000, y = 58.890, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 8 },
	{ config_id = 1010, monster_id = 21011002, pos = { x = -473.780, y = 196.647, z = 1079.236 }, rot = { x = 0.000, y = 59.547, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70350201, pos = { x = -465.506, y = 193.777, z = 1067.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1002, gadget_id = 70350201, pos = { x = -455.013, y = 202.113, z = 1091.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1008, gadget_id = 70220005, pos = { x = -449.325, y = 201.947, z = 1087.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1011, gadget_id = 70220005, pos = { x = -448.932, y = 201.947, z = 1086.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1012, gadget_id = 70220005, pos = { x = -454.524, y = 202.113, z = 1093.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1013, gadget_id = 70220005, pos = { x = -452.766, y = 202.113, z = 1090.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1014, gadget_id = 70360163, pos = { x = -477.571, y = 196.647, z = 1078.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 8 },
	{ config_id = 1016, gadget_id = 70220005, pos = { x = -457.026, y = 202.113, z = 1091.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1017, gadget_id = 70220005, pos = { x = -454.983, y = 202.113, z = 1089.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1018, gadget_id = 70220005, pos = { x = -447.619, y = 201.947, z = 1083.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 1019, gadget_id = 70220005, pos = { x = -448.500, y = 201.947, z = 1084.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 1007, shape = RegionShape.SPHERE, radius = 50, pos = { x = -465.567, y = 193.777, z = 1072.665 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1001006, name = "GROUP_LOAD_1006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1006" },
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1007", trigger_count = 0 },
	{ config_id = 1001015, name = "ANY_MONSTER_DIE_1015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1015", action = "action_EVENT_ANY_MONSTER_DIE_1015" }
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
		monsters = { 1003, 1004, 1005, 1009, 1010 },
		gadgets = { 1001, 1002, 1008, 1011, 1012, 1013, 1016, 1017, 1018, 1019 },
		regions = { 1007 },
		triggers = { "GROUP_LOAD_1006", "ENTER_REGION_1007", "ANY_MONSTER_DIE_1015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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

-- 触发操作
function action_EVENT_GROUP_LOAD_1006(context, evt)
	-- 创建id为1014的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 1014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1015(context, evt)
	-- 将configid为 1014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end