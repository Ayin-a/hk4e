-- 基础信息
local base_info = {
	group_id = 133007256
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
	{ config_id = 256001, gadget_id = 70500000, pos = { x = 2676.603, y = 211.095, z = 246.072 }, rot = { x = 34.859, y = 15.792, z = 47.669 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 256002, gadget_id = 70500000, pos = { x = 2672.949, y = 211.496, z = 246.901 }, rot = { x = 57.554, y = 22.850, z = 40.402 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 256003, gadget_id = 70360001, pos = { x = 2679.220, y = 215.386, z = 240.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 256004, gadget_id = 70500000, pos = { x = 2671.621, y = 213.867, z = 241.538 }, rot = { x = 21.955, y = 359.736, z = 358.641 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 256005, gadget_id = 70500000, pos = { x = 2675.457, y = 214.427, z = 242.582 }, rot = { x = 30.664, y = 354.463, z = 339.993 }, level = 1, point_type = 1005, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256006, name = "GROUP_REFRESH_256006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_256006" },
	{ config_id = 1256007, name = "ANY_GADGET_DIE_256007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_256007", trigger_count = 0 },
	{ config_id = 1256008, name = "BLOSSOM_PROGRESS_FINISH_256008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_256008" },
	{ config_id = 1256009, name = "GROUP_LOAD_256009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_256009" }
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
		triggers = { "GROUP_LOAD_256009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_256006", "ANY_GADGET_DIE_256007", "BLOSSOM_PROGRESS_FINISH_256008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 256001, 256002, 256003, 256004, 256005 },
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
function action_EVENT_GROUP_REFRESH_256006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007256, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007256, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_256007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133007256)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_256008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007256, 3) then
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
function action_EVENT_GROUP_LOAD_256009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end