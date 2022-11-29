-- 基础信息
local base_info = {
	group_id = 133301263
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 263001, monster_id = 26090901, pos = { x = -632.311, y = 125.280, z = 3811.380 }, rot = { x = 0.000, y = 343.666, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 25 },
	{ config_id = 263002, monster_id = 26090901, pos = { x = -635.058, y = 125.002, z = 3812.087 }, rot = { x = 0.000, y = 35.296, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 25 },
	{ config_id = 263007, monster_id = 21010501, pos = { x = -632.018, y = 124.624, z = 3823.438 }, rot = { x = 0.000, y = 166.214, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 263003, gadget_id = 70210101, pos = { x = -632.004, y = 125.863, z = 3810.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 25 },
	{ config_id = 263005, gadget_id = 70210101, pos = { x = -671.299, y = 139.782, z = 3883.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 25 },
	{ config_id = 263006, gadget_id = 70210101, pos = { x = -648.081, y = 140.574, z = 4004.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 25 },
	{ config_id = 263008, gadget_id = 70310004, pos = { x = -631.584, y = 124.345, z = 3821.481 }, rot = { x = 8.667, y = 221.725, z = 1.910 }, level = 33, state = GadgetState.GearStart, area_id = 25 }
}

-- 区域
regions = {
	{ config_id = 263004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -633.735, y = 123.607, z = 3812.723 }, area_id = 25 }
}

-- 触发器
triggers = {
	{ config_id = 1263004, name = "ENTER_REGION_263004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_263004", action = "action_EVENT_ENTER_REGION_263004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 263009, gadget_id = 70310191, pos = { x = -630.321, y = 125.498, z = 3810.573 }, rot = { x = 352.653, y = 183.198, z = 352.438 }, level = 33, area_id = 25 }
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
		monsters = { 263007 },
		gadgets = { 263003, 263005, 263006, 263008 },
		regions = { 263004 },
		triggers = { "ENTER_REGION_263004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 263001, 263002 },
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
function condition_EVENT_ENTER_REGION_263004(context, evt)
	if evt.param1 ~= 263004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_263004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301263, 2)
	
	return 0
end

require "V3_0/DeathFieldStandard"