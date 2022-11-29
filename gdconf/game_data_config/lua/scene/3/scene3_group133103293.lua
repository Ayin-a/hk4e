-- 基础信息
local base_info = {
	group_id = 133103293
}

-- DEFS_MISCS
local defs = {
    group_id = 133103293,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 293001, monster_id = 21010501, pos = { x = 232.551, y = 200.768, z = 1267.396 }, rot = { x = 0.000, y = 194.051, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9003, area_id = 6 },
	{ config_id = 293002, monster_id = 21011001, pos = { x = 237.699, y = 200.783, z = 1266.110 }, rot = { x = 0.000, y = 206.362, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9003, area_id = 6 },
	{ config_id = 293003, monster_id = 21020201, pos = { x = 224.284, y = 203.810, z = 1263.484 }, rot = { x = 0.000, y = 131.578, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 6 },
	{ config_id = 293011, monster_id = 21020201, pos = { x = 241.409, y = 204.107, z = 1257.586 }, rot = { x = 0.000, y = 248.561, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 6 },
	{ config_id = 293012, monster_id = 21010201, pos = { x = 231.967, y = 206.301, z = 1257.451 }, rot = { x = 0.000, y = 18.003, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9012, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 293004, gadget_id = 70350201, pos = { x = 252.837, y = 201.741, z = 1280.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 293005, gadget_id = 70350201, pos = { x = 226.890, y = 200.225, z = 1284.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 293006, gadget_id = 70350201, pos = { x = 226.092, y = 209.711, z = 1238.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	-- 宝箱
	{ config_id = 293007, gadget_id = 70210114, pos = { x = 230.882, y = 206.328, z = 1254.361 }, rot = { x = 0.000, y = 17.745, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 293013, gadget_id = 70310001, pos = { x = 233.625, y = 206.299, z = 1255.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 293014, gadget_id = 70310001, pos = { x = 229.475, y = 206.296, z = 1256.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 293010, shape = RegionShape.SPHERE, radius = 40, pos = { x = 228.670, y = 206.005, z = 1256.573 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1293008, name = "ANY_MONSTER_DIE_293008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_293008", action = "action_EVENT_ANY_MONSTER_DIE_293008" },
	{ config_id = 1293010, name = "ENTER_REGION_293010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_293010" },
	{ config_id = 1293015, name = "GROUP_LOAD_293015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_293015", action = "action_EVENT_GROUP_LOAD_293015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1293009, name = "GROUP_LOAD_293009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_293009" },
		{ config_id = 1293016, name = "ANY_MONSTER_DIE_293016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_293016", trigger_count = 5 }
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
		monsters = { 293001, 293002, 293003, 293011, 293012 },
		gadgets = { 293004, 293005, 293006, 293013, 293014 },
		regions = { 293010 },
		triggers = { "ANY_MONSTER_DIE_293008", "ENTER_REGION_293010", "GROUP_LOAD_293015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_293008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_293008(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 293007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_293010(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_293015(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_293015(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 293007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_3/EnergyDisk"