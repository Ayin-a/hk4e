-- 基础信息
local base_info = {
	group_id = 133105066
}

-- DEFS_MISCS
local defs = {
    group_id = 133105066,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 21010201, pos = { x = 475.427, y = 200.304, z = -355.221 }, rot = { x = 0.000, y = 108.521, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9013, area_id = 9 },
	{ config_id = 66002, monster_id = 21010201, pos = { x = 474.813, y = 200.149, z = -358.075 }, rot = { x = 0.000, y = 102.543, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9013, area_id = 9 },
	{ config_id = 66003, monster_id = 21020301, pos = { x = 471.939, y = 200.484, z = -346.639 }, rot = { x = 0.000, y = 192.727, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 9 },
	{ config_id = 66005, monster_id = 21010401, pos = { x = 466.269, y = 200.878, z = -361.967 }, rot = { x = 0.000, y = 216.398, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, area_id = 9 },
	{ config_id = 66012, monster_id = 21010401, pos = { x = 463.645, y = 200.635, z = -360.404 }, rot = { x = 0.000, y = 208.944, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9016, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66006, gadget_id = 70350201, pos = { x = 474.539, y = 201.498, z = -369.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 66007, gadget_id = 70300081, pos = { x = 479.705, y = 200.038, z = -357.531 }, rot = { x = 0.000, y = 11.292, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 66008, gadget_id = 70300081, pos = { x = 461.573, y = 200.397, z = -365.356 }, rot = { x = 0.000, y = 137.215, z = 0.000 }, level = 1, area_id = 9 },
	-- 宝箱
	{ config_id = 66009, gadget_id = 70210114, pos = { x = 473.546, y = 200.380, z = -352.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 66013, gadget_id = 70300088, pos = { x = 464.325, y = 200.662, z = -364.549 }, rot = { x = 0.000, y = 306.355, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 66014, gadget_id = 70300088, pos = { x = 461.919, y = 200.473, z = -362.892 }, rot = { x = 0.000, y = 306.355, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 66015, gadget_id = 70300091, pos = { x = 474.587, y = 201.513, z = -369.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 66011, shape = RegionShape.SPHERE, radius = 40, pos = { x = 467.651, y = 200.312, z = -353.716 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1066010, name = "ANY_MONSTER_DIE_66010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66010", action = "action_EVENT_ANY_MONSTER_DIE_66010" },
	{ config_id = 1066011, name = "ENTER_REGION_66011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_66011" },
	{ config_id = 1066016, name = "GROUP_LOAD_66016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_66016", action = "action_EVENT_GROUP_LOAD_66016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 66004, monster_id = 21020301, pos = { x = 467.059, y = 200.512, z = -347.742 }, rot = { x = 0.000, y = 148.102, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, area_id = 9 }
	},
	triggers = {
		{ config_id = 1066017, name = "ANY_MONSTER_DIE_66017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_66017", trigger_count = 5 }
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
		monsters = { 66001, 66002, 66003, 66005, 66012 },
		gadgets = { 66006, 66007, 66008, 66013, 66014, 66015 },
		regions = { 66011 },
		triggers = { "ANY_MONSTER_DIE_66010", "ENTER_REGION_66011", "GROUP_LOAD_66016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66010(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 66009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_66011(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_66016(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_66016(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 66009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_3/EnergyDisk"