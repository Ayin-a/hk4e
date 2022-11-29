-- 基础信息
local base_info = {
	group_id = 133315137
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 137001, monster_id = 26090201, pos = { x = 64.337, y = 427.655, z = 2006.496 }, rot = { x = 0.000, y = 84.367, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 137002, monster_id = 26090201, pos = { x = 72.998, y = 426.579, z = 2007.619 }, rot = { x = 0.000, y = 126.701, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 137004, monster_id = 20010201, pos = { x = 68.174, y = 426.611, z = 2004.235 }, rot = { x = 0.000, y = 339.803, z = 0.000 }, level = 27, drop_tag = "大史莱姆", pose_id = 201, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1137003, name = "MONSTER_BATTLE_137003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_137003", action = "action_EVENT_MONSTER_BATTLE_137003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 137005, gadget_id = 70500000, pos = { x = 62.493, y = 428.119, z = 2007.739 }, rot = { x = 0.000, y = 357.060, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 },
		{ config_id = 137006, gadget_id = 70540041, pos = { x = 68.410, y = 427.338, z = 2008.935 }, rot = { x = 0.000, y = 347.570, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 137007, gadget_id = 70500000, pos = { x = 68.622, y = 428.320, z = 2009.216 }, rot = { x = 350.117, y = 352.627, z = 16.469 }, level = 27, point_type = 2051, owner = 137006, area_id = 20 },
		{ config_id = 137008, gadget_id = 70500000, pos = { x = 68.484, y = 428.210, z = 2008.971 }, rot = { x = 342.084, y = 354.374, z = 352.876 }, level = 27, point_type = 2051, owner = 137006, area_id = 20 },
		{ config_id = 137009, gadget_id = 70500000, pos = { x = 68.734, y = 427.961, z = 2008.853 }, rot = { x = 13.662, y = 355.783, z = 12.099 }, level = 27, point_type = 2051, owner = 137006, area_id = 20 },
		{ config_id = 137010, gadget_id = 70500000, pos = { x = 68.149, y = 427.864, z = 2008.811 }, rot = { x = 355.734, y = 348.456, z = 342.491 }, level = 27, point_type = 2051, owner = 137006, area_id = 20 }
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
		monsters = { 137001, 137002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_137003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 137004 },
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
function condition_EVENT_MONSTER_BATTLE_137003(context, evt)
	if 137001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_137003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315137, 2)
	
	return 0
end