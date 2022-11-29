-- 基础信息
local base_info = {
	group_id = 133308565
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 565001, monster_id = 26090601, pos = { x = -1545.529, y = 84.552, z = 4935.262 }, rot = { x = 0.000, y = 268.162, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 565002, monster_id = 26090601, pos = { x = -1549.376, y = 84.738, z = 4929.956 }, rot = { x = 0.000, y = 13.888, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 565004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1547.965, y = 84.179, z = 4933.537 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1565004, name = "ENTER_REGION_565004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_565004", action = "action_EVENT_ENTER_REGION_565004" }
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
		regions = { 565004 },
		triggers = { "ENTER_REGION_565004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 565001, 565002 },
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
function condition_EVENT_ENTER_REGION_565004(context, evt)
	if evt.param1 ~= 565004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_565004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308565, 2)
	
	return 0
end