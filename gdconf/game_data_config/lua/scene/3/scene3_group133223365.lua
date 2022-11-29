-- 基础信息
local base_info = {
	group_id = 133223365
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 365004, monster_id = 21010301, pos = { x = -6268.353, y = 239.850, z = -2478.920 }, rot = { x = 0.000, y = 204.784, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 365008, monster_id = 22040201, pos = { x = -6243.050, y = 235.119, z = -2480.444 }, rot = { x = 0.000, y = 13.844, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 365009, monster_id = 22040201, pos = { x = -6244.468, y = 235.659, z = -2474.185 }, rot = { x = 0.000, y = 116.098, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 365001, gadget_id = 70220090, pos = { x = -6269.339, y = 241.157, z = -2480.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 365005, gadget_id = 70220089, pos = { x = -6240.548, y = 236.524, z = -2475.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 365007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6240.634, y = 236.150, z = -2475.946 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1365003, name = "ANY_GADGET_DIE_365003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_365003", action = "action_EVENT_ANY_GADGET_DIE_365003", trigger_count = 0 },
	{ config_id = 1365007, name = "ENTER_REGION_365007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_365007", action = "action_EVENT_ENTER_REGION_365007" },
	{ config_id = 1365010, name = "ANY_GADGET_DIE_365010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_365010", action = "action_EVENT_ANY_GADGET_DIE_365010", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 365002, gadget_id = 70330114, pos = { x = -6229.516, y = 234.642, z = -2468.391 }, rot = { x = 339.256, y = 236.277, z = 79.264 }, level = 1, area_id = 18 },
		{ config_id = 365006, gadget_id = 70330114, pos = { x = -6243.277, y = 235.898, z = -2478.577 }, rot = { x = 356.048, y = 250.918, z = 32.380 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1365011, name = "ANY_GADGET_DIE_365011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_365011", trigger_count = 0 },
		{ config_id = 1365012, name = "GROUP_LOAD_365012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_365012", action = "action_EVENT_GROUP_LOAD_365012", trigger_count = 0 }
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
		monsters = { 365004 },
		gadgets = { 365001, 365005 },
		regions = { 365007 },
		triggers = { "ANY_GADGET_DIE_365003", "ENTER_REGION_365007", "ANY_GADGET_DIE_365010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 365008, 365009 },
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
function condition_EVENT_ANY_GADGET_DIE_365003(context, evt)
	if 365001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_365003(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_1_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_1_progress", 1, 133225272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_365007(context, evt)
	if evt.param1 ~= 365007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_365007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223365, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_365010(context, evt)
	if 365005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_365010(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_1_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_1_progress", 1, 133225272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end