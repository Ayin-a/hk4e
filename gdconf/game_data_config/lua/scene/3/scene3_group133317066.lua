-- 基础信息
local base_info = {
	group_id = 133317066
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 21010101, pos = { x = 749.208, y = 200.000, z = 6083.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 66002, monster_id = 21010101, pos = { x = 746.588, y = 200.000, z = 6080.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 66003, monster_id = 21010101, pos = { x = 750.232, y = 200.000, z = 6080.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66004, gadget_id = 70360022, pos = { x = 759.163, y = 224.004, z = 6093.824 }, rot = { x = 62.771, y = 255.402, z = 225.725 }, level = 32, area_id = 30 },
	{ config_id = 66005, gadget_id = 70220013, pos = { x = 759.163, y = 224.004, z = 6093.824 }, rot = { x = 62.771, y = 255.402, z = 225.725 }, level = 32, area_id = 30 },
	{ config_id = 66006, gadget_id = 70900440, pos = { x = 737.472, y = 200.000, z = 6082.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 66010, gadget_id = 70710010, pos = { x = 737.493, y = 200.000, z = 6084.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331700010, start_route = false, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066007, name = "ANY_GADGET_DIE_66007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_66007", action = "action_EVENT_ANY_GADGET_DIE_66007" },
	{ config_id = 1066008, name = "GADGET_STATE_CHANGE_66008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66008", action = "action_EVENT_GADGET_STATE_CHANGE_66008" },
	{ config_id = 1066009, name = "ANY_MONSTER_DIE_66009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66009", action = "action_EVENT_ANY_MONSTER_DIE_66009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Fost", value = 1, no_refresh = true }
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
		monsters = { },
		gadgets = { 66004, 66005, 66006, 66010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_66007", "GADGET_STATE_CHANGE_66008", "ANY_MONSTER_DIE_66009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 66001, 66002, 66003 },
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
function condition_EVENT_ANY_GADGET_DIE_66007(context, evt)
	if 66005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_66007(context, evt)
	-- 将configid为 66004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66008(context, evt)
	if 66004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317066, 2)
	
	-- 调用提示id为 1000230006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000230006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7332001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133317066, EntityType.GADGET, 66006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "fost1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fost1", 1, 133317032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 调用提示id为 1000230008 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000230008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end