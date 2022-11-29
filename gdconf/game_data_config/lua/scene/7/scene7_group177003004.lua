-- 基础信息
local base_info = {
	group_id = 177003004
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
	{ config_id = 4002, gadget_id = 70690013, pos = { x = 1232.538, y = 210.812, z = -712.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 4001, shape = RegionShape.SPHERE, radius = 13, pos = { x = 1255.018, y = 223.323, z = -725.385 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1004001, name = "ENTER_REGION_4001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4001", action = "action_EVENT_ENTER_REGION_4001", trigger_count = 0, forbid_guest = false }
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
		regions = { 4001 },
		triggers = { "ENTER_REGION_4001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4002 },
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
function condition_EVENT_ENTER_REGION_4001(context, evt)
	if evt.param1 ~= 4001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177003004, 2)
	
	return 0
end