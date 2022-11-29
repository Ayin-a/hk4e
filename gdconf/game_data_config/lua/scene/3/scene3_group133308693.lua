-- 基础信息
local base_info = {
	group_id = 133308693
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
	{ config_id = 693001, gadget_id = 70360001, pos = { x = -1495.374, y = 149.706, z = 4406.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 693008, shape = RegionShape.POLYGON, pos = { x = -1497.763, y = 153.220, z = 4392.100 }, height = 47.280, point_array = { { x = -1478.603, y = 4415.156 }, { x = -1510.930, y = 4420.071 }, { x = -1516.924, y = 4368.563 }, { x = -1488.992, y = 4364.129 } }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1693008, name = "ENTER_REGION_693008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_693008", action = "action_EVENT_ENTER_REGION_693008", trigger_count = 0 }
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
		gadgets = { 693001 },
		regions = { 693008 },
		triggers = { "ENTER_REGION_693008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 693001 },
		regions = { 693008 },
		triggers = { "ENTER_REGION_693008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_693008(context, evt)
	if evt.param1 ~= 693008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_693008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305536") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end