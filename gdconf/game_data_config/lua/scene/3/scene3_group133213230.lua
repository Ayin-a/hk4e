-- 基础信息
local base_info = {
	group_id = 133213230
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 230001, monster_id = 25100201, pos = { x = -3369.164, y = 199.637, z = -3005.473 }, rot = { x = 0.000, y = 286.293, z = 0.000 }, level = 28, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 230004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3370.935, y = 200.000, z = -3006.226 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1230004, name = "ENTER_REGION_230004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_230004", action = "action_EVENT_ENTER_REGION_230004" }
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
		regions = { 230004 },
		triggers = { "ENTER_REGION_230004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 230001 },
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
function condition_EVENT_ENTER_REGION_230004(context, evt)
	if evt.param1 ~= 230004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_230004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213230, 2)
	
	return 0
end