-- 基础信息
local base_info = {
	group_id = 133104674
}

-- DEFS_MISCS
local defs = {
    group_id = 133104674,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 674001, monster_id = 25020201, pos = { x = 1142.139, y = 211.341, z = 843.907 }, rot = { x = 0.000, y = 130.247, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9009, area_id = 6 },
	{ config_id = 674003, monster_id = 25060101, pos = { x = 1144.898, y = 211.572, z = 841.894 }, rot = { x = 0.000, y = 273.372, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9006, area_id = 6 },
	{ config_id = 674004, monster_id = 25010201, pos = { x = 1142.427, y = 211.324, z = 852.939 }, rot = { x = 0.000, y = 148.570, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9004, area_id = 6 },
	{ config_id = 674006, monster_id = 25010201, pos = { x = 1141.274, y = 210.891, z = 849.741 }, rot = { x = 0.000, y = 86.894, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9004, area_id = 6 },
	{ config_id = 674011, monster_id = 25030201, pos = { x = 1145.096, y = 211.357, z = 850.345 }, rot = { x = 0.000, y = 279.515, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9002, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 674005, gadget_id = 70350201, pos = { x = 1153.655, y = 211.942, z = 849.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 674007, gadget_id = 70210114, pos = { x = 1139.162, y = 210.569, z = 846.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 674012, gadget_id = 70310006, pos = { x = 1143.358, y = 211.243, z = 850.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 674010, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1144.681, y = 211.254, z = 848.688 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1674008, name = "ANY_MONSTER_DIE_674008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_674008", action = "action_EVENT_ANY_MONSTER_DIE_674008" },
	{ config_id = 1674009, name = "GADGET_STATE_CHANGE_674009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674009", action = "action_EVENT_GADGET_STATE_CHANGE_674009" },
	{ config_id = 1674010, name = "ENTER_REGION_674010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_674010" },
	{ config_id = 1674013, name = "GROUP_LOAD_674013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_674013", action = "action_EVENT_GROUP_LOAD_674013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 674002, monster_id = 25010401, pos = { x = 1141.869, y = 211.316, z = 839.834 }, rot = { x = 0.000, y = 68.510, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 9009, area_id = 6 }
	},
	triggers = {
		{ config_id = 1674014, name = "ANY_MONSTER_DIE_674014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_674014", trigger_count = 5 }
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
		monsters = { 674001, 674003, 674004, 674006, 674011 },
		gadgets = { 674005, 674012 },
		regions = { 674010 },
		triggers = { "ANY_MONSTER_DIE_674008", "GADGET_STATE_CHANGE_674009", "ENTER_REGION_674010", "GROUP_LOAD_674013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_674008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_674008(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 674007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_674009(context, evt)
	if 674007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_674009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331046741") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_674010(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_674013(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_674013(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 674007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_3/EnergyDisk"