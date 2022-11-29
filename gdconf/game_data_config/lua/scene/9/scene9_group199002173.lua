-- 基础信息
local base_info = {
	group_id = 199002173
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 173004, monster_id = 21010201, pos = { x = 586.583, y = 120.009, z = -607.495 }, rot = { x = 0.000, y = 331.260, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 401 },
	{ config_id = 173005, monster_id = 21010201, pos = { x = 591.642, y = 120.009, z = -603.565 }, rot = { x = 0.000, y = 307.326, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 401 },
	{ config_id = 173006, monster_id = 21020201, pos = { x = 589.237, y = 120.000, z = -605.788 }, rot = { x = 0.000, y = 319.736, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173001, gadget_id = 70310332, pos = { x = 587.361, y = 120.070, z = -603.273 }, rot = { x = 0.000, y = 138.021, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 401 },
	{ config_id = 173002, gadget_id = 70310332, pos = { x = 585.791, y = 120.005, z = -605.964 }, rot = { x = 0.000, y = 138.021, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 401 },
	{ config_id = 173003, gadget_id = 70310332, pos = { x = 590.199, y = 119.996, z = -601.998 }, rot = { x = 0.000, y = 150.590, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 401 },
	{ config_id = 173009, gadget_id = 70211001, pos = { x = 588.109, y = 120.033, z = -604.908 }, rot = { x = 0.000, y = 311.399, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1173007, name = "ANY_MONSTER_DIE_173007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_173007", action = "action_EVENT_ANY_MONSTER_DIE_173007", trigger_count = 0 },
	{ config_id = 1173008, name = "GADGETTALK_DONE_173008", event = EventType.EVENT_GADGETTALK_DONE, source = "6800362", condition = "", action = "action_EVENT_GADGETTALK_DONE_173008", trigger_count = 0 }
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
		monsters = { 173004, 173005, 173006 },
		gadgets = { 173001, 173002, 173003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_173007", "GADGETTALK_DONE_173008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 173009 },
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
function condition_EVENT_ANY_MONSTER_DIE_173007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 199002173) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_173007(context, evt)
	-- 将configid为 173001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_173008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002173, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 173003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end