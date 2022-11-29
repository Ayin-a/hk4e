-- 基础信息
local base_info = {
	group_id = 220134071
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
}

-- 区域
regions = {
	{ config_id = 71001, shape = RegionShape.CUBIC, size = { x = 100.000, y = 10.000, z = 100.000 }, pos = { x = 269.503, y = 592.591, z = -1690.766 } },
	{ config_id = 71002, shape = RegionShape.CUBIC, size = { x = 100.000, y = 10.000, z = 100.000 }, pos = { x = 194.900, y = 606.657, z = -1799.836 } }
}

-- 触发器
triggers = {
	{ config_id = 1071001, name = "ENTER_REGION_71001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_71001", action = "action_EVENT_ENTER_REGION_71001", trigger_count = 0 },
	{ config_id = 1071002, name = "ENTER_REGION_71002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_71002", action = "action_EVENT_ENTER_REGION_71002", trigger_count = 0 }
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
		regions = { 71001, 71002 },
		triggers = { "ENTER_REGION_71001", "ENTER_REGION_71002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_71001(context, evt)
	if evt.param1 ~= 71001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_71001(context, evt)
	ScriptLib.AddSceneTag(context, 20136,1075 )
	ScriptLib.TransPlayerToPos(context, {uid_list = ScriptLib.GetSceneUidList(context), pos = { x=771, y=0.2, z=681}, radius = 2, rot = {x=0, y=0, z=1}, is_skip_ui=false, scene_id =20136} )
	 ScriptLib.AddQuestProgress(context, "divein")
	ScriptLib.AddSceneTag(context, 20136,1075 )
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_71002(context, evt)
	if evt.param1 ~= 71002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_71002(context, evt)
	ScriptLib.AddSceneTag(context, 20136,1075 )
	ScriptLib.TransPlayerToPos(context, {uid_list = ScriptLib.GetSceneUidList(context), pos = { x=771, y=0.2, z=681}, radius = 2, rot = {x=0, y=0, z=1}, is_skip_ui=false, scene_id =20136} )
	 ScriptLib.AddQuestProgress(context, "divein")
	ScriptLib.AddSceneTag(context, 20136,1075 )
	return 0
end