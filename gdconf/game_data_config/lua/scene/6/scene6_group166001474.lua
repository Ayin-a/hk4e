-- 基础信息
local base_info = {
	group_id = 166001474
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 474005, monster_id = 21011201, pos = { x = 59.507, y = 312.539, z = 412.374 }, rot = { x = 0.000, y = 177.810, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 300 },
	{ config_id = 474006, monster_id = 21011201, pos = { x = 62.668, y = 312.814, z = 405.416 }, rot = { x = 0.000, y = 328.181, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 300 },
	{ config_id = 474007, monster_id = 21011201, pos = { x = 53.639, y = 312.415, z = 407.176 }, rot = { x = 0.000, y = 45.417, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 474001, gadget_id = 70290204, pos = { x = 59.266, y = 312.525, z = 407.483 }, rot = { x = 356.556, y = 304.950, z = 358.685 }, level = 36, area_id = 300 },
	{ config_id = 474002, gadget_id = 70290233, pos = { x = 61.420, y = 312.635, z = 406.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 474004, gadget_id = 70211012, pos = { x = 59.200, y = 312.511, z = 407.747 }, rot = { x = 0.000, y = 177.339, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1474003, name = "ANY_GADGET_DIE_474003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_474003", action = "action_EVENT_ANY_GADGET_DIE_474003" },
	{ config_id = 1474008, name = "ANY_MONSTER_DIE_474008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_474008", action = "action_EVENT_ANY_MONSTER_DIE_474008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 474009, shape = RegionShape.SPHERE, radius = 8, pos = { x = 58.491, y = 313.544, z = 406.344 }, area_id = 300 }
	},
	triggers = {
		{ config_id = 1474009, name = "ENTER_REGION_474009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_474009" }
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
		gadgets = { 474001, 474002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_474003", "ANY_MONSTER_DIE_474008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 474004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 474005, 474006, 474007 },
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
function condition_EVENT_ANY_GADGET_DIE_474003(context, evt)
	if 474001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_474003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 474002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001474, 3)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001474, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_474008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_474008(context, evt)
	-- 将configid为 474004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end