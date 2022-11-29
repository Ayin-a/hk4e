-- 基础信息
local base_info = {
	group_id = 133222247
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 247001, monster_id = 20011301, pos = { x = -4277.454, y = 209.437, z = -4308.552 }, rot = { x = 0.000, y = 320.142, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
	{ config_id = 247002, monster_id = 20011301, pos = { x = -4280.194, y = 210.809, z = -4302.240 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
	{ config_id = 247003, monster_id = 20011301, pos = { x = -4284.540, y = 210.566, z = -4308.015 }, rot = { x = 0.000, y = 46.559, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 247004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4280.556, y = 210.324, z = -4305.845 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1247004, name = "ENTER_REGION_247004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_247004", action = "action_EVENT_ENTER_REGION_247004" }
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
		regions = { 247004 },
		triggers = { "ENTER_REGION_247004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 247001, 247002, 247003 },
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
function condition_EVENT_ENTER_REGION_247004(context, evt)
	if evt.param1 ~= 247004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_247004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222247, 2)
	
	return 0
end