-- 基础信息
local base_info = {
	group_id = 155006127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 22040101, pos = { x = 472.899, y = 180.051, z = -344.786 }, rot = { x = 0.000, y = 334.292, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 127002, monster_id = 22040101, pos = { x = 470.676, y = 180.051, z = -349.747 }, rot = { x = 0.000, y = 274.339, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 127003, monster_id = 22040101, pos = { x = 476.063, y = 180.051, z = -351.179 }, rot = { x = 0.000, y = 287.978, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 127004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 473.534, y = 180.051, z = -348.844 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1127004, name = "ENTER_REGION_127004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_127004", action = "action_EVENT_ENTER_REGION_127004" }
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
		regions = { 127004 },
		triggers = { "ENTER_REGION_127004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 127001, 127002, 127003 },
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
function condition_EVENT_ENTER_REGION_127004(context, evt)
	if evt.param1 ~= 127004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_127004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006127, 2)
	
	return 0
end