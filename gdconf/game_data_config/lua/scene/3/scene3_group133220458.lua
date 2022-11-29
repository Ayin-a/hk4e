-- 基础信息
local base_info = {
	group_id = 133220458
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 458001, monster_id = 20010801, pos = { x = -2923.643, y = 200.000, z = -3966.365 }, rot = { x = 0.000, y = 64.927, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 458002, monster_id = 20010801, pos = { x = -2918.885, y = 200.000, z = -3965.502 }, rot = { x = 0.000, y = 266.326, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 458003, monster_id = 20010801, pos = { x = -2922.968, y = 200.000, z = -3962.191 }, rot = { x = 0.000, y = 137.296, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 458004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2921.638, y = 200.000, z = -3964.694 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1458004, name = "ENTER_REGION_458004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_458004", action = "action_EVENT_ENTER_REGION_458004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 458005, gadget_id = 70510007, pos = { x = -2921.816, y = 200.000, z = -3963.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 458004 },
		triggers = { "ENTER_REGION_458004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 458001, 458002, 458003 },
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
function condition_EVENT_ENTER_REGION_458004(context, evt)
	if evt.param1 ~= 458004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_458004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220458, 2)
	
	return 0
end