-- 基础信息
local base_info = {
	group_id = 133308259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 259002, monster_id = 26090901, pos = { x = -2414.086, y = 44.742, z = 4302.482 }, rot = { x = 0.000, y = 83.198, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 259003, monster_id = 26090901, pos = { x = -2409.690, y = 46.035, z = 4306.079 }, rot = { x = 0.000, y = 174.991, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 259005, monster_id = 26090901, pos = { x = -2412.316, y = 45.386, z = 4305.018 }, rot = { x = 0.000, y = 126.633, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 259004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2409.693, y = 44.742, z = 4302.566 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1259004, name = "ENTER_REGION_259004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259004", action = "action_EVENT_ENTER_REGION_259004" }
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
		regions = { 259004 },
		triggers = { "ENTER_REGION_259004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 259002, 259003, 259005 },
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
function condition_EVENT_ENTER_REGION_259004(context, evt)
	if evt.param1 ~= 259004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_259004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308259, 2)
	
	return 0
end