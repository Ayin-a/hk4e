-- 基础信息
local base_info = {
	group_id = 133301646
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 646001, monster_id = 26090801, pos = { x = -324.582, y = 172.040, z = 3984.220 }, rot = { x = 0.000, y = 141.470, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 646002, monster_id = 26090801, pos = { x = -311.867, y = 171.879, z = 3978.879 }, rot = { x = 0.000, y = 255.017, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 646003, monster_id = 26090801, pos = { x = -313.543, y = 171.547, z = 3973.178 }, rot = { x = 0.000, y = 331.499, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 646004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -315.025, y = 171.211, z = 3978.636 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1646004, name = "ENTER_REGION_646004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_646004", action = "action_EVENT_ENTER_REGION_646004" }
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
		regions = { 646004 },
		triggers = { "ENTER_REGION_646004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 646001, 646002, 646003 },
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
function condition_EVENT_ENTER_REGION_646004(context, evt)
	if evt.param1 ~= 646004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_646004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301646, 2)
	
	return 0
end