-- 基础信息
local base_info = {
	group_id = 133213030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30004, monster_id = 25100101, pos = { x = -3586.832, y = 249.317, z = -3236.832 }, rot = { x = 0.000, y = 31.529, z = 0.000 }, level = 28, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 30005, monster_id = 25100201, pos = { x = -3586.691, y = 250.097, z = -3229.449 }, rot = { x = 0.000, y = 94.808, z = 0.000 }, level = 28, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 30001, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3584.113, y = 249.398, z = -3231.482 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1030001, name = "ENTER_REGION_30001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30001", action = "action_EVENT_ENTER_REGION_30001" }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 30004, 30005 }
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
		regions = { 30001 },
		triggers = { "ENTER_REGION_30001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 30004, 30005 },
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
function condition_EVENT_ENTER_REGION_30001(context, evt)
	if evt.param1 ~= 30001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213030, 2)
	
	return 0
end