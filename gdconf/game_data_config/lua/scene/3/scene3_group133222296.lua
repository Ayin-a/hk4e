-- 基础信息
local base_info = {
	group_id = 133222296
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 296001, monster_id = 20011401, pos = { x = -4433.450, y = 185.486, z = -3766.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 },
	{ config_id = 296002, monster_id = 20011401, pos = { x = -4427.790, y = 184.696, z = -3768.877 }, rot = { x = 0.000, y = 344.424, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 296004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4429.825, y = 185.227, z = -3766.387 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1296004, name = "ENTER_REGION_296004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_296004", action = "action_EVENT_ENTER_REGION_296004" }
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
		regions = { 296004 },
		triggers = { "ENTER_REGION_296004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 296001, 296002 },
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
function condition_EVENT_ENTER_REGION_296004(context, evt)
	if evt.param1 ~= 296004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_296004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222296, 2)
	
	return 0
end