-- 基础信息
local base_info = {
	group_id = 133308645
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 645001, monster_id = 26090901, pos = { x = -1390.322, y = 43.679, z = 4646.671 }, rot = { x = 0.000, y = 225.066, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 645002, monster_id = 26090901, pos = { x = -1385.265, y = 46.758, z = 4643.610 }, rot = { x = 0.000, y = 317.513, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 645003, monster_id = 26090901, pos = { x = -1390.724, y = 44.499, z = 4640.517 }, rot = { x = 0.000, y = 8.545, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 645004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1388.016, y = 46.112, z = 4644.481 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1645004, name = "ENTER_REGION_645004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_645004", action = "action_EVENT_ENTER_REGION_645004" }
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
		regions = { 645004 },
		triggers = { "ENTER_REGION_645004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 645001, 645002, 645003 },
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
function condition_EVENT_ENTER_REGION_645004(context, evt)
	if evt.param1 ~= 645004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_645004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308645, 2)
	
	return 0
end