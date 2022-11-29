-- 基础信息
local base_info = {
	group_id = 133103017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 20010101, pos = { x = 586.804, y = 205.799, z = 1141.468 }, rot = { x = 0.000, y = 214.395, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 201, area_id = 6 },
	{ config_id = 17002, monster_id = 20010801, pos = { x = 587.141, y = 205.953, z = 1139.682 }, rot = { x = 0.000, y = 214.395, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 17003, monster_id = 20010501, pos = { x = 586.486, y = 205.819, z = 1140.396 }, rot = { x = 0.000, y = 214.395, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17004, gadget_id = 70211102, pos = { x = 587.387, y = 205.904, z = 1140.760 }, rot = { x = 10.352, y = 248.107, z = 354.927 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 17005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 587.679, y = 207.028, z = 1140.626 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1017005, name = "ENTER_REGION_17005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17005", action = "action_EVENT_ENTER_REGION_17005" },
	{ config_id = 1017006, name = "ANY_MONSTER_DIE_17006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17006", action = "action_EVENT_ANY_MONSTER_DIE_17006" },
	{ config_id = 1017007, name = "GADGET_CREATE_17007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17007", action = "action_EVENT_GADGET_CREATE_17007", trigger_count = 0 }
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
		gadgets = { 17004 },
		regions = { 17005 },
		triggers = { "ENTER_REGION_17005", "GADGET_CREATE_17007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 17001, 17002, 17003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_17005(context, evt)
	if evt.param1 ~= 17005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17005(context, evt)
	-- 将configid为 17004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103017, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17006(context, evt)
	-- 将configid为 17004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17004, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_17007(context, evt)
	if 17004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103017, 2)
	
	return 0
end