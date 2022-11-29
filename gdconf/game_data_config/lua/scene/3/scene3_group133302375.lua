-- 基础信息
local base_info = {
	group_id = 133302375
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 375001, monster_id = 20011501, pos = { x = -916.843, y = 207.533, z = 2993.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 23 },
	{ config_id = 375002, monster_id = 20011401, pos = { x = -915.356, y = 207.533, z = 2992.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 23 },
	{ config_id = 375003, monster_id = 20011401, pos = { x = -918.326, y = 207.533, z = 2992.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 375005, gadget_id = 70330197, pos = { x = -883.983, y = 212.633, z = 3007.934 }, rot = { x = 0.000, y = 353.864, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 375006, gadget_id = 70330197, pos = { x = -887.797, y = 208.593, z = 2973.193 }, rot = { x = 0.000, y = 204.822, z = 0.000 }, level = 27, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 375004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -916.853, y = 207.533, z = 2992.753 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1375004, name = "ENTER_REGION_375004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_375004", action = "action_EVENT_ENTER_REGION_375004" }
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
		gadgets = { 375005, 375006 },
		regions = { 375004 },
		triggers = { "ENTER_REGION_375004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 375001, 375002, 375003 },
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
function condition_EVENT_ENTER_REGION_375004(context, evt)
	if evt.param1 ~= 375004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_375004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302375, 2)
	
	return 0
end