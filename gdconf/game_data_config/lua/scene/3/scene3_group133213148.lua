-- 基础信息
local base_info = {
	group_id = 133213148
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
	{ config_id = 148001, npc_id = 3156, pos = { x = -3196.883, y = 225.241, z = -3480.153 }, rot = { x = 0.000, y = 96.645, z = 0.000 }, area_id = 12 },
	{ config_id = 148002, npc_id = 3157, pos = { x = -3298.296, y = 227.082, z = -3501.066 }, rot = { x = 0.000, y = 232.407, z = 0.000 }, area_id = 12 },
	{ config_id = 148003, npc_id = 3158, pos = { x = -3342.740, y = 247.369, z = -3465.144 }, rot = { x = 0.000, y = 320.535, z = 0.000 }, area_id = 12 }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 148004, shape = RegionShape.SPHERE, radius = 100, pos = { x = -3270.975, y = 225.019, z = -3477.665 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1148004, name = "ENTER_REGION_148004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_148004", action = "action_EVENT_ENTER_REGION_148004", trigger_count = 0 }
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
		regions = { 148004 },
		triggers = { "ENTER_REGION_148004" },
		npcs = { 148001, 148002, 148003 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_148004(context, evt)
	if evt.param1 ~= 148004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_148004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end