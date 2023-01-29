-- 基础信息
local base_info = {
	group_id = 133313217
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217001, monster_id = 25410401, pos = { x = -764.295, y = 138.531, z = 6053.068 }, rot = { x = 0.000, y = 97.498, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 217010, monster_id = 25310301, pos = { x = -759.070, y = 138.882, z = 6053.032 }, rot = { x = 0.000, y = 138.155, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 217002, gadget_id = 70330397, pos = { x = -756.434, y = 138.699, z = 6055.174 }, rot = { x = 0.000, y = 49.896, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 217003, gadget_id = 70330397, pos = { x = -762.423, y = 138.636, z = 6058.103 }, rot = { x = 0.000, y = 25.131, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 217004, gadget_id = 70211102, pos = { x = -751.179, y = 138.573, z = 6045.630 }, rot = { x = 355.001, y = 320.001, z = 12.673 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 217007, gadget_id = 70330396, pos = { x = -749.647, y = 138.550, z = 6047.782 }, rot = { x = 0.000, y = 96.468, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 217008, gadget_id = 70330396, pos = { x = -749.837, y = 138.790, z = 6043.554 }, rot = { x = 0.000, y = 146.155, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 217009, gadget_id = 70330396, pos = { x = -753.975, y = 137.893, z = 6044.707 }, rot = { x = 0.000, y = 156.534, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 217005, shape = RegionShape.SPHERE, radius = 7, pos = { x = -752.380, y = 138.333, z = 6045.812 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1217005, name = "ENTER_REGION_217005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_217005", action = "action_EVENT_ENTER_REGION_217005" },
	{ config_id = 1217006, name = "ANY_MONSTER_DIE_217006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217006", action = "action_EVENT_ANY_MONSTER_DIE_217006" },
	{ config_id = 1217011, name = "ANY_MONSTER_DIE_217011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217011", action = "action_EVENT_ANY_MONSTER_DIE_217011" }
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
		gadgets = { 217002, 217003, 217004, 217007, 217008, 217009 },
		regions = { 217005 },
		triggers = { "ENTER_REGION_217005", "ANY_MONSTER_DIE_217006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 217010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_217011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 217001 },
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
function condition_EVENT_ENTER_REGION_217005(context, evt)
	if evt.param1 ~= 217005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_217005(context, evt)
	-- 将configid为 217004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313217, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 217002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217006(context, evt)
	--判断死亡怪物的configid是否为 217001
	if evt.param1 ~= 217001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217006(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 217004, GadgetState.Default)
	
	TLA_mark_playeraction(context, evt, 1002, 3, 1)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133313174, 174002, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217011(context, evt)
	--判断死亡怪物的configid是否为 217010
	if evt.param1 ~= 217010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313217, 3)
	
	return 0
end