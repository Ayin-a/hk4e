-- 基础信息
local base_info = {
	group_id = 133103518
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
	{ config_id = 518001, gadget_id = 70500000, pos = { x = 768.547, y = 324.967, z = 1484.472 }, rot = { x = 25.171, y = 356.851, z = 345.963 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 518002, gadget_id = 70500000, pos = { x = 776.745, y = 322.966, z = 1488.265 }, rot = { x = 358.224, y = 0.111, z = 352.875 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 518003, gadget_id = 70360001, pos = { x = 773.293, y = 323.081, z = 1487.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 518004, gadget_id = 70500000, pos = { x = 777.467, y = 322.336, z = 1491.261 }, rot = { x = 16.867, y = 2.091, z = 14.037 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 518005, gadget_id = 70500000, pos = { x = 770.816, y = 323.338, z = 1488.266 }, rot = { x = 15.708, y = 359.877, z = 359.105 }, level = 1, point_type = 1005, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1518006, name = "GROUP_REFRESH_518006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_518006" },
	{ config_id = 1518007, name = "ANY_GADGET_DIE_518007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_518007", trigger_count = 0 },
	{ config_id = 1518008, name = "BLOSSOM_PROGRESS_FINISH_518008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_518008" },
	{ config_id = 1518009, name = "GROUP_LOAD_518009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_518009" }
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
		triggers = { "GROUP_LOAD_518009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_518006", "ANY_GADGET_DIE_518007", "BLOSSOM_PROGRESS_FINISH_518008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 518001, 518002, 518003, 518004, 518005 },
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
function action_EVENT_GROUP_REFRESH_518006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103518, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103518, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_518007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133103518)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_518008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103518, 3) then
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
function action_EVENT_GROUP_LOAD_518009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end