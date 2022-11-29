-- 基础信息
local base_info = {
	group_id = 133217148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148001, monster_id = 28020502, pos = { x = -4705.557, y = 214.200, z = -3680.240 }, rot = { x = 0.000, y = 77.538, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 148002, monster_id = 28020504, pos = { x = -4712.326, y = 214.155, z = -3679.333 }, rot = { x = 0.000, y = 86.474, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 148003, monster_id = 28020506, pos = { x = -4705.920, y = 214.405, z = -3676.352 }, rot = { x = 0.000, y = 149.242, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 148004, gadget_id = 70710110, pos = { x = -4708.762, y = 214.257, z = -3677.641 }, rot = { x = 0.000, y = 0.000, z = 4.853 }, level = 1, interact_id = 49, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1148005, name = "GADGET_STATE_CHANGE_148005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148005", action = "action_EVENT_GADGET_STATE_CHANGE_148005", trigger_count = 0 },
	{ config_id = 1148006, name = "ANY_MONSTER_DIE_148006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_148006", trigger_count = 0 }
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
	rand_suite = true
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
		monsters = { 148001, 148002, 148003 },
		gadgets = { 148004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_148005", "ANY_MONSTER_DIE_148006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148005(context, evt)
	if 148004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22042WEISHI") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22042DAMAO") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end