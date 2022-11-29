-- 基础信息
local base_info = {
	group_id = 133104576
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
	{ config_id = 576001, gadget_id = 70220008, pos = { x = 298.925, y = 220.148, z = 203.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 576002, gadget_id = 70220008, pos = { x = 297.993, y = 220.103, z = 200.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 576003, gadget_id = 70220008, pos = { x = 301.558, y = 220.264, z = 201.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 检测剩余gadget
	{ config_id = 1576004, name = "ANY_GADGET_DIE_576004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_576004", action = "action_EVENT_ANY_GADGET_DIE_576004", trigger_count = 0 }
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
		gadgets = { 576001, 576002, 576003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_576004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_576004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104576}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_576004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104576") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end