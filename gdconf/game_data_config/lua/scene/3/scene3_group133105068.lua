-- 基础信息
local base_info = {
	group_id = 133105068
}

-- DEFS_MISCS
local defs = {
    group_id = 133105068,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 23010301, pos = { x = 798.304, y = 238.423, z = -221.071 }, rot = { x = 0.000, y = 73.180, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9001, area_id = 9 },
	{ config_id = 68002, monster_id = 23010501, pos = { x = 796.815, y = 238.680, z = -224.443 }, rot = { x = 0.000, y = 56.125, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, affix = { 4145 }, isOneoff = true, area_id = 9 },
	{ config_id = 68003, monster_id = 23010601, pos = { x = 792.598, y = 239.030, z = -222.962 }, rot = { x = 0.000, y = 247.438, z = 0.000 }, level = 1, drop_tag = "先遣队", affix = { 4145 }, isOneoff = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 68006, gadget_id = 70350201, pos = { x = 780.375, y = 244.638, z = -237.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 68007, gadget_id = 70350201, pos = { x = 806.743, y = 240.372, z = -242.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 },
	-- 宝箱
	{ config_id = 68009, gadget_id = 70210114, pos = { x = 798.565, y = 239.103, z = -231.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 68011, shape = RegionShape.SPHERE, radius = 40, pos = { x = 791.745, y = 240.351, z = -229.244 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1068004, name = "GROUP_LOAD_68004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_68004", action = "action_EVENT_GROUP_LOAD_68004", trigger_count = 0 },
	{ config_id = 1068010, name = "ANY_MONSTER_DIE_68010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_68010", action = "action_EVENT_ANY_MONSTER_DIE_68010" },
	{ config_id = 1068011, name = "ENTER_REGION_68011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_68011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1068005, name = "ANY_MONSTER_DIE_68005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_68005", trigger_count = 3 }
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
		monsters = { 68001, 68002, 68003 },
		gadgets = { 68006, 68007 },
		regions = { 68011 },
		triggers = { "GROUP_LOAD_68004", "ANY_MONSTER_DIE_68010", "ENTER_REGION_68011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_68004(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_68004(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 68009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_68010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_68010(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 68009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_68011(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

require "V2_3/EnergyDisk"