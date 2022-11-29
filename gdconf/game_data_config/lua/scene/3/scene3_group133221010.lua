-- 基础信息
local base_info = {
	group_id = 133221010
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
	{ config_id = 10002, npc_id = 20331, pos = { x = -1878.861, y = 200.137, z = -4190.230 }, rot = { x = 0.000, y = 231.660, z = 0.000 }, area_id = 11 },
	{ config_id = 10003, npc_id = 20337, pos = { x = -1881.992, y = 200.000, z = -4188.841 }, rot = { x = 0.000, y = 202.179, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 10001, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1881.920, y = 200.000, z = -4191.181 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1010001, name = "ENTER_REGION_10001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10001", action = "action_EVENT_ENTER_REGION_10001" }
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
		regions = { 10001 },
		triggers = { "ENTER_REGION_10001" },
		npcs = { 10002, 10003 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10001(context, evt)
	if evt.param1 ~= 10001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332210101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end