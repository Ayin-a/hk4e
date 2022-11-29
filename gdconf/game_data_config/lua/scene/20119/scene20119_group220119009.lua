-- 基础信息
local base_info = {
	group_id = 220119009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- BOSS战斗
	{ config_id = 9001, monster_id = 25080301, pos = { x = 33.068, y = 15.700, z = -95.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008, 1009, 1019 }, pose_id = 1004, title_id = 10053, special_name_id = 10078 },
	{ config_id = 9004, monster_id = 25080101, pos = { x = 40.063, y = 15.700, z = -89.529 }, rot = { x = 0.000, y = 337.754, z = 0.000 }, level = 1, pose_id = 1006 },
	{ config_id = 9005, monster_id = 25080101, pos = { x = 27.029, y = 15.700, z = -91.641 }, rot = { x = 0.000, y = 48.829, z = 0.000 }, level = 1, pose_id = 1001 },
	{ config_id = 9006, monster_id = 25080201, pos = { x = 26.515, y = 15.700, z = -84.702 }, rot = { x = 0.000, y = 209.463, z = 0.000 }, level = 1, pose_id = 1006 },
	{ config_id = 9007, monster_id = 25080201, pos = { x = 41.810, y = 15.700, z = -86.716 }, rot = { x = 0.000, y = 287.591, z = 0.000 }, level = 1, pose_id = 1005 },
	{ config_id = 9008, monster_id = 25080101, pos = { x = 24.398, y = 15.700, z = -86.627 }, rot = { x = 0.000, y = 50.796, z = 0.000 }, level = 1, pose_id = 1003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9009, gadget_id = 70290136, pos = { x = 17.579, y = 15.700, z = -87.185 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 9010, gadget_id = 70290136, pos = { x = 49.568, y = 15.700, z = -86.934 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 9012, gadget_id = 70360001, pos = { x = 49.769, y = 16.931, z = -86.972 }, rot = { x = 0.000, y = 268.968, z = 0.000 }, level = 1 },
	{ config_id = 9016, gadget_id = 70360001, pos = { x = 17.675, y = 17.462, z = -87.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9017, gadget_id = 70290140, pos = { x = 33.308, y = 15.660, z = -58.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 32.650, y = 15.639, z = -63.544 } }
}

-- 触发器
triggers = {
	{ config_id = 1009002, name = "ENTER_REGION_9002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9002", action = "action_EVENT_ENTER_REGION_9002" },
	{ config_id = 1009003, name = "ANY_MONSTER_DIE_9003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9003", action = "action_EVENT_ANY_MONSTER_DIE_9003" },
	{ config_id = 1009011, name = "GADGET_CREATE_9011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9011", action = "action_EVENT_GADGET_CREATE_9011" },
	{ config_id = 1009013, name = "SELECT_OPTION_9013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9013", action = "action_EVENT_SELECT_OPTION_9013" },
	{ config_id = 1009014, name = "SELECT_OPTION_9014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9014", action = "action_EVENT_SELECT_OPTION_9014" },
	{ config_id = 1009015, name = "GADGET_CREATE_9015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9015", action = "action_EVENT_GADGET_CREATE_9015" }
}

-- 变量
variables = {
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
		monsters = { 9001, 9004, 9005, 9006, 9007, 9008 },
		gadgets = { 9009, 9010, 9012, 9016, 9017 },
		regions = { 9002 },
		triggers = { "ENTER_REGION_9002", "ANY_MONSTER_DIE_9003", "GADGET_CREATE_9011", "SELECT_OPTION_9013", "SELECT_OPTION_9014", "GADGET_CREATE_9015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_9002(context, evt)
	if evt.param1 ~= 9002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9002(context, evt)
	-- 调用提示id为 201190301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201190301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201190091") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 9009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9011(context, evt)
	if 9012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220119009, 9012, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9013(context, evt)
	-- 判断是gadgetid 9012 option_id 72
	if 9012 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9013(context, evt)
	-- 删除指定group： 220119009 ；指定config：9012；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220119009, 9012, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9014(context, evt)
	-- 判断是gadgetid 9016 option_id 72
	if 9016 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9014(context, evt)
	-- 删除指定group： 220119009 ；指定config：9016；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220119009, 9016, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9015(context, evt)
	if 9016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220119009, 9016, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end