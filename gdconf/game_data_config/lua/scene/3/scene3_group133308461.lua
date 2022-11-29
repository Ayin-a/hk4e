-- 基础信息
local base_info = {
	group_id = 133308461
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 461001, monster_id = 26090701, pos = { x = -1694.986, y = 258.519, z = 4411.382 }, rot = { x = 0.000, y = 302.277, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 461002, monster_id = 26090701, pos = { x = -1698.739, y = 260.081, z = 4408.507 }, rot = { x = 0.000, y = 322.341, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 461003, monster_id = 26090701, pos = { x = -1697.410, y = 258.910, z = 4415.451 }, rot = { x = 0.000, y = 256.935, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 461004, shape = RegionShape.SPHERE, radius = 10.9, pos = { x = -1696.770, y = 260.230, z = 4413.382 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1461004, name = "ENTER_REGION_461004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_461004", action = "action_EVENT_ENTER_REGION_461004" }
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
		regions = { 461004 },
		triggers = { "ENTER_REGION_461004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 461001, 461002, 461003 },
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
function condition_EVENT_ENTER_REGION_461004(context, evt)
	if evt.param1 ~= 461004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_461004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308461, 2)
	
	return 0
end