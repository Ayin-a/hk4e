-- 基础信息
local base_info = {
	group_id = 133104669
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 669001, monster_id = 20011401, pos = { x = 368.025, y = 199.895, z = 986.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 669002, monster_id = 20011401, pos = { x = 371.258, y = 198.674, z = 981.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 669003, monster_id = 20011401, pos = { x = 367.569, y = 199.576, z = 980.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 669004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 369.146, y = 199.291, z = 982.752 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1669004, name = "ENTER_REGION_669004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_669004", action = "action_EVENT_ENTER_REGION_669004" }
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
		regions = { 669004 },
		triggers = { "ENTER_REGION_669004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 669001, 669002, 669003 },
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
function condition_EVENT_ENTER_REGION_669004(context, evt)
	if evt.param1 ~= 669004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_669004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104669, 2)
	
	return 0
end