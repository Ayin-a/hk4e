-- 基础信息
local base_info = {
	group_id = 133003495
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
	{ config_id = 495004, npc_id = 10094, pos = { x = 2406.855, y = 210.721, z = -1107.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 }
}

-- 装置
gadgets = {
	{ config_id = 495002, gadget_id = 71700077, pos = { x = 2407.138, y = 211.535, z = -1107.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 495003, gadget_id = 71700083, pos = { x = 2407.628, y = 210.591, z = -1106.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 495001, shape = RegionShape.SPHERE, radius = 5.6, pos = { x = 2408.117, y = 210.484, z = -1104.004 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1495001, name = "ENTER_REGION_495001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_495001", action = "action_EVENT_ENTER_REGION_495001" }
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
		npcs = { 495004 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 495003 },
		regions = { },
		triggers = { },
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
function condition_EVENT_ENTER_REGION_495001(context, evt)
	if evt.param1 ~= 495001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_495001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003495") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end