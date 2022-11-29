-- 基础信息
local base_info = {
	group_id = 133220752
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 752001, monster_id = 28020803, pos = { x = -2466.641, y = 202.697, z = -4161.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 2, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 752002, gadget_id = 70360276, pos = { x = -2466.641, y = 202.697, z = -4161.123 }, rot = { x = 0.000, y = 242.913, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 752003, gadget_id = 70360273, pos = { x = -2490.583, y = 208.522, z = -4171.924 }, rot = { x = 0.000, y = 276.226, z = 0.000 }, level = 1, mark_flag = 1, area_id = 11 },
	{ config_id = 752005, gadget_id = 70210102, pos = { x = -2490.093, y = 207.218, z = -4167.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 752007, gadget_id = 70360274, pos = { x = -2486.292, y = 206.273, z = -4166.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1752004, name = "ANY_MONSTER_DIE_752004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_752004", action = "action_EVENT_ANY_MONSTER_DIE_752004", trigger_count = 0 },
	{ config_id = 1752006, name = "GADGET_STATE_CHANGE_752006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_752006", action = "action_EVENT_GADGET_STATE_CHANGE_752006", trigger_count = 0 }
}

-- 变量
variables = {
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 752001 },
		gadgets = { 752002, 752003, 752007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_752004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 752005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_752006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_752004(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_752004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220752, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_752006(context, evt)
	if 752005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_752006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220752") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end