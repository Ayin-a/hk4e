-- 基础信息
local base_info = {
	group_id = 133308416
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 416001, monster_id = 26090901, pos = { x = -1738.007, y = 352.309, z = 4405.051 }, rot = { x = 0.000, y = 139.789, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 416002, monster_id = 26090901, pos = { x = -1732.101, y = 351.315, z = 4403.517 }, rot = { x = 0.000, y = 134.466, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 416003, monster_id = 26090901, pos = { x = -1741.634, y = 354.320, z = 4398.088 }, rot = { x = 0.000, y = 132.704, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 416004, shape = RegionShape.SPHERE, radius = 17.97, pos = { x = -1736.880, y = 353.028, z = 4399.157 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1416004, name = "ENTER_REGION_416004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_416004", action = "action_EVENT_ENTER_REGION_416004" }
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
		regions = { 416004 },
		triggers = { "ENTER_REGION_416004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 416001, 416002, 416003 },
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
function condition_EVENT_ENTER_REGION_416004(context, evt)
	if evt.param1 ~= 416004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_416004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308416, 2)
	
	return 0
end