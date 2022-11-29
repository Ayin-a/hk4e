-- 基础信息
local base_info = {
	group_id = 133104668
}

-- DEFS_MISCS
local defs = {
    group_id = 133104668,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 668001, monster_id = 21010201, pos = { x = 979.531, y = 238.937, z = 921.453 }, rot = { x = 0.000, y = 312.813, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9016, area_id = 6 },
	{ config_id = 668002, monster_id = 21010201, pos = { x = 975.766, y = 238.735, z = 921.312 }, rot = { x = 0.000, y = 44.513, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9016, area_id = 6 },
	{ config_id = 668003, monster_id = 21020201, pos = { x = 972.221, y = 238.765, z = 917.972 }, rot = { x = 0.000, y = 47.528, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 6 },
	{ config_id = 668005, monster_id = 21010101, pos = { x = 980.075, y = 238.543, z = 925.697 }, rot = { x = 0.000, y = 226.563, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9016, area_id = 6 },
	{ config_id = 668006, monster_id = 21010101, pos = { x = 975.564, y = 238.307, z = 925.114 }, rot = { x = 0.000, y = 133.330, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9016, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 668004, gadget_id = 70350201, pos = { x = 995.457, y = 242.301, z = 905.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 668008, gadget_id = 70350201, pos = { x = 970.734, y = 240.533, z = 907.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 668012, gadget_id = 70210114, pos = { x = 977.521, y = 238.614, z = 923.391 }, rot = { x = 0.000, y = 317.310, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 668015, shape = RegionShape.SPHERE, radius = 40, pos = { x = 974.087, y = 239.069, z = 917.379 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1668009, name = "ANY_MONSTER_DIE_668009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_668009", action = "action_EVENT_ANY_MONSTER_DIE_668009" },
	{ config_id = 1668011, name = "GROUP_LOAD_668011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_668011", action = "action_EVENT_GROUP_LOAD_668011", trigger_count = 0 },
	{ config_id = 1668013, name = "GADGET_STATE_CHANGE_668013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_668013", action = "action_EVENT_GADGET_STATE_CHANGE_668013" },
	{ config_id = 1668015, name = "ENTER_REGION_668015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_668015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 668007, monster_id = 21030401, pos = { x = 982.660, y = 238.538, z = 928.153 }, rot = { x = 0.000, y = 231.286, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9012, area_id = 6 },
		{ config_id = 668010, monster_id = 21010401, pos = { x = 972.654, y = 237.683, z = 927.687 }, rot = { x = 0.000, y = 314.668, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 4145 }, isOneoff = true, pose_id = 9016, area_id = 6 }
	},
	triggers = {
		{ config_id = 1668014, name = "ANY_MONSTER_DIE_668014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_668014", trigger_count = 5 }
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
		monsters = { 668001, 668002, 668003, 668005, 668006 },
		gadgets = { 668004, 668008 },
		regions = { 668015 },
		triggers = { "ANY_MONSTER_DIE_668009", "GROUP_LOAD_668011", "GADGET_STATE_CHANGE_668013", "ENTER_REGION_668015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_668009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_668009(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 668012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_668011(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_668011(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 668012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_668013(context, evt)
	if 668012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_668013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331046681") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_668015(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

require "V2_3/EnergyDisk"