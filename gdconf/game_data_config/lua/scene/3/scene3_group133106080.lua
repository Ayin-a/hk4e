-- 基础信息
local base_info = {
	group_id = 133106080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 26060201, pos = { x = -467.684, y = 187.332, z = 1072.755 }, rot = { x = 0.000, y = 330.208, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 80002, monster_id = 26060201, pos = { x = -466.184, y = 187.332, z = 1070.955 }, rot = { x = 0.000, y = 330.208, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 80003, monster_id = 26060201, pos = { x = -469.248, y = 187.333, z = 1070.091 }, rot = { x = 0.000, y = 330.208, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80004, gadget_id = 70211102, pos = { x = -467.654, y = 187.323, z = 1071.229 }, rot = { x = 0.000, y = 330.208, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 80005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -467.870, y = 187.332, z = 1071.698 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1080005, name = "ENTER_REGION_80005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80005", action = "action_EVENT_ENTER_REGION_80005" },
	{ config_id = 1080006, name = "ANY_MONSTER_DIE_80006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80006", action = "action_EVENT_ANY_MONSTER_DIE_80006" },
	{ config_id = 1080007, name = "GADGET_CREATE_80007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80007", action = "action_EVENT_GADGET_CREATE_80007", trigger_count = 0 }
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
		gadgets = { 80004 },
		regions = { 80005 },
		triggers = { "ENTER_REGION_80005", "GADGET_CREATE_80007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 80001, 80002, 80003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_80005(context, evt)
	if evt.param1 ~= 80005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80005(context, evt)
	-- 将configid为 80004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106080, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80006(context, evt)
	-- 将configid为 80004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_80007(context, evt)
	if 80004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106080, 2)
	
	return 0
end