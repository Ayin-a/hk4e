-- 基础信息
local base_info = {
	group_id = 133313220
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 220001, monster_id = 25410301, pos = { x = -831.777, y = 110.442, z = 5951.123 }, rot = { x = 0.000, y = 1.057, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 1, area_id = 32 },
	{ config_id = 220003, monster_id = 25210102, pos = { x = -837.515, y = 110.301, z = 5955.958 }, rot = { x = 0.000, y = 74.392, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 32 },
	{ config_id = 220011, monster_id = 25310101, pos = { x = -835.707, y = 110.316, z = 5951.784 }, rot = { x = 0.000, y = 25.874, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 220002, gadget_id = 70330397, pos = { x = -832.163, y = 110.440, z = 5962.505 }, rot = { x = 0.000, y = 31.903, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 220004, gadget_id = 70211112, pos = { x = -839.277, y = 110.376, z = 5955.403 }, rot = { x = 0.000, y = 75.401, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 220007, gadget_id = 70330396, pos = { x = -838.682, y = 110.335, z = 5953.482 }, rot = { x = 0.000, y = 44.238, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 220008, gadget_id = 70330396, pos = { x = -839.681, y = 110.327, z = 5957.387 }, rot = { x = 0.000, y = 72.753, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 220009, gadget_id = 70330397, pos = { x = -827.257, y = 110.345, z = 5957.439 }, rot = { x = 0.000, y = 76.623, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 220010, gadget_id = 70330397, pos = { x = -827.607, y = 110.464, z = 5950.501 }, rot = { x = 0.000, y = 122.628, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 220005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -838.453, y = 110.374, z = 5955.627 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1220005, name = "ENTER_REGION_220005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_220005", action = "action_EVENT_ENTER_REGION_220005" },
	{ config_id = 1220006, name = "ANY_MONSTER_DIE_220006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_220006", action = "action_EVENT_ANY_MONSTER_DIE_220006" },
	{ config_id = 1220012, name = "ANY_MONSTER_DIE_220012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_220012", action = "action_EVENT_ANY_MONSTER_DIE_220012" },
	{ config_id = 1220013, name = "ANY_MONSTER_DIE_220013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_220013", action = "action_EVENT_ANY_MONSTER_DIE_220013" }
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
		gadgets = { 220002, 220004, 220007, 220008, 220009, 220010 },
		regions = { 220005 },
		triggers = { "ENTER_REGION_220005", "ANY_MONSTER_DIE_220006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 220003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_220012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 220011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_220013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 220001 },
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
function condition_EVENT_ENTER_REGION_220005(context, evt)
	if evt.param1 ~= 220005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_220005(context, evt)
	-- 将configid为 220004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313220, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 220002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 220007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 220008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 220009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 220010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_220006(context, evt)
	--判断死亡怪物的configid是否为 220001
	if evt.param1 ~= 220001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_220006(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 220004, GadgetState.Default)
	
	TLA_mark_playeraction(context, evt, 1002, 3, 1)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133313174, 174001, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_220012(context, evt)
	--判断死亡怪物的configid是否为 220003
	if evt.param1 ~= 220003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_220012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313220, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_220013(context, evt)
	--判断死亡怪物的configid是否为 220011
	if evt.param1 ~= 220011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_220013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313220, 4)
	
	return 0
end