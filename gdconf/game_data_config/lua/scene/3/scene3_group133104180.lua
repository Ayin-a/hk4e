-- 基础信息
local base_info = {
	group_id = 133104180
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441, monster_id = 20010501, pos = { x = 270.894, y = 222.382, z = 878.875 }, rot = { x = 3.573, y = 0.084, z = 2.684 }, level = 19, drop_id = 1000100, area_id = 6 },
	{ config_id = 442, monster_id = 20010501, pos = { x = 274.361, y = 222.031, z = 874.441 }, rot = { x = 4.465, y = 0.070, z = 1.790 }, level = 19, drop_id = 1000100, area_id = 6 },
	{ config_id = 443, monster_id = 20010501, pos = { x = 268.211, y = 222.890, z = 872.324 }, rot = { x = 357.316, y = 0.021, z = 359.105 }, level = 19, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 651, gadget_id = 70211102, pos = { x = 271.289, y = 222.487, z = 874.100 }, rot = { x = 9.753, y = 0.015, z = 359.120 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 314, shape = RegionShape.SPHERE, radius = 5, pos = { x = 271.391, y = 222.469, z = 874.198 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1000314, name = "ENTER_REGION_314", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_314", action = "action_EVENT_ENTER_REGION_314" },
	{ config_id = 1000315, name = "ANY_MONSTER_DIE_315", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_315", action = "action_EVENT_ANY_MONSTER_DIE_315" },
	{ config_id = 1000316, name = "GADGET_CREATE_316", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_316", action = "action_EVENT_GADGET_CREATE_316", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 651 },
		regions = { 314 },
		triggers = { "ENTER_REGION_314", "GADGET_CREATE_316" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 441, 442, 443 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_315" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_314(context, evt)
	if evt.param1 ~= 314 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_314(context, evt)
	-- 将configid为 651 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 651, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104180, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_315(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_315(context, evt)
	-- 将configid为 651 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 651, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_316(context, evt)
	if 651 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_316(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104180, 2)
	
	return 0
end