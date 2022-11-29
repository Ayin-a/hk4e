-- 基础信息
local base_info = {
	group_id = 199002193
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
	{ config_id = 193001, gadget_id = 70310332, pos = { x = 594.287, y = 197.043, z = -433.859 }, rot = { x = 0.000, y = 309.416, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 193002, gadget_id = 70360001, pos = { x = 593.780, y = 193.285, z = -432.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 193003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 594.667, y = 196.445, z = -432.440 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1193003, name = "ENTER_REGION_193003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193003", action = "action_EVENT_ENTER_REGION_193003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "appearA", value = 0, no_refresh = true },
	{ config_id = 2, name = "appearB", value = 0, no_refresh = true }
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
		gadgets = { 193002 },
		regions = { 193003 },
		triggers = { "ENTER_REGION_193003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 193001 },
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
function condition_EVENT_ENTER_REGION_193003(context, evt)
	if evt.param1 ~= 193003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"appearA"为1
	if ScriptLib.GetGroupVariableValue(context, "appearA") ~= 1 then
			return false
	end
	
	-- 判断变量"appearB"为1
	if ScriptLib.GetGroupVariableValue(context, "appearB") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_193003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002193, 2)
	
	return 0
end