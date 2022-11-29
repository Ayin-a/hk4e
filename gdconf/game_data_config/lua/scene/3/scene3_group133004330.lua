-- 基础信息
local base_info = {
	group_id = 133004330
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
	{ config_id = 330001, gadget_id = 70500000, pos = { x = 2376.607, y = 283.922, z = -331.288 }, rot = { x = 341.136, y = 358.933, z = 6.252 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 330002, gadget_id = 70500000, pos = { x = 2388.123, y = 286.306, z = -333.107 }, rot = { x = 11.576, y = 2.106, z = 20.557 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 330003, gadget_id = 70360001, pos = { x = 2381.691, y = 287.829, z = -328.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	{ config_id = 330004, gadget_id = 70500000, pos = { x = 2382.034, y = 285.256, z = -328.631 }, rot = { x = 345.123, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 3 },
	{ config_id = 330005, gadget_id = 70500000, pos = { x = 2379.367, y = 284.731, z = -329.782 }, rot = { x = 338.747, y = 358.994, z = 5.356 }, level = 1, point_type = 1005, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1330006, name = "GROUP_REFRESH_330006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_330006" },
	{ config_id = 1330007, name = "ANY_GADGET_DIE_330007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_330007", trigger_count = 0 },
	{ config_id = 1330008, name = "BLOSSOM_PROGRESS_FINISH_330008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_330008" },
	{ config_id = 1330009, name = "GROUP_LOAD_330009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_330009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		triggers = { "GROUP_LOAD_330009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_330006", "ANY_GADGET_DIE_330007", "BLOSSOM_PROGRESS_FINISH_330008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 330001, 330002, 330003, 330004, 330005 },
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

-- 触发操作
function action_EVENT_GROUP_REFRESH_330006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133004330, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004330, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_330007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133004330)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_330008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133004330, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 将本组内变量名为 "GroupCompletion" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GroupCompletion", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_330009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end