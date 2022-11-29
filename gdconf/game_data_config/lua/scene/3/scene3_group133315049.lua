-- 基础信息
local base_info = {
	group_id = 133315049
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49005, monster_id = 23050101, pos = { x = 245.188, y = 243.484, z = 2340.426 }, rot = { x = 0.000, y = 45.617, z = 0.000 }, level = 27, drop_tag = "藏镜侍女", area_id = 20 },
	{ config_id = 49006, monster_id = 23030101, pos = { x = 233.227, y = 246.745, z = 2338.075 }, rot = { x = 0.000, y = 45.617, z = 0.000 }, level = 27, drop_tag = "召唤师", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 49004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 237.222, y = 247.168, z = 2335.681 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1049004, name = "ENTER_REGION_49004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49004", action = "action_EVENT_ENTER_REGION_49004" }
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
		monsters = { 49005 },
		gadgets = { },
		regions = { 49004 },
		triggers = { "ENTER_REGION_49004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 49006 },
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
function condition_EVENT_ENTER_REGION_49004(context, evt)
	if evt.param1 ~= 49004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315049, 2)
	
	return 0
end