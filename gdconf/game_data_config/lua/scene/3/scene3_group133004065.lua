-- 基础信息
local base_info = {
	group_id = 133004065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224, monster_id = 20011401, pos = { x = 2232.591, y = 203.105, z = -475.707 }, rot = { x = 0.000, y = 282.333, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 233, gadget_id = 70211101, pos = { x = 2234.520, y = 202.942, z = -476.523 }, rot = { x = 357.911, y = 296.354, z = 359.068 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 290, gadget_id = 70211101, pos = { x = 2208.632, y = 220.904, z = -477.389 }, rot = { x = 9.339, y = 19.800, z = 2.298 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 65002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2233.165, y = 203.007, z = -476.273 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1065002, name = "ENTER_REGION_65002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65002", action = "action_EVENT_ENTER_REGION_65002" }
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
		gadgets = { 233, 290 },
		regions = { 65002 },
		triggers = { "ENTER_REGION_65002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 224 },
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
function condition_EVENT_ENTER_REGION_65002(context, evt)
	if evt.param1 ~= 65002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004065, 2)
	
	return 0
end