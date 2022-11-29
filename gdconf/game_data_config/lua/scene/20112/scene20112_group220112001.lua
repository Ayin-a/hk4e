-- 基础信息
local base_info = {
	group_id = 220112001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29060101, pos = { x = 487.626, y = 100.544, z = 477.251 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, title_id = 151, special_name_id = 8, mark_flag = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 42906005, pos = { x = 492.268, y = 100.544, z = 488.951 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, mark_flag = 10 },
	{ config_id = 1003, gadget_id = 70290108, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 42906006, pos = { x = 492.268, y = 100.544, z = 488.951 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, mark_flag = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "ANY_MONSTER_DIE_1004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1004", action = "action_EVENT_ANY_MONSTER_DIE_1004" },
	{ config_id = 1001006, name = "GADGET_STATE_CHANGE_1006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1006", action = "action_EVENT_GADGET_STATE_CHANGE_1006" }
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
		monsters = { 1001 },
		gadgets = { 1002, 1003, 1005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220112001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20080301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1006(context, evt)
	if 1005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20080301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "point" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "point", 1, 220112002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end