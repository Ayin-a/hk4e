-- 基础信息
local base_info = {
	group_id = 133107937
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
	{ config_id = 937007, npc_id = 20213, pos = { x = -108.357, y = 188.249, z = 956.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 }
}

-- 装置
gadgets = {
	{ config_id = 937002, gadget_id = 70710136, pos = { x = -108.782, y = 188.252, z = 956.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 937003, gadget_id = 70710136, pos = { x = -108.784, y = 188.297, z = 956.352 }, rot = { x = 0.000, y = 34.700, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 937004, gadget_id = 70710136, pos = { x = -108.045, y = 188.195, z = 956.267 }, rot = { x = 0.000, y = 59.400, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 937005, gadget_id = 70710140, pos = { x = -108.375, y = 188.230, z = 956.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 937006, gadget_id = 70710140, pos = { x = -108.185, y = 188.225, z = 956.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 937008, gadget_id = 70300118, pos = { x = -108.353, y = 188.246, z = 956.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 937001, shape = RegionShape.SPHERE, radius = 15, pos = { x = -112.549, y = 187.381, z = 961.698 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1937001, name = "ENTER_REGION_937001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_937001", action = "action_EVENT_ENTER_REGION_937001", trigger_count = 0 },
	{ config_id = 1937009, name = "QUEST_START_937009", event = EventType.EVENT_QUEST_START, source = "7181209", condition = "", action = "action_EVENT_QUEST_START_937009", trigger_count = 0 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 937002, 937003, 937004, 937005, 937006, 937008 },
		regions = { 937001 },
		triggers = { "ENTER_REGION_937001", "QUEST_START_937009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 937002, 937003, 937004, 937005, 937006, 937008 },
		regions = { },
		triggers = { "QUEST_START_937009" },
		npcs = { 937007 },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_937001(context, evt)
	if evt.param1 ~= 937001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_937001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107937") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_937009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107937, EntityType.GADGET, 937008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end