-- 基础信息
local base_info = {
	group_id = 133309721
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 721001, monster_id = 25210501, pos = { x = -2180.937, y = 167.111, z = 5841.238 }, rot = { x = 0.000, y = 20.772, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 721002, monster_id = 25210402, pos = { x = -2180.386, y = 166.269, z = 5847.326 }, rot = { x = 0.000, y = 32.162, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 721003, monster_id = 25210202, pos = { x = -2172.396, y = 167.039, z = 5839.396 }, rot = { x = 0.000, y = 316.222, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 721005, gadget_id = 70310007, pos = { x = -2176.958, y = 165.496, z = 5845.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 721006, gadget_id = 70210101, pos = { x = -2176.724, y = 167.491, z = 5845.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 721004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2182.228, y = 166.808, z = 5843.956 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1721004, name = "ENTER_REGION_721004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_721004", action = "action_EVENT_ENTER_REGION_721004" }
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
		gadgets = { 721005, 721006 },
		regions = { 721004 },
		triggers = { "ENTER_REGION_721004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 721001, 721002, 721003 },
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
function condition_EVENT_ENTER_REGION_721004(context, evt)
	if evt.param1 ~= 721004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_721004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309721, 2)
	
	return 0
end