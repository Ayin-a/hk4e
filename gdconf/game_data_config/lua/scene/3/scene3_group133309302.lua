-- 基础信息
local base_info = {
	group_id = 133309302
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 302002, monster_id = 26090601, pos = { x = -2161.411, y = -9.783, z = 5262.683 }, rot = { x = 0.000, y = 188.985, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 302003, monster_id = 26090601, pos = { x = -2165.539, y = -9.586, z = 5267.250 }, rot = { x = 0.000, y = 161.371, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 302004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2168.754, y = -11.066, z = 5256.831 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1302004, name = "ENTER_REGION_302004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_302004", action = "action_EVENT_ENTER_REGION_302004" }
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
		regions = { 302004 },
		triggers = { "ENTER_REGION_302004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 302002, 302003 },
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
function condition_EVENT_ENTER_REGION_302004(context, evt)
	if evt.param1 ~= 302004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_302004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309302, 2)
	
	return 0
end