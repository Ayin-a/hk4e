-- 基础信息
local base_info = {
	group_id = 133004327
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
	{ config_id = 327001, gadget_id = 70500000, pos = { x = 2674.450, y = 222.149, z = -486.179 }, rot = { x = 328.511, y = 356.753, z = 11.483 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 327002, gadget_id = 70500000, pos = { x = 2673.485, y = 225.154, z = -483.935 }, rot = { x = 348.444, y = 1.221, z = 347.980 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 327003, gadget_id = 70360001, pos = { x = 2676.034, y = 224.224, z = -486.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 327004, gadget_id = 70500000, pos = { x = 2675.731, y = 224.454, z = -485.150 }, rot = { x = 351.683, y = 0.522, z = 352.827 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 327005, gadget_id = 70500000, pos = { x = 2669.834, y = 221.552, z = -483.039 }, rot = { x = 349.636, y = 356.895, z = 33.277 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 327010, gadget_id = 70500000, pos = { x = 2672.342, y = 224.429, z = -479.571 }, rot = { x = 350.092, y = 357.274, z = 30.701 }, level = 1, point_type = 1005, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1327006, name = "GROUP_REFRESH_327006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_327006" },
	{ config_id = 1327007, name = "ANY_GADGET_DIE_327007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_327007", trigger_count = 0 },
	{ config_id = 1327008, name = "BLOSSOM_PROGRESS_FINISH_327008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_327008" },
	{ config_id = 1327009, name = "GROUP_LOAD_327009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_327009" }
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
		triggers = { "GROUP_LOAD_327009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_327006", "ANY_GADGET_DIE_327007", "BLOSSOM_PROGRESS_FINISH_327008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 327001, 327002, 327003, 327004, 327005, 327010 },
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
function action_EVENT_GROUP_REFRESH_327006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133004327, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004327, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133004327)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_327008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133004327, 3) then
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
function action_EVENT_GROUP_LOAD_327009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end