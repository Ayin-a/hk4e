-- 基础信息
local base_info = {
	group_id = 166001235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235001, monster_id = 20011401, pos = { x = 925.260, y = 1016.102, z = 987.689 }, rot = { x = 0.000, y = 164.984, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 235002, monster_id = 20011501, pos = { x = 924.019, y = 1020.100, z = 984.047 }, rot = { x = 0.000, y = 124.208, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 235003, monster_id = 20011401, pos = { x = 922.169, y = 1016.480, z = 982.403 }, rot = { x = 0.000, y = 66.975, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 235004, gadget_id = 70211102, pos = { x = 922.818, y = 1016.130, z = 984.866 }, rot = { x = 1.939, y = 91.188, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 235005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 923.034, y = 1016.425, z = 984.533 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1235005, name = "ENTER_REGION_235005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_235005", action = "action_EVENT_ENTER_REGION_235005" },
	{ config_id = 1235006, name = "ANY_MONSTER_DIE_235006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_235006", action = "action_EVENT_ANY_MONSTER_DIE_235006" }
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
		gadgets = { 235004 },
		regions = { 235005 },
		triggers = { "ENTER_REGION_235005", "ANY_MONSTER_DIE_235006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 235001, 235002, 235003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_235006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_235005(context, evt)
	if evt.param1 ~= 235005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_235005(context, evt)
	-- 将configid为 235004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001235, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_235006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_235006(context, evt)
	-- 将configid为 235004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235004, GadgetState.Default) then
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