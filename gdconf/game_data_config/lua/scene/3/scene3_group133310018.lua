-- 基础信息
local base_info = {
	group_id = 133310018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- a
	{ config_id = 18001, gadget_id = 70330262, pos = { x = -3269.312, y = 227.500, z = 4619.271 }, rot = { x = 22.481, y = 253.775, z = 9.505 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	-- b
	{ config_id = 18003, gadget_id = 70330262, pos = { x = -3272.231, y = 229.347, z = 4623.204 }, rot = { x = 308.021, y = 14.726, z = 15.661 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	-- c
	{ config_id = 18004, gadget_id = 70330262, pos = { x = -3270.845, y = 228.766, z = 4621.287 }, rot = { x = 58.142, y = 278.809, z = 40.870 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 18005, gadget_id = 70330451, pos = { x = -3294.993, y = 237.776, z = 4594.103 }, rot = { x = 16.606, y = 142.990, z = 7.246 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 18006, gadget_id = 70330451, pos = { x = -3307.440, y = 239.873, z = 4565.855 }, rot = { x = 22.414, y = 206.563, z = 19.329 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 18007, gadget_id = 70330451, pos = { x = -3309.413, y = 240.299, z = 4568.625 }, rot = { x = 0.675, y = 227.723, z = 323.425 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成
	{ config_id = 1018010, name = "ANY_GADGET_DIE_18010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_18010", action = "action_EVENT_ANY_GADGET_DIE_18010", trigger_count = 0 },
	{ config_id = 1018012, name = "GROUP_LOAD_18012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_18012", action = "action_EVENT_GROUP_LOAD_18012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "adie", value = 0, no_refresh = true },
	{ config_id = 3, name = "bdie", value = 0, no_refresh = true },
	{ config_id = 4, name = "cdie", value = 0, no_refresh = true }
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
		gadgets = { 18001, 18003, 18004, 18005, 18006, 18007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_18010", "GROUP_LOAD_18012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_18010(context, evt)
	-- 判断指定group组剩余gadget数量是否是3 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133310018}) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_18010(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308410") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为99 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 99, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310018, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_18012(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308410") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310018, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end