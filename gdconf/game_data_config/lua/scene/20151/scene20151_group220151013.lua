-- 基础信息
local base_info = {
	group_id = 220151013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 26090201, pos = { x = -44.879, y = -23.119, z = 68.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 13002, monster_id = 26090201, pos = { x = -44.795, y = -23.055, z = 76.433 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 13006, monster_id = 26090201, pos = { x = -48.750, y = -23.055, z = 72.687 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 13007, monster_id = 26090201, pos = { x = -41.832, y = -23.074, z = 72.877 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13008, gadget_id = 70210101, pos = { x = -45.012, y = -23.098, z = 72.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 13005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -44.916, y = -23.098, z = 72.401 } }
}

-- 触发器
triggers = {
	{ config_id = 1013005, name = "ENTER_REGION_13005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13005", action = "action_EVENT_ENTER_REGION_13005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 13003, gadget_id = 70211012, pos = { x = -44.920, y = -23.098, z = 72.688 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
	},
	triggers = {
		{ config_id = 1013004, name = "ANY_MONSTER_DIE_13004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13004", action = "" }
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
		monsters = { },
		gadgets = { 13008 },
		regions = { 13005 },
		triggers = { "ENTER_REGION_13005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 13001, 13002, 13006, 13007 },
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
function condition_EVENT_ENTER_REGION_13005(context, evt)
	if evt.param1 ~= 13005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220151013, 2)
	
	return 0
end