-- 基础信息
local base_info = {
	group_id = 133212597
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 597002, monster_id = 28020401, pos = { x = -3762.739, y = 228.433, z = -2094.388 }, rot = { x = 0.000, y = 218.960, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 2, area_id = 13 },
	{ config_id = 597006, monster_id = 25010301, pos = { x = -3764.038, y = 229.440, z = -2107.764 }, rot = { x = 0.000, y = 23.100, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 13 },
	{ config_id = 597007, monster_id = 25010301, pos = { x = -3768.707, y = 230.373, z = -2106.306 }, rot = { x = 0.000, y = 32.230, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 13 },
	{ config_id = 597009, monster_id = 25030201, pos = { x = -3766.893, y = 229.897, z = -2105.174 }, rot = { x = 0.000, y = 34.130, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 13 },
	{ config_id = 597011, monster_id = 25070101, pos = { x = -3764.325, y = 229.279, z = -2105.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 不可交互的笼子
	{ config_id = 597001, gadget_id = 70710221, pos = { x = -3762.561, y = 228.298, z = -2094.765 }, rot = { x = 0.000, y = 228.550, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 597014, gadget_id = 70360001, pos = { x = -3763.305, y = 228.501, z = -2095.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 1 } }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成任务4003402后执行
	{ config_id = 1597003, name = "QUEST_FINISH_597003", event = EventType.EVENT_QUEST_FINISH, source = "4003402", condition = "", action = "action_EVENT_QUEST_FINISH_597003", trigger_count = 0 },
	-- 开启笼子后用于完成任务4003403
	{ config_id = 1597004, name = "GADGET_STATE_CHANGE_597004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_597004", action = "action_EVENT_GADGET_STATE_CHANGE_597004" },
	-- 完成任务4003404后执行
	{ config_id = 1597005, name = "QUEST_FINISH_597005", event = EventType.EVENT_QUEST_FINISH, source = "4003404", condition = "", action = "action_EVENT_QUEST_FINISH_597005", trigger_count = 0 },
	{ config_id = 1597012, name = "ANY_MONSTER_DIE_597012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_597012", action = "action_EVENT_ANY_MONSTER_DIE_597012", trigger_count = 0 },
	{ config_id = 1597015, name = "SELECT_OPTION_597015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_597015", action = "action_EVENT_SELECT_OPTION_597015" }
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
		monsters = { 597002 },
		gadgets = { 597001 },
		regions = { },
		triggers = { "QUEST_FINISH_597003", "GADGET_STATE_CHANGE_597004", "QUEST_FINISH_597005", "SELECT_OPTION_597015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 597006, 597007, 597009, 597011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_597012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_597003(context, evt)
	-- 创建id为597014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 597014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_597004(context, evt)
	if 597001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_597004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4003403_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133212597, EntityType.MONSTER, 597002)
	
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133212597, EntityType.GADGET, 597014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_597005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212597, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_597012(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133212597) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_597012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4003405_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_597015(context, evt)
	-- 判断是gadgetid 597014 option_id 1
	if 597014 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_597015(context, evt)
	-- 将configid为 597001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 597001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133212597 ；指定config：597014；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212597, 597014, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end