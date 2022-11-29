-- 基础信息
local base_info = {
	group_id = 133309358
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 358001, monster_id = 28060401, pos = { x = -2545.612, y = 35.649, z = 5690.168 }, rot = { x = 0.000, y = 313.052, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 358002, monster_id = 28060401, pos = { x = -2545.051, y = 36.406, z = 5695.623 }, rot = { x = 0.000, y = 357.610, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 358004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2546.549, y = 36.080, z = 5695.642 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1358004, name = "ENTER_REGION_358004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_358004", action = "action_EVENT_ENTER_REGION_358004" }
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
		regions = { 358004 },
		triggers = { "ENTER_REGION_358004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 358001, 358002 },
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
function condition_EVENT_ENTER_REGION_358004(context, evt)
	if evt.param1 ~= 358004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_358004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309358, 2)
	
	return 0
end