-- 基础信息
local base_info = {
	group_id = 133104689
}

-- DEFS_MISCS
local defs = {
    group_id = 133104689,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 689002, monster_id = 21010402, pos = { x = 701.194, y = 239.217, z = 792.729 }, rot = { x = 0.000, y = 82.894, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9013, area_id = 6 },
	{ config_id = 689003, monster_id = 21011201, pos = { x = 669.063, y = 239.760, z = 810.052 }, rot = { x = 0.000, y = 197.618, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 4145 }, isOneoff = true, pose_id = 9003, area_id = 6 },
	{ config_id = 689009, monster_id = 21020301, pos = { x = 685.324, y = 239.218, z = 797.496 }, rot = { x = 0.000, y = 223.458, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 6 },
	{ config_id = 689011, monster_id = 21020301, pos = { x = 685.052, y = 238.964, z = 792.437 }, rot = { x = 0.000, y = 4.619, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 689004, gadget_id = 70300088, pos = { x = 705.104, y = 239.314, z = 793.425 }, rot = { x = 0.000, y = 171.753, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 689005, gadget_id = 70350201, pos = { x = 671.614, y = 240.893, z = 825.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 689006, gadget_id = 70350201, pos = { x = 646.469, y = 240.534, z = 827.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 689007, gadget_id = 70210114, pos = { x = 683.575, y = 239.179, z = 795.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 689015, gadget_id = 70300088, pos = { x = 705.359, y = 239.255, z = 791.315 }, rot = { x = 0.000, y = 171.753, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 689010, shape = RegionShape.SPHERE, radius = 60, pos = { x = 677.828, y = 239.662, z = 797.235 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1689008, name = "ANY_MONSTER_DIE_689008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_689008", action = "action_EVENT_ANY_MONSTER_DIE_689008" },
	{ config_id = 1689010, name = "ENTER_REGION_689010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_689010" },
	{ config_id = 1689014, name = "GADGET_STATE_CHANGE_689014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_689014", action = "action_EVENT_GADGET_STATE_CHANGE_689014" },
	{ config_id = 1689016, name = "GROUP_LOAD_689016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_689016", action = "action_EVENT_GROUP_LOAD_689016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 689001, monster_id = 21010402, pos = { x = 709.410, y = 239.256, z = 780.189 }, rot = { x = 0.000, y = 119.170, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9013, area_id = 6 },
		{ config_id = 689012, monster_id = 21011201, pos = { x = 683.736, y = 239.181, z = 796.221 }, rot = { x = 0.000, y = 124.094, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9012, area_id = 6 },
		{ config_id = 689013, monster_id = 21011201, pos = { x = 681.718, y = 239.339, z = 795.745 }, rot = { x = 0.000, y = 104.032, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9012, area_id = 6 }
	},
	triggers = {
		{ config_id = 1689017, name = "ANY_MONSTER_DIE_689017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_689017", trigger_count = 4 }
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
		monsters = { 689002, 689003, 689009, 689011 },
		gadgets = { 689004, 689005, 689006, 689015 },
		regions = { 689010 },
		triggers = { "ANY_MONSTER_DIE_689008", "ENTER_REGION_689010", "GADGET_STATE_CHANGE_689014", "GROUP_LOAD_689016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_689008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_689008(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 689007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_689010(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_689014(context, evt)
	if 689007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_689014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331046891") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_689016(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_689016(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 689007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_3/EnergyDisk"