-- 基础信息
local base_info = {
	group_id = 133007259
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
	{ config_id = 259001, gadget_id = 70500000, pos = { x = 2425.198, y = 227.019, z = 252.402 }, rot = { x = 345.943, y = 3.113, z = 335.142 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 259002, gadget_id = 70500000, pos = { x = 2426.719, y = 226.176, z = 260.354 }, rot = { x = 29.670, y = 352.905, z = 333.652 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 259003, gadget_id = 70360001, pos = { x = 2423.889, y = 227.000, z = 261.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 259004, gadget_id = 70500000, pos = { x = 2425.563, y = 227.428, z = 256.318 }, rot = { x = 1.511, y = 359.614, z = 331.322 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 259005, gadget_id = 70500000, pos = { x = 2423.370, y = 227.105, z = 263.547 }, rot = { x = 0.042, y = -0.006, z = 344.607 }, level = 1, point_type = 1005, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1259006, name = "GROUP_REFRESH_259006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_259006" },
	{ config_id = 1259007, name = "ANY_GADGET_DIE_259007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_259007", trigger_count = 0 },
	{ config_id = 1259008, name = "BLOSSOM_PROGRESS_FINISH_259008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_259008" },
	{ config_id = 1259009, name = "GROUP_LOAD_259009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_259009" }
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
		triggers = { "GROUP_LOAD_259009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_259006", "ANY_GADGET_DIE_259007", "BLOSSOM_PROGRESS_FINISH_259008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 259001, 259002, 259003, 259004, 259005 },
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
function action_EVENT_GROUP_REFRESH_259006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007259, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007259, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_259007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133007259)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_259008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007259, 3) then
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
function action_EVENT_GROUP_LOAD_259009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end