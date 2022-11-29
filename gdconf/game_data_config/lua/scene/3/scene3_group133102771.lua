-- 基础信息
local base_info = {
	group_id = 133102771
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 771001, monster_id = 20011401, pos = { x = 1918.615, y = 348.658, z = 503.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 771002, monster_id = 20011401, pos = { x = 1916.317, y = 348.465, z = 502.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 771003, monster_id = 20011401, pos = { x = 1918.400, y = 348.268, z = 500.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 771004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1917.902, y = 348.410, z = 502.432 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1771004, name = "ENTER_REGION_771004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_771004", action = "action_EVENT_ENTER_REGION_771004" }
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
		regions = { 771004 },
		triggers = { "ENTER_REGION_771004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 771001, 771002, 771003 },
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
function condition_EVENT_ENTER_REGION_771004(context, evt)
	if evt.param1 ~= 771004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_771004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102771, 2)
	
	return 0
end