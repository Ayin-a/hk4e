-- 基础信息
local base_info = {
	group_id = 133213008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 21020201, pos = { x = -3169.233, y = 203.760, z = -3397.955 }, rot = { x = 358.452, y = 87.498, z = 353.124 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, area_id = 12 },
	{ config_id = 8004, monster_id = 21010401, pos = { x = -3164.911, y = 203.432, z = -3392.293 }, rot = { x = 359.487, y = 0.033, z = 352.753 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 12 },
	{ config_id = 8005, monster_id = 21010401, pos = { x = -3148.201, y = 201.554, z = -3391.009 }, rot = { x = 359.487, y = 0.033, z = 352.753 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8002, gadget_id = 70210101, pos = { x = -3148.044, y = 201.472, z = -3389.738 }, rot = { x = 2.834, y = 359.764, z = 350.474 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 12 },
	{ config_id = 8003, gadget_id = 70210101, pos = { x = -3165.375, y = 203.469, z = -3390.641 }, rot = { x = 0.366, y = 0.015, z = 354.257 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 8006, shape = RegionShape.SPHERE, radius = 12, pos = { x = -3158.354, y = 202.746, z = -3395.075 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1008006, name = "ENTER_REGION_8006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8006", action = "action_EVENT_ENTER_REGION_8006" }
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
		gadgets = { 8002, 8003 },
		regions = { 8006 },
		triggers = { "ENTER_REGION_8006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8001, 8004, 8005 },
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
function condition_EVENT_ENTER_REGION_8006(context, evt)
	if evt.param1 ~= 8006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213008, 2)
	
	return 0
end