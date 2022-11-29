-- 基础信息
local base_info = {
	group_id = 133104113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 318, monster_id = 20010801, pos = { x = 526.520, y = 200.573, z = 52.294 }, rot = { x = 0.000, y = 317.101, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 319, monster_id = 20010801, pos = { x = 532.029, y = 200.573, z = 51.601 }, rot = { x = 0.000, y = 317.101, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 320, monster_id = 20010901, pos = { x = 529.612, y = 200.573, z = 49.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 309, gadget_id = 70211112, pos = { x = 529.115, y = 199.806, z = 51.517 }, rot = { x = 0.000, y = 45.458, z = 4.682 }, level = 16, drop_tag = "解谜中级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 173, shape = RegionShape.SPHERE, radius = 5, pos = { x = 529.301, y = 200.645, z = 51.559 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000173, name = "ENTER_REGION_173", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173", action = "action_EVENT_ENTER_REGION_173" },
	{ config_id = 1000174, name = "ANY_MONSTER_DIE_174", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_174", action = "action_EVENT_ANY_MONSTER_DIE_174" },
	{ config_id = 1000175, name = "GADGET_CREATE_175", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_175", action = "action_EVENT_GADGET_CREATE_175", trigger_count = 0 }
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
		gadgets = { 309 },
		regions = { 173 },
		triggers = { "ENTER_REGION_173", "GADGET_CREATE_175" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 318, 319, 320 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_174" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_173(context, evt)
	if evt.param1 ~= 173 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_173(context, evt)
	-- 将configid为 309 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104113, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_174(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_174(context, evt)
	-- 将configid为 309 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_175(context, evt)
	if 259 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_175(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104113, 2)
	
	return 0
end