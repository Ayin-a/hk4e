-- 基础信息
local base_info = {
	group_id = 133213531
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 531001, monster_id = 20011101, pos = { x = -2971.175, y = 200.033, z = -3246.042 }, rot = { x = 358.323, y = 341.206, z = 3.403 }, level = 28, drop_tag = "大史莱姆", area_id = 12 },
	{ config_id = 531002, monster_id = 21010901, pos = { x = -2965.090, y = 200.119, z = -3243.783 }, rot = { x = 3.312, y = 254.198, z = 1.849 }, level = 27, drop_tag = "远程丘丘人", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 531004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2971.299, y = 200.000, z = -3250.183 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1531004, name = "ENTER_REGION_531004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_531004", action = "action_EVENT_ENTER_REGION_531004" }
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
		regions = { 531004 },
		triggers = { "ENTER_REGION_531004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 531001, 531002 },
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
function condition_EVENT_ENTER_REGION_531004(context, evt)
	if evt.param1 ~= 531004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_531004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213531, 2)
	
	return 0
end