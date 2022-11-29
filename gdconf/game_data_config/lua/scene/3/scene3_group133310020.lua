-- 基础信息
local base_info = {
	group_id = 133310020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20012, monster_id = 26091001, pos = { x = -3305.775, y = 199.616, z = 4612.750 }, rot = { x = 0.000, y = 166.925, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 20015, monster_id = 21020101, pos = { x = -3322.552, y = 203.181, z = 4583.248 }, rot = { x = 0.000, y = 91.094, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", area_id = 28 },
	{ config_id = 20017, monster_id = 20010601, pos = { x = -3324.347, y = 204.816, z = 4591.439 }, rot = { x = 0.000, y = 64.940, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 28 },
	{ config_id = 20020, monster_id = 20060301, pos = { x = -3288.919, y = 189.478, z = 4586.801 }, rot = { x = 0.000, y = 265.730, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 28 },
	{ config_id = 20023, monster_id = 26090101, pos = { x = -3288.986, y = 191.605, z = 4598.182 }, rot = { x = 0.000, y = 187.154, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- a
	{ config_id = 20001, gadget_id = 70330262, pos = { x = -3290.069, y = 203.270, z = 4618.187 }, rot = { x = 0.000, y = 281.181, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 20003, gadget_id = 70330451, pos = { x = -3295.490, y = 237.090, z = 4592.782 }, rot = { x = 13.377, y = 110.111, z = 0.000 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 },
	-- b
	{ config_id = 20004, gadget_id = 70330262, pos = { x = -3296.673, y = 198.715, z = 4617.183 }, rot = { x = 0.000, y = 331.631, z = 15.638 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	-- c
	{ config_id = 20005, gadget_id = 70330262, pos = { x = -3326.313, y = 207.762, z = 4581.677 }, rot = { x = 330.634, y = 245.245, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	-- d
	{ config_id = 20006, gadget_id = 70330262, pos = { x = -3326.896, y = 210.932, z = 4596.505 }, rot = { x = 27.656, y = 235.380, z = 33.328 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	-- e
	{ config_id = 20007, gadget_id = 70330262, pos = { x = -3285.540, y = 190.663, z = 4583.221 }, rot = { x = 5.881, y = 286.288, z = 339.527 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	-- f
	{ config_id = 20008, gadget_id = 70330262, pos = { x = -3282.838, y = 194.005, z = 4599.319 }, rot = { x = 356.077, y = 265.418, z = 16.848 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 20009, gadget_id = 70330434, pos = { x = -3306.854, y = 197.964, z = 4594.372 }, rot = { x = 354.476, y = 2.560, z = 338.025 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020002, name = "ANY_GADGET_DIE_20002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_20002", action = "action_EVENT_ANY_GADGET_DIE_20002", trigger_count = 0 },
	{ config_id = 1020010, name = "GROUP_LOAD_20010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_20010", action = "action_EVENT_GROUP_LOAD_20010", trigger_count = 0 },
	-- 4
	{ config_id = 1020011, name = "ANY_GADGET_DIE_20011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_20011", action = "action_EVENT_ANY_GADGET_DIE_20011" },
	-- 5
	{ config_id = 1020014, name = "ANY_GADGET_DIE_20014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_20014", action = "action_EVENT_ANY_GADGET_DIE_20014" },
	-- 6
	{ config_id = 1020016, name = "ANY_GADGET_DIE_20016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_20016", action = "action_EVENT_ANY_GADGET_DIE_20016" },
	-- 7
	{ config_id = 1020019, name = "ANY_GADGET_DIE_20019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_20019", action = "action_EVENT_ANY_GADGET_DIE_20019" },
	-- 8
	{ config_id = 1020022, name = "ANY_GADGET_DIE_20022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_20022", action = "action_EVENT_ANY_GADGET_DIE_20022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 20013, monster_id = 26090601, pos = { x = -3302.180, y = 198.113, z = 4611.362 }, rot = { x = 0.000, y = 154.389, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
		{ config_id = 20018, monster_id = 20010601, pos = { x = -3323.974, y = 205.202, z = 4596.508 }, rot = { x = 0.000, y = 135.300, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 28 },
		{ config_id = 20021, monster_id = 20060301, pos = { x = -3290.649, y = 189.863, z = 4581.863 }, rot = { x = 0.000, y = 313.820, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 28 },
		{ config_id = 20024, monster_id = 26091001, pos = { x = -3288.810, y = 190.839, z = 4593.106 }, rot = { x = 0.000, y = 293.075, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 }
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
	end_suite = 2,
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
		gadgets = { 20001, 20003, 20004, 20005, 20006, 20007, 20008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_20002", "GROUP_LOAD_20010", "ANY_GADGET_DIE_20011", "ANY_GADGET_DIE_20014", "ANY_GADGET_DIE_20016", "ANY_GADGET_DIE_20019", "ANY_GADGET_DIE_20022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 20009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 20012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 20015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 20017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 20020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 20023 },
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
function condition_EVENT_ANY_GADGET_DIE_20002(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133310020}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20002(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为101 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 101, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 20003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310020, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_20010(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_20010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 20003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310020, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_20011(context, evt)
	if 20004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310020, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_20014(context, evt)
	if 20005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20014(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310020, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_20016(context, evt)
	if 20006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20016(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310020, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_20019(context, evt)
	if 20007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20019(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310020, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_20022(context, evt)
	if 20008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20022(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310020, 8)
	
	return 0
end