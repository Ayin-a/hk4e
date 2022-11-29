-- 基础信息
local base_info = {
	group_id = 133105067
}

-- DEFS_MISCS
local defs = {
    group_id = 133105067,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 67001, monster_id = 21020501, pos = { x = 403.374, y = 201.148, z = -67.484 }, rot = { x = 0.000, y = 102.156, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", affix = { 4145 }, isOneoff = true, area_id = 9 },
	{ config_id = 67003, monster_id = 21010401, pos = { x = 403.429, y = 200.958, z = -75.891 }, rot = { x = 0.000, y = 39.929, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9003, area_id = 9 },
	{ config_id = 67004, monster_id = 21010401, pos = { x = 405.480, y = 201.023, z = -77.661 }, rot = { x = 0.000, y = 39.929, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9003, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 67006, gadget_id = 70350201, pos = { x = 439.704, y = 206.368, z = -76.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 67007, gadget_id = 70350201, pos = { x = 416.239, y = 209.254, z = -55.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 9 },
	-- 宝箱
	{ config_id = 67009, gadget_id = 70210114, pos = { x = 411.059, y = 201.033, z = -69.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 67011, shape = RegionShape.SPHERE, radius = 40, pos = { x = 405.037, y = 201.034, z = -71.359 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1067008, name = "GROUP_LOAD_67008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_67008", action = "action_EVENT_GROUP_LOAD_67008", trigger_count = 0 },
	{ config_id = 1067010, name = "ANY_MONSTER_DIE_67010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67010", action = "action_EVENT_ANY_MONSTER_DIE_67010" },
	{ config_id = 1067011, name = "ENTER_REGION_67011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_67011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 67002, monster_id = 21010401, pos = { x = 401.587, y = 201.030, z = -74.327 }, rot = { x = 0.000, y = 39.929, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9003, area_id = 9 },
		{ config_id = 67005, monster_id = 21010401, pos = { x = 407.465, y = 201.237, z = -79.708 }, rot = { x = 0.000, y = 39.929, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9003, area_id = 9 }
	},
	triggers = {
		{ config_id = 1067012, name = "ANY_MONSTER_DIE_67012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_67012", trigger_count = 3 }
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
		monsters = { 67001, 67003, 67004 },
		gadgets = { 67006, 67007 },
		regions = { 67011 },
		triggers = { "GROUP_LOAD_67008", "ANY_MONSTER_DIE_67010", "ENTER_REGION_67011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_67008(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_67008(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 67009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67010(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 67009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_67011(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

require "V2_3/EnergyDisk"