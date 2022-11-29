-- 基础信息
local base_info = {
	group_id = 133220442
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 442001, monster_id = 20011001, pos = { x = -2636.575, y = 212.630, z = -4242.303 }, rot = { x = 0.000, y = 303.607, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 442002, monster_id = 20011001, pos = { x = -2632.908, y = 212.630, z = -4241.063 }, rot = { x = 0.000, y = 303.607, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 442003, monster_id = 20011001, pos = { x = -2638.765, y = 212.630, z = -4244.720 }, rot = { x = 0.000, y = 303.607, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 442004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2637.658, y = 212.630, z = -4240.868 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1442004, name = "ENTER_REGION_442004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_442004", action = "action_EVENT_ENTER_REGION_442004" }
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
		regions = { 442004 },
		triggers = { "ENTER_REGION_442004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 442001, 442002, 442003 },
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
function condition_EVENT_ENTER_REGION_442004(context, evt)
	if evt.param1 ~= 442004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_442004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220442, 2)
	
	return 0
end