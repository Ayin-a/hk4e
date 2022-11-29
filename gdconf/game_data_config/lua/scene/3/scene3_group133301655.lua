-- 基础信息
local base_info = {
	group_id = 133301655
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 655006, monster_id = 26090801, pos = { x = -864.872, y = 285.704, z = 3390.365 }, rot = { x = 0.000, y = 11.747, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 655007, monster_id = 26090801, pos = { x = -869.689, y = 284.055, z = 3396.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 655008, monster_id = 26090801, pos = { x = -862.773, y = 283.284, z = 3395.241 }, rot = { x = 0.000, y = 45.756, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 655001, gadget_id = 70310198, pos = { x = -865.977, y = 284.893, z = 3393.513 }, rot = { x = 0.000, y = 69.666, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 655002, gadget_id = 70330218, pos = { x = -868.437, y = 290.829, z = 3379.291 }, rot = { x = 3.103, y = 28.655, z = 0.278 }, level = 30, area_id = 23 },
	{ config_id = 655003, gadget_id = 70217020, pos = { x = -867.550, y = 291.196, z = 3380.847 }, rot = { x = 0.000, y = 33.226, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 655005, gadget_id = 70290484, pos = { x = -865.936, y = 285.390, z = 3394.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 655009, shape = RegionShape.SPHERE, radius = 8, pos = { x = -866.019, y = 284.592, z = 3393.226 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1655004, name = "ANY_GADGET_DIE_655004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_655004", action = "action_EVENT_ANY_GADGET_DIE_655004", trigger_count = 0 },
	{ config_id = 1655009, name = "ENTER_REGION_655009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_655009", action = "action_EVENT_ENTER_REGION_655009", trigger_count = 0 },
	{ config_id = 1655010, name = "ANY_MONSTER_DIE_655010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_655010", action = "action_EVENT_ANY_MONSTER_DIE_655010", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 655011, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = -865.998, y = 284.797, z = 3393.331 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1655011, name = "ENTER_REGION_655011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_655011", action = "action_EVENT_ENTER_REGION_655011", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 655001, state = 0 },
			{ config_id = 655002, state = 0 },
			{ config_id = 655003, state = 101 }
		},
		monsters = {
		},
		regions = { 655009 },
		triggers = { "ANY_GADGET_DIE_655004", "ENTER_REGION_655009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 655001, state = 202 },
			{ config_id = 655002, state = 0 },
			{ config_id = 655003, state = 101 },
			{ config_id = 655005, state = 0 }
		},
		monsters = {
			{ config_id = 655006 },
			{ config_id = 655007 },
			{ config_id = 655008 }
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_655004", "ANY_MONSTER_DIE_655010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 655001, state = 0 },
			{ config_id = 655002, state = 0 },
			{ config_id = 655003, state = 101 },
			{ config_id = 655005, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_655004" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 655001, state = 0 },
			{ config_id = 655003, state = 0 },
			{ config_id = 655005, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_655004(context, evt)
	if 655002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_655004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301655, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_655009(context, evt)
	if evt.param1 ~= 655009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_655009(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301655, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_655010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_655010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301655, 3)
	
	return 0
end