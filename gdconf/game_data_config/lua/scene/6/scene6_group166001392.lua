-- 基础信息
local base_info = {
	group_id = 166001392
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 392003, monster_id = 23050101, pos = { x = 949.567, y = 961.054, z = 537.795 }, rot = { x = 0.000, y = 117.123, z = 0.000 }, level = 36, drop_tag = "藏镜侍女", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 392004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 952.802, y = 961.120, z = 535.309 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1392004, name = "ENTER_REGION_392004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_392004", action = "action_EVENT_ENTER_REGION_392004" }
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
		regions = { 392004 },
		triggers = { "ENTER_REGION_392004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 392003 },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_392004(context, evt)
	if evt.param1 ~= 392004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_392004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001392, 2)
	
	return 0
end