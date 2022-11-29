-- 基础信息
local base_info = {
	group_id = 133302098
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
	{ config_id = 98001, gadget_id = 70710407, pos = { x = -285.607, y = 246.940, z = 2775.656 }, rot = { x = 0.000, y = 86.394, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 24 },
	{ config_id = 98002, gadget_id = 70710407, pos = { x = -279.944, y = 247.129, z = 2775.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 24 },
	{ config_id = 98006, gadget_id = 70710407, pos = { x = -282.734, y = 247.059, z = 2769.625 }, rot = { x = 0.000, y = 88.491, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1098005, name = "ANY_GADGET_DIE_98005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98005", action = "action_EVENT_ANY_GADGET_DIE_98005", trigger_count = 0 }
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
		gadgets = { 98001, 98002, 98006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133302098}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q23018_01") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end