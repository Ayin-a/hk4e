-- 基础信息
local base_info = {
	group_id = 133103294
}

-- DEFS_MISCS
local defs = {
    group_id = 133103294,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 294001, monster_id = 21010501, pos = { x = 60.280, y = 193.764, z = 1253.497 }, rot = { x = 0.000, y = 174.868, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9013, area_id = 6 },
	{ config_id = 294002, monster_id = 21011001, pos = { x = 52.208, y = 193.743, z = 1257.015 }, rot = { x = 0.000, y = 246.657, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9013, area_id = 6 },
	{ config_id = 294003, monster_id = 21020301, pos = { x = 56.654, y = 192.813, z = 1257.194 }, rot = { x = 0.000, y = 202.647, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 6 },
	{ config_id = 294019, monster_id = 21010501, pos = { x = 62.936, y = 193.550, z = 1253.262 }, rot = { x = 0.000, y = 174.868, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9013, area_id = 6 },
	{ config_id = 294020, monster_id = 21011001, pos = { x = 50.350, y = 193.707, z = 1258.869 }, rot = { x = 0.000, y = 246.657, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9013, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 294004, gadget_id = 70350201, pos = { x = 61.561, y = 190.951, z = 1266.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 294005, gadget_id = 70350201, pos = { x = 39.160, y = 199.203, z = 1276.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	-- 宝箱
	{ config_id = 294007, gadget_id = 70210114, pos = { x = 58.689, y = 191.650, z = 1260.561 }, rot = { x = 0.000, y = 208.344, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 294011, gadget_id = 70300088, pos = { x = 42.955, y = 199.382, z = 1254.457 }, rot = { x = 0.000, y = 332.623, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294013, gadget_id = 70300088, pos = { x = 64.948, y = 200.262, z = 1243.190 }, rot = { x = 0.000, y = 248.611, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294014, gadget_id = 70300088, pos = { x = 62.183, y = 200.259, z = 1242.881 }, rot = { x = 0.000, y = 269.627, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294016, gadget_id = 70300088, pos = { x = 44.212, y = 199.402, z = 1252.296 }, rot = { x = 0.000, y = 328.061, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294017, gadget_id = 70300088, pos = { x = 63.825, y = 195.699, z = 1246.160 }, rot = { x = 0.000, y = 258.007, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294018, gadget_id = 70300088, pos = { x = 46.433, y = 195.232, z = 1254.906 }, rot = { x = 0.000, y = 325.534, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294021, gadget_id = 70300102, pos = { x = 61.234, y = 190.567, z = 1265.744 }, rot = { x = 4.824, y = 359.256, z = 351.220 }, level = 1, area_id = 6 },
	{ config_id = 294022, gadget_id = 70300090, pos = { x = 54.054, y = 198.470, z = 1240.845 }, rot = { x = 0.000, y = 11.093, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294023, gadget_id = 70300088, pos = { x = 53.475, y = 203.918, z = 1241.926 }, rot = { x = 0.000, y = 289.596, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294024, gadget_id = 70300088, pos = { x = 54.924, y = 203.831, z = 1241.233 }, rot = { x = 0.000, y = 277.350, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294026, gadget_id = 70220050, pos = { x = 63.624, y = 200.267, z = 1242.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 294027, gadget_id = 70220051, pos = { x = 43.606, y = 199.373, z = 1253.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 294010, shape = RegionShape.SPHERE, radius = 40, pos = { x = 51.662, y = 193.855, z = 1257.022 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1294008, name = "ANY_MONSTER_DIE_294008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_294008", action = "action_EVENT_ANY_MONSTER_DIE_294008" },
	{ config_id = 1294010, name = "ENTER_REGION_294010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_294010" },
	{ config_id = 1294028, name = "GROUP_LOAD_294028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_294028", action = "action_EVENT_GROUP_LOAD_294028", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 294025, monster_id = 21030401, pos = { x = 57.649, y = 195.757, z = 1248.734 }, rot = { x = 0.000, y = 16.889, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9012, area_id = 6 }
	},
	gadgets = {
		{ config_id = 294006, gadget_id = 70350201, pos = { x = 64.600, y = 200.264, z = 1240.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
		{ config_id = 294012, gadget_id = 70300088, pos = { x = 63.644, y = 200.267, z = 1242.958 }, rot = { x = 0.000, y = 264.582, z = 0.000 }, level = 1, area_id = 6 },
		{ config_id = 294015, gadget_id = 70300088, pos = { x = 43.698, y = 199.402, z = 1253.297 }, rot = { x = 0.000, y = 322.836, z = 0.000 }, level = 1, area_id = 6 }
	},
	triggers = {
		{ config_id = 1294009, name = "GROUP_LOAD_294009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_294009" },
		{ config_id = 1294029, name = "ANY_MONSTER_DIE_294029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_294029", trigger_count = 5 }
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
		monsters = { 294001, 294002, 294003, 294019, 294020 },
		gadgets = { 294004, 294005, 294011, 294013, 294014, 294016, 294017, 294018, 294021, 294022, 294023, 294024, 294026, 294027 },
		regions = { 294010 },
		triggers = { "ANY_MONSTER_DIE_294008", "ENTER_REGION_294010", "GROUP_LOAD_294028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_294008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_294008(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 294007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_294010(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_294028(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_294028(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 294007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_3/EnergyDisk"