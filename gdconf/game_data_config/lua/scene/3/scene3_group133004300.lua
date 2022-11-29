-- 基础信息
local base_info = {
	group_id = 133004300
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 300007, monster_id = 20011501, pos = { x = 2238.194, y = 268.734, z = -298.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 3 },
	{ config_id = 300008, monster_id = 20011401, pos = { x = 2239.542, y = 268.718, z = -299.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 3 },
	{ config_id = 300009, monster_id = 20011401, pos = { x = 2236.594, y = 268.722, z = -298.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 300004, gadget_id = 70211112, pos = { x = 2237.400, y = 268.642, z = -299.800 }, rot = { x = 0.000, y = 0.472, z = 0.000 }, level = 11, drop_tag = "解谜中级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 300005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2237.336, y = 268.633, z = -298.865 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1300005, name = "ENTER_REGION_300005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_300005", action = "action_EVENT_ENTER_REGION_300005" },
	{ config_id = 1300006, name = "ANY_MONSTER_DIE_300006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_300006", action = "action_EVENT_ANY_MONSTER_DIE_300006" }
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
		gadgets = { 300004 },
		regions = { 300005 },
		triggers = { "ENTER_REGION_300005", "ANY_MONSTER_DIE_300006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 300007, 300008, 300009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_300006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_300005(context, evt)
	if evt.param1 ~= 300005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_300005(context, evt)
	-- 将configid为 300004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004300, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_300006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_300006(context, evt)
	-- 将configid为 300004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300004, GadgetState.Default) then
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