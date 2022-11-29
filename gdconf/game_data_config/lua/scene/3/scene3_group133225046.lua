-- 基础信息
local base_info = {
	group_id = 133225046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46004, monster_id = 21030601, pos = { x = -6340.594, y = 257.923, z = -2492.307 }, rot = { x = 0.000, y = 72.459, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 46006, monster_id = 21010301, pos = { x = -6334.249, y = 258.066, z = -2489.119 }, rot = { x = 0.000, y = 341.539, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 46007, monster_id = 21010201, pos = { x = -6335.854, y = 258.588, z = -2488.377 }, rot = { x = 0.000, y = 42.256, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 9010, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 46001, gadget_id = 70217010, pos = { x = -6334.670, y = 258.132, z = -2487.739 }, rot = { x = 28.325, y = 25.692, z = 0.000 }, level = 26, chest_drop_id = 1050153, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 46002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6336.034, y = 257.833, z = -2490.306 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1046002, name = "ENTER_REGION_46002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46002", action = "action_EVENT_ENTER_REGION_46002" },
	{ config_id = 1046005, name = "GADGET_STATE_CHANGE_46005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46005", action = "action_EVENT_GADGET_STATE_CHANGE_46005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 46003, monster_id = 21030601, pos = { x = -6341.305, y = 258.276, z = -2490.520 }, rot = { x = 0.000, y = 105.685, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 }
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
		monsters = { 46006, 46007 },
		gadgets = { 46001 },
		regions = { 46002 },
		triggers = { "ENTER_REGION_46002", "GADGET_STATE_CHANGE_46005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 46004 },
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
function condition_EVENT_ENTER_REGION_46002(context, evt)
	if evt.param1 ~= 46002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225046, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46005(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133225046, 46001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "D2_AreaC_StoneFind_2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 1, 133225093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "StoneCanPlace_A" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "StoneCanPlace_A", 1, 133225033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end