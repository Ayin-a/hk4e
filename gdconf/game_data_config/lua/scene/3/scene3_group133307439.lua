-- 基础信息
local base_info = {
	group_id = 133307439
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 439002, monster_id = 20011401, pos = { x = -1517.170, y = -15.073, z = 5285.578 }, rot = { x = 0.000, y = 259.574, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 439003, monster_id = 20011401, pos = { x = -1520.624, y = -16.784, z = 5285.408 }, rot = { x = 0.000, y = 179.318, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 439004, monster_id = 20011401, pos = { x = -1515.778, y = -12.860, z = 5278.111 }, rot = { x = 0.000, y = 259.403, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 439001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1518.170, y = -14.628, z = 5280.230 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1439001, name = "ENTER_REGION_439001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_439001", action = "action_EVENT_ENTER_REGION_439001" }
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
		regions = { 439001 },
		triggers = { "ENTER_REGION_439001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 439002, 439003, 439004 },
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
function condition_EVENT_ENTER_REGION_439001(context, evt)
	if evt.param1 ~= 439001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_439001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307439, 2)
	
	return 0
end