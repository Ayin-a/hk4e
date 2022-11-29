-- 基础信息
local base_info = {
	group_id = 133222108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108001, monster_id = 20011401, pos = { x = -4440.332, y = 201.659, z = -4566.826 }, rot = { x = 353.219, y = 131.321, z = 351.991 }, level = 32, drop_tag = "史莱姆", area_id = 14 },
	{ config_id = 108002, monster_id = 20011401, pos = { x = -4430.964, y = 201.024, z = -4569.011 }, rot = { x = 0.000, y = 304.527, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 },
	{ config_id = 108003, monster_id = 20011401, pos = { x = -4437.106, y = 201.065, z = -4571.956 }, rot = { x = 0.000, y = 20.959, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 },
	{ config_id = 108005, monster_id = 20011501, pos = { x = -4435.582, y = 205.864, z = -4563.543 }, rot = { x = 0.000, y = 191.466, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 108004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4436.673, y = 202.461, z = -4565.374 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1108004, name = "ENTER_REGION_108004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108004", action = "action_EVENT_ENTER_REGION_108004" }
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
		regions = { 108004 },
		triggers = { "ENTER_REGION_108004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 108001, 108002, 108003, 108005 },
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
function condition_EVENT_ENTER_REGION_108004(context, evt)
	if evt.param1 ~= 108004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222108, 2)
	
	return 0
end