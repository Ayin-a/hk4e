-- 基础信息
local base_info = {
	group_id = 144001144
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 20011001, pos = { x = 758.182, y = 182.802, z = 204.442 }, rot = { x = 0.000, y = 24.550, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 },
	{ config_id = 144002, monster_id = 20011001, pos = { x = 759.670, y = 182.802, z = 203.217 }, rot = { x = 0.000, y = 24.550, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 },
	{ config_id = 144003, monster_id = 20011001, pos = { x = 756.699, y = 182.802, z = 203.309 }, rot = { x = 0.000, y = 24.550, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 144004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 756.407, y = 180.876, z = 203.414 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1144004, name = "ENTER_REGION_144004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_144004", action = "action_EVENT_ENTER_REGION_144004" }
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
		regions = { 144004 },
		triggers = { "ENTER_REGION_144004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 144001, 144002, 144003 },
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
function condition_EVENT_ENTER_REGION_144004(context, evt)
	if evt.param1 ~= 144004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_144004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001144, 2)
	
	return 0
end