-- 基础信息
local base_info = {
	group_id = 133313271
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271002, monster_id = 20011401, pos = { x = -963.895, y = -191.525, z = 5762.416 }, rot = { x = 0.000, y = 257.041, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 271003, monster_id = 20011401, pos = { x = -959.718, y = -190.798, z = 5757.520 }, rot = { x = 0.000, y = 289.795, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 271004, monster_id = 20011401, pos = { x = -967.137, y = -192.971, z = 5758.148 }, rot = { x = 0.000, y = 64.096, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 271001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -960.894, y = -191.385, z = 5756.325 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1271001, name = "ENTER_REGION_271001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_271001", action = "action_EVENT_ENTER_REGION_271001" }
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
		regions = { 271001 },
		triggers = { "ENTER_REGION_271001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 271002, 271003, 271004 },
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
function condition_EVENT_ENTER_REGION_271001(context, evt)
	if evt.param1 ~= 271001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_271001(context, evt)
	-- 添加suite0的新内容
	    ScriptLib.AddExtraGroupSuite(context, 2, 0)
	
	return 0
end