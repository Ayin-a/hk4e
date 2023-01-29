-- 基础信息
local base_info = {
	group_id = 133313164
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 28061501, pos = { x = -281.105, y = -152.947, z = 5474.353 }, rot = { x = 0.000, y = 334.235, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 },
	{ config_id = 164002, monster_id = 28061501, pos = { x = -290.726, y = -153.967, z = 5474.570 }, rot = { x = 0.000, y = 13.784, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 164003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -291.628, y = -149.096, z = 5481.309 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1164003, name = "ENTER_REGION_164003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_164003", action = "action_EVENT_ENTER_REGION_164003" }
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
		regions = { 164003 },
		triggers = { "ENTER_REGION_164003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 164001, 164002 },
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
function condition_EVENT_ENTER_REGION_164003(context, evt)
	if evt.param1 ~= 164003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_164003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313164, 2)
	
	return 0
end