-- 基础信息
local base_info = {
	group_id = 133213248
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248001, monster_id = 22010101, pos = { x = -3713.779, y = 280.218, z = -3161.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "深渊法师", disableWander = true, climate_area_id = 3, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 248004, gadget_id = 70210101, pos = { x = -3716.097, y = 280.657, z = -3165.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 248005, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3717.282, y = 280.802, z = -3165.539 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1248005, name = "ENTER_REGION_248005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_248005", action = "action_EVENT_ENTER_REGION_248005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 248002, monster_id = 22010201, pos = { x = -3711.773, y = 280.218, z = -3163.900 }, rot = { x = 0.000, y = 285.107, z = 0.000 }, level = 28, drop_tag = "深渊法师", disableWander = true, climate_area_id = 3, area_id = 12 }
	}
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 248004 },
		regions = { 248005 },
		triggers = { "ENTER_REGION_248005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 248001 },
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
function condition_EVENT_ENTER_REGION_248005(context, evt)
	if evt.param1 ~= 248005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_248005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213248, 2)
	
	return 0
end