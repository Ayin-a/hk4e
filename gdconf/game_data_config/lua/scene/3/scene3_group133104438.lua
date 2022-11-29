-- 基础信息
local base_info = {
	group_id = 133104438
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 438001, monster_id = 22010301, pos = { x = 874.458, y = 238.804, z = 855.358 }, rot = { x = 0.000, y = 60.832, z = 0.000 }, level = 19, drop_tag = "深渊法师", area_id = 6 },
	{ config_id = 438007, monster_id = 21010701, pos = { x = 895.633, y = 238.056, z = 854.424 }, rot = { x = 0.000, y = 286.994, z = 0.000 }, level = 19, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 438008, monster_id = 21010701, pos = { x = 893.730, y = 238.171, z = 865.741 }, rot = { x = 0.000, y = 247.433, z = 0.000 }, level = 19, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 438009, monster_id = 21010701, pos = { x = 879.184, y = 238.330, z = 850.704 }, rot = { x = 0.000, y = 41.560, z = 0.000 }, level = 19, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 438010, monster_id = 21010701, pos = { x = 879.908, y = 238.575, z = 867.304 }, rot = { x = 0.000, y = 138.519, z = 0.000 }, level = 19, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 438002, gadget_id = 70211021, pos = { x = 885.388, y = 238.946, z = 858.492 }, rot = { x = 0.644, y = 150.708, z = 359.504 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 438004, gadget_id = 70800009, pos = { x = 885.365, y = 238.893, z = 858.476 }, rot = { x = 359.207, y = 310.855, z = 359.835 }, level = 19, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 438011, shape = RegionShape.SPHERE, radius = 14.5, pos = { x = 885.457, y = 238.997, z = 858.414 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1438003, name = "ANY_MONSTER_DIE_438003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_438003", action = "action_EVENT_ANY_MONSTER_DIE_438003" },
	{ config_id = 1438005, name = "GADGET_STATE_CHANGE_438005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_438005", action = "action_EVENT_GADGET_STATE_CHANGE_438005" },
	{ config_id = 1438006, name = "GROUP_LOAD_438006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_438006", action = "action_EVENT_GROUP_LOAD_438006", trigger_count = 0 },
	{ config_id = 1438011, name = "ENTER_REGION_438011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_438011", action = "action_EVENT_ENTER_REGION_438011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true }
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
		gadgets = { 438002 },
		regions = { 438011 },
		triggers = { "ANY_MONSTER_DIE_438003", "GROUP_LOAD_438006", "ENTER_REGION_438011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 438001, 438007, 438008, 438009, 438010 },
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
function condition_EVENT_ANY_MONSTER_DIE_438003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"flag"为0
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_438003(context, evt)
	-- 将本组内变量名为 "flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 438002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 438002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 438004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_438005(context, evt)
	if 438004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_438005(context, evt)
	-- 通知场景上的所有玩家播放名字为133104440 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 133104440, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 改变指定group组133104440中， configid为440004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104440, 440004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_438006(context, evt)
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_438006(context, evt)
	-- 将configid为 438002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 438002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_438011(context, evt)
	if evt.param1 ~= 438011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_438011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104438, 2)
	
	-- 创建id为438004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 438004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end