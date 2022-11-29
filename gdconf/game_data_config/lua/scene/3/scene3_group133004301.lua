-- 基础信息
local base_info = {
	group_id = 133004301
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 301007, monster_id = 20010801, pos = { x = 2122.936, y = 212.130, z = -557.951 }, rot = { x = 0.000, y = 39.083, z = 0.000 }, level = 11, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 301008, monster_id = 20010801, pos = { x = 2125.878, y = 212.130, z = -560.355 }, rot = { x = 0.000, y = 338.685, z = 0.000 }, level = 11, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 301009, monster_id = 20010801, pos = { x = 2125.478, y = 212.130, z = -557.973 }, rot = { x = 0.000, y = 41.509, z = 0.000 }, level = 11, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 301004, gadget_id = 70211102, pos = { x = 2124.400, y = 211.622, z = -559.300 }, rot = { x = 0.000, y = 41.277, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 301005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2125.116, y = 212.050, z = -558.520 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1301005, name = "ENTER_REGION_301005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301005", action = "action_EVENT_ENTER_REGION_301005" },
	{ config_id = 1301006, name = "ANY_MONSTER_DIE_301006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_301006", action = "action_EVENT_ANY_MONSTER_DIE_301006" }
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
		gadgets = { 301004 },
		regions = { 301005 },
		triggers = { "ENTER_REGION_301005", "ANY_MONSTER_DIE_301006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 301007, 301008, 301009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_301006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_301005(context, evt)
	if evt.param1 ~= 301005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301005(context, evt)
	-- 将configid为 301004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004301, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_301006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_301006(context, evt)
	-- 将configid为 301004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301004, GadgetState.Default) then
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