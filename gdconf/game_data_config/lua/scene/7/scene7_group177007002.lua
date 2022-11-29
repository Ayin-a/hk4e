-- 基础信息
local base_info = {
	group_id = 177007002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20010601, pos = { x = 345.697, y = 289.176, z = 381.571 }, rot = { x = 0.000, y = 237.648, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 210 },
	{ config_id = 2003, monster_id = 20011501, pos = { x = 343.851, y = 289.099, z = 375.686 }, rot = { x = 0.000, y = 316.179, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 210 },
	{ config_id = 2004, monster_id = 20011301, pos = { x = 336.725, y = 289.176, z = 374.436 }, rot = { x = 0.000, y = 44.323, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2006, gadget_id = 70330138, pos = { x = 341.498, y = 289.191, z = 378.305 }, rot = { x = 0.000, y = 320.597, z = 0.000 }, level = 1, state = GadgetState.GearAction2, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 2008, shape = RegionShape.SPHERE, radius = 15, pos = { x = 341.975, y = 290.137, z = 378.556 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "GADGET_STATE_CHANGE_2002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2002", action = "action_EVENT_GADGET_STATE_CHANGE_2002", trigger_count = 0 },
	{ config_id = 1002008, name = "ENTER_REGION_2008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2008", action = "action_EVENT_ENTER_REGION_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "SELECT_OPTION_2009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2009", action = "action_EVENT_SELECT_OPTION_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "CHALLENGE_SUCCESS_2010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "CHALLENGE_FAIL_2011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2011", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 2006 },
		regions = { 2008 },
		triggers = { "GADGET_STATE_CHANGE_2002", "ENTER_REGION_2008", "SELECT_OPTION_2009", "CHALLENGE_SUCCESS_2010", "CHALLENGE_FAIL_2011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2001, 2003, 2004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_2002(context, evt)
	if 2006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177007002, 2006, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2008(context, evt)
	if evt.param1 ~= 2008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2008(context, evt)
	ScriptLib.AddRegionalPlayVarValue(context, context.uid, 2501, 100)
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,156,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2009(context, evt)
	-- 判断是gadgetid 2006 option_id 175
	if 2006 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2009(context, evt)
	-- 删除指定group： 177007002 ；指定config：2006；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177007002, 2006, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为1（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 2, 120, 177007002, 3, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177007002, 3)
	
	-- 将configid为 2006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177007003, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400471601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 2006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 177007002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end