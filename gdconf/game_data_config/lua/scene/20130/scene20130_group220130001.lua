-- 基础信息
local base_info = {
	group_id = 220130001
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
	{ config_id = 1002, gadget_id = 70710737, pos = { x = -17.636, y = 14.625, z = 18.927 }, rot = { x = 0.000, y = 73.273, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1003, gadget_id = 70710737, pos = { x = 2.636, y = 14.967, z = 16.471 }, rot = { x = 0.000, y = 140.874, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1004, gadget_id = 70710737, pos = { x = 30.682, y = 11.088, z = 2.748 }, rot = { x = 0.000, y = 143.824, z = 0.000 }, level = 1, room = 1 }
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 47.636, y = 12.481, z = 7.841 }, room = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1001", action = "action_EVENT_ENTER_REGION_1001" }
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
		monsters = { },
		gadgets = { 1002, 1003, 1004 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_1001(context, evt)
	if evt.param1 ~= 1001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "102913") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end