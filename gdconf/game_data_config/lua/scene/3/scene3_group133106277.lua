-- 基础信息
local base_info = {
	group_id = 133106277
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
	{ config_id = 277001, gadget_id = 70500000, pos = { x = -892.410, y = 179.375, z = 1031.043 }, rot = { x = 340.598, y = 1.969, z = 348.517 }, level = 1, point_type = 1003, persistent = true, area_id = 8 },
	{ config_id = 277002, gadget_id = 70500000, pos = { x = -889.016, y = 178.604, z = 1029.948 }, rot = { x = 357.328, y = 0.125, z = 354.644 }, level = 1, point_type = 1003, persistent = true, area_id = 8 },
	{ config_id = 277003, gadget_id = 70360001, pos = { x = -889.123, y = 181.006, z = 1031.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 8 },
	{ config_id = 277004, gadget_id = 70500000, pos = { x = -898.785, y = 179.851, z = 1023.900 }, rot = { x = 355.060, y = 357.808, z = 347.876 }, level = 1, point_type = 1005, persistent = true, area_id = 8 },
	{ config_id = 277005, gadget_id = 70500000, pos = { x = -896.789, y = 179.665, z = 1024.829 }, rot = { x = 33.420, y = 135.790, z = 1.304 }, level = 1, point_type = 1005, persistent = true, area_id = 8 },
	{ config_id = 277010, gadget_id = 70500000, pos = { x = -885.945, y = 178.570, z = 1032.227 }, rot = { x = 342.516, y = 312.104, z = 6.287 }, level = 1, point_type = 1005, persistent = true, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1277006, name = "GROUP_REFRESH_277006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_277006" },
	{ config_id = 1277007, name = "ANY_GADGET_DIE_277007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_277007", trigger_count = 0 },
	{ config_id = 1277008, name = "BLOSSOM_PROGRESS_FINISH_277008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_277008" },
	{ config_id = 1277009, name = "GROUP_LOAD_277009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_277009" }
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
		triggers = { "GROUP_LOAD_277009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_277006", "ANY_GADGET_DIE_277007", "BLOSSOM_PROGRESS_FINISH_277008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 277001, 277002, 277003, 277004, 277005, 277010 },
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
function action_EVENT_GROUP_REFRESH_277006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133106277, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106277, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_277007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133106277)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_277008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133106277, 3) then
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
function action_EVENT_GROUP_LOAD_277009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end