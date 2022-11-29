-- 基础信息
local base_info = {
	group_id = 133107103
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
	{ config_id = 103001, gadget_id = 70500000, pos = { x = -597.092, y = 350.657, z = 562.533 }, rot = { x = 347.028, y = 1.666, z = 345.427 }, level = 1, point_type = 1003, persistent = true, area_id = 7 },
	{ config_id = 103002, gadget_id = 70500000, pos = { x = -596.568, y = 350.866, z = 566.578 }, rot = { x = 358.536, y = 0.640, z = 312.747 }, level = 1, point_type = 1003, persistent = true, area_id = 7 },
	{ config_id = 103003, gadget_id = 70360001, pos = { x = -598.318, y = 350.962, z = 565.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	{ config_id = 103004, gadget_id = 70500000, pos = { x = -597.329, y = 349.981, z = 569.062 }, rot = { x = 7.102, y = 66.665, z = 30.625 }, level = 1, point_type = 1005, persistent = true, area_id = 7 },
	{ config_id = 103005, gadget_id = 70500000, pos = { x = -595.433, y = 347.459, z = 569.658 }, rot = { x = 344.048, y = 245.481, z = 358.667 }, level = 1, point_type = 1005, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103006, name = "GROUP_REFRESH_103006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_103006" },
	{ config_id = 1103007, name = "ANY_GADGET_DIE_103007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_103007", trigger_count = 0 },
	{ config_id = 1103008, name = "BLOSSOM_PROGRESS_FINISH_103008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_103008" },
	{ config_id = 1103009, name = "GROUP_LOAD_103009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_103009" }
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
		triggers = { "GROUP_LOAD_103009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_103006", "ANY_GADGET_DIE_103007", "BLOSSOM_PROGRESS_FINISH_103008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 103001, 103002, 103003, 103004, 103005 },
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
function action_EVENT_GROUP_REFRESH_103006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133107103, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107103, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133107103)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_103008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133107103, 3) then
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
function action_EVENT_GROUP_LOAD_103009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end