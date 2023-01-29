-- 基础信息
local base_info = {
	group_id = 133313219
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 219001, monster_id = 25410101, pos = { x = -546.568, y = 150.533, z = 5932.552 }, rot = { x = 0.000, y = 205.578, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, area_id = 32 },
	{ config_id = 219010, monster_id = 25210502, pos = { x = -540.912, y = 149.973, z = 5918.919 }, rot = { x = 0.000, y = 174.774, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 32 },
	{ config_id = 219011, monster_id = 25210403, pos = { x = -540.089, y = 151.605, z = 5926.997 }, rot = { x = 0.000, y = 206.984, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 219002, gadget_id = 70330397, pos = { x = -534.156, y = 150.390, z = 5909.841 }, rot = { x = 0.000, y = 105.181, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 219003, gadget_id = 70330397, pos = { x = -538.994, y = 148.776, z = 5906.169 }, rot = { x = 0.000, y = 177.402, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 219004, gadget_id = 70211112, pos = { x = -532.815, y = 150.670, z = 5903.595 }, rot = { x = 359.102, y = 322.494, z = 12.890 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 219007, gadget_id = 70330396, pos = { x = -550.211, y = 150.458, z = 5935.743 }, rot = { x = 0.000, y = 133.799, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 219008, gadget_id = 70330396, pos = { x = -542.273, y = 151.376, z = 5932.442 }, rot = { x = 0.000, y = 171.780, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 219009, gadget_id = 70330396, pos = { x = -536.247, y = 152.283, z = 5925.200 }, rot = { x = 0.000, y = 301.869, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 219005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -533.851, y = 150.810, z = 5905.173 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1219005, name = "ENTER_REGION_219005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219005", action = "action_EVENT_ENTER_REGION_219005" },
	{ config_id = 1219006, name = "ANY_MONSTER_DIE_219006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_219006", action = "action_EVENT_ANY_MONSTER_DIE_219006" },
	{ config_id = 1219012, name = "ANY_MONSTER_DIE_219012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_219012", action = "action_EVENT_ANY_MONSTER_DIE_219012" },
	{ config_id = 1219013, name = "ANY_MONSTER_DIE_219013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_219013", action = "action_EVENT_ANY_MONSTER_DIE_219013" }
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
		gadgets = { 219002, 219003, 219004, 219007, 219008, 219009 },
		regions = { 219005 },
		triggers = { "ENTER_REGION_219005", "ANY_MONSTER_DIE_219006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 219010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_219012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 219011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_219013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 219001 },
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

-- 玩家行为埋点
function TLA_mark_playeraction(context, evt, param1, param2, param3)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, param1, param2, param3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	return 0
end

-- 设置指定gadget的state
function TLA_set_gadget_state_by_configid(context, evt, config_id, state)
	-- 将configid为 config_id 的物件更改为状态 state
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, config_id, state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219005(context, evt)
	if evt.param1 ~= 219005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219005(context, evt)
	-- 将configid为 219004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313219, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 219002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 219003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 219007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 219008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 219009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_219006(context, evt)
	--判断死亡怪物的configid是否为 219001
	if evt.param1 ~= 219001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_219006(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 219004, GadgetState.Default)
	
	TLA_mark_playeraction(context, evt, 1002, 3, 1)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133313174, 174003, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_219012(context, evt)
	--判断死亡怪物的configid是否为 219010
	if evt.param1 ~= 219010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_219012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313219, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_219013(context, evt)
	--判断死亡怪物的configid是否为 219011
	if evt.param1 ~= 219011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_219013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313219, 4)
	
	return 0
end