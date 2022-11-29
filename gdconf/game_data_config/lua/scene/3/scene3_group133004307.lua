-- 基础信息
local base_info = {
	group_id = 133004307
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307005, monster_id = 20011401, pos = { x = 2366.835, y = 208.119, z = -465.510 }, rot = { x = 0.000, y = 28.741, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 307006, monster_id = 20011401, pos = { x = 2369.012, y = 207.578, z = -466.331 }, rot = { x = 0.000, y = 31.468, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 307007, monster_id = 20011401, pos = { x = 2367.195, y = 207.500, z = -462.826 }, rot = { x = 0.000, y = 57.694, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 307004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2366.581, y = 206.030, z = -465.167 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1307004, name = "ENTER_REGION_307004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_307004", action = "action_EVENT_ENTER_REGION_307004" }
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
		regions = { 307004 },
		triggers = { "ENTER_REGION_307004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 307005, 307006, 307007 },
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
function condition_EVENT_ENTER_REGION_307004(context, evt)
	if evt.param1 ~= 307004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_307004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004307, 2)
	
	return 0
end