-- 基础信息
local base_info = {
	group_id = 199001027
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
	{ config_id = 27001, gadget_id = 70360001, pos = { x = -708.383, y = 192.213, z = 16.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 27002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -710.629, y = 175.216, z = 14.111 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1027002, name = "ENTER_REGION_27002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27002", action = "action_EVENT_ENTER_REGION_27002", trigger_count = 0 }
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
		gadgets = { 27001 },
		regions = { 27002 },
		triggers = { "ENTER_REGION_27002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_27002(context, evt)
	if evt.param1 ~= 27002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27002(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1012 ) then
	
	ScriptLib.AddQuestProgress(context, "quest7902211finish")
	
	ScriptLib.ShowReminder(context, 1111205) 
	end
	
	return 0
end