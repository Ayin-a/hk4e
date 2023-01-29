-- 基础信息
local base_info = {
	group_id = 133313218
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 218001, monster_id = 25410201, pos = { x = -600.695, y = 152.738, z = 6021.011 }, rot = { x = 0.000, y = 171.783, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 1, area_id = 32 },
	{ config_id = 218010, monster_id = 25310201, pos = { x = -601.484, y = 151.884, z = 6015.183 }, rot = { x = 0.000, y = 140.985, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 218002, gadget_id = 70330397, pos = { x = -589.036, y = 152.081, z = 6009.227 }, rot = { x = 0.000, y = 71.954, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 218003, gadget_id = 70330397, pos = { x = -598.622, y = 150.036, z = 6004.475 }, rot = { x = 0.000, y = 216.261, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 218004, gadget_id = 70211102, pos = { x = -592.343, y = 151.889, z = 6004.542 }, rot = { x = 2.388, y = 338.072, z = 11.408 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 218007, gadget_id = 70330397, pos = { x = -588.498, y = 151.701, z = 6004.168 }, rot = { x = 0.000, y = 122.300, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 218008, gadget_id = 70330397, pos = { x = -591.063, y = 152.259, z = 6000.293 }, rot = { x = 0.000, y = 164.559, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 218009, gadget_id = 70330397, pos = { x = -595.234, y = 151.057, z = 6002.283 }, rot = { x = 0.000, y = 190.337, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 218005, shape = RegionShape.SPHERE, radius = 6, pos = { x = -592.714, y = 151.580, z = 6005.400 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1218005, name = "ENTER_REGION_218005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218005", action = "action_EVENT_ENTER_REGION_218005" },
	{ config_id = 1218006, name = "ANY_MONSTER_DIE_218006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_218006", action = "action_EVENT_ANY_MONSTER_DIE_218006" },
	{ config_id = 1218011, name = "ANY_MONSTER_DIE_218011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_218011", action = "action_EVENT_ANY_MONSTER_DIE_218011" }
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
		gadgets = { 218002, 218003, 218004, 218007, 218008, 218009 },
		regions = { 218005 },
		triggers = { "ENTER_REGION_218005", "ANY_MONSTER_DIE_218006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 218010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_218011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 218001 },
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
function condition_EVENT_ENTER_REGION_218005(context, evt)
	if evt.param1 ~= 218005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218005(context, evt)
	-- 将configid为 218004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313218, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 218002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 218009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_218006(context, evt)
	--判断死亡怪物的configid是否为 218001
	if evt.param1 ~= 218001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_218006(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 218004, GadgetState.Default)
	
	TLA_mark_playeraction(context, evt, 1002, 3, 1)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133313174, 174004, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_218011(context, evt)
	--判断死亡怪物的configid是否为 218010
	if evt.param1 ~= 218010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_218011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313218, 3)
	
	return 0
end