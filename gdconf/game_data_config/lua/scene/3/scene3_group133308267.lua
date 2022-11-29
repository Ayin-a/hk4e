-- 基础信息
local base_info = {
	group_id = 133308267
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 267001, monster_id = 26090901, pos = { x = -2292.430, y = 72.753, z = 4564.457 }, rot = { x = 0.000, y = 81.408, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 267002, monster_id = 26090901, pos = { x = -2292.185, y = 72.612, z = 4568.196 }, rot = { x = 0.000, y = 139.070, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 267004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2287.394, y = 71.940, z = 4564.595 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1267004, name = "ENTER_REGION_267004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_267004", action = "action_EVENT_ENTER_REGION_267004" }
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
		regions = { 267004 },
		triggers = { "ENTER_REGION_267004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 267001, 267002 },
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
function condition_EVENT_ENTER_REGION_267004(context, evt)
	if evt.param1 ~= 267004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_267004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308267, 2)
	
	return 0
end