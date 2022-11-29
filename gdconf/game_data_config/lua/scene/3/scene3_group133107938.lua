-- 基础信息
local base_info = {
	group_id = 133107938
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 938006, monster_id = 20011001, pos = { x = -203.625, y = 182.699, z = 872.460 }, rot = { x = 0.000, y = 260.994, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
	{ config_id = 938007, monster_id = 20011001, pos = { x = -204.377, y = 182.710, z = 870.927 }, rot = { x = 0.000, y = 260.994, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
	{ config_id = 938008, monster_id = 20011001, pos = { x = -202.297, y = 182.875, z = 870.152 }, rot = { x = 0.000, y = 260.994, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
	{ config_id = 938009, monster_id = 20011001, pos = { x = -201.478, y = 182.873, z = 872.758 }, rot = { x = 0.000, y = 260.994, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 938001, gadget_id = 70360001, pos = { x = -202.223, y = 183.790, z = 871.321 }, rot = { x = 0.000, y = 260.994, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 938004, gadget_id = 70211112, pos = { x = -202.176, y = 182.758, z = 871.522 }, rot = { x = 0.000, y = 260.994, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 938011, gadget_id = 70300118, pos = { x = -202.567, y = 183.609, z = 871.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1938002, name = "GADGET_CREATE_938002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_938002", action = "action_EVENT_GADGET_CREATE_938002", trigger_count = 0 },
	{ config_id = 1938003, name = "SELECT_OPTION_938003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_938003", action = "action_EVENT_SELECT_OPTION_938003", trigger_count = 0 },
	{ config_id = 1938005, name = "GADGET_STATE_CHANGE_938005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_938005", action = "action_EVENT_GADGET_STATE_CHANGE_938005", trigger_count = 0 },
	{ config_id = 1938010, name = "ANY_MONSTER_DIE_938010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_938010", action = "action_EVENT_ANY_MONSTER_DIE_938010", trigger_count = 0 },
	{ config_id = 1938012, name = "QUEST_START_938012", event = EventType.EVENT_QUEST_START, source = "7181209", condition = "condition_EVENT_QUEST_START_938012", action = "action_EVENT_QUEST_START_938012", trigger_count = 0 },
	{ config_id = 1938013, name = "QUEST_START_938013", event = EventType.EVENT_QUEST_START, source = "7181209", condition = "condition_EVENT_QUEST_START_938013", action = "action_EVENT_QUEST_START_938013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest_opened", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_938012", "QUEST_START_938013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 938001, 938011 },
		regions = { },
		triggers = { "GADGET_CREATE_938002", "SELECT_OPTION_938003", "QUEST_START_938012", "QUEST_START_938013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 938006, 938007, 938008, 938009 },
		gadgets = { 938004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_938005", "ANY_MONSTER_DIE_938010", "QUEST_START_938012", "QUEST_START_938013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GADGET_CREATE_938002(context, evt)
	if 938001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_938002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_938003(context, evt)
	if 938001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_938003(context, evt)
	-- 删除指定group： 133107938 ；指定config：938001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107938, 938001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107938, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107938, EntityType.GADGET, 938011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_938005(context, evt)
	if 938004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_938005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310791301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "chest_opened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest_opened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_938010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133107938) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_938010(context, evt)
	-- 将configid为 938004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 938004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_938012(context, evt)
	-- 判断变量"chest_opened"为1
	if ScriptLib.GetGroupVariableValue(context, "chest_opened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_938012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310791301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_938013(context, evt)
	-- 判断变量"chest_opened"为0
	if ScriptLib.GetGroupVariableValue(context, "chest_opened") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_938013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107938, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end