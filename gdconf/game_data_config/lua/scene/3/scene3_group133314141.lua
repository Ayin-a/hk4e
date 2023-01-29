-- 基础信息
local base_info = {
	group_id = 133314141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 21010701, pos = { x = -912.893, y = -22.001, z = 4497.541 }, rot = { x = 0.000, y = 246.550, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 32 },
	{ config_id = 141002, monster_id = 21010701, pos = { x = -934.078, y = -22.193, z = 4498.929 }, rot = { x = 0.000, y = 157.881, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 32 },
	{ config_id = 141003, monster_id = 21010701, pos = { x = -935.176, y = -21.884, z = 4487.785 }, rot = { x = 0.000, y = 44.970, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9013, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 141004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -921.877, y = -22.315, z = 4491.423 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1141004, name = "ENTER_REGION_141004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_141004", action = "action_EVENT_ENTER_REGION_141004" }
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
		regions = { 141004 },
		triggers = { "ENTER_REGION_141004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 141001, 141002, 141003 },
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
function condition_EVENT_ENTER_REGION_141004(context, evt)
	if evt.param1 ~= 141004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_141004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314141, 2)
	
	return 0
end