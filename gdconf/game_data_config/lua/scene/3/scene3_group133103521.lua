-- 基础信息
local base_info = {
	group_id = 133103521
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
	{ config_id = 521001, gadget_id = 70500000, pos = { x = 924.188, y = 381.555, z = 1368.503 }, rot = { x = 3.724, y = 0.062, z = 1.904 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 521002, gadget_id = 70500000, pos = { x = 921.625, y = 380.993, z = 1371.182 }, rot = { x = 36.440, y = 0.356, z = 1.083 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 521003, gadget_id = 70360001, pos = { x = 922.182, y = 384.538, z = 1365.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 521004, gadget_id = 70500000, pos = { x = 919.760, y = 379.226, z = 1373.467 }, rot = { x = 29.934, y = 330.867, z = 6.709 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 521005, gadget_id = 70500000, pos = { x = 920.261, y = 382.471, z = 1368.010 }, rot = { x = 15.589, y = 340.275, z = 359.763 }, level = 1, point_type = 1005, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1521006, name = "GROUP_REFRESH_521006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_521006" },
	{ config_id = 1521007, name = "ANY_GADGET_DIE_521007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_521007", trigger_count = 0 },
	{ config_id = 1521008, name = "BLOSSOM_PROGRESS_FINISH_521008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_521008" },
	{ config_id = 1521009, name = "GROUP_LOAD_521009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_521009" }
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
		triggers = { "GROUP_LOAD_521009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_521006", "ANY_GADGET_DIE_521007", "BLOSSOM_PROGRESS_FINISH_521008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 521001, 521002, 521003, 521004, 521005 },
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
function action_EVENT_GROUP_REFRESH_521006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103521, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103521, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_521007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133103521)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_521008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103521, 3) then
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
function action_EVENT_GROUP_LOAD_521009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end