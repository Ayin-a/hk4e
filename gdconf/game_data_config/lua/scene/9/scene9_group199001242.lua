-- 基础信息
local base_info = {
	group_id = 199001242
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 242001, monster_id = 21010501, pos = { x = 142.405, y = 120.490, z = 326.927 }, rot = { x = 0.000, y = 333.657, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 242002, monster_id = 22010101, pos = { x = 134.394, y = 120.000, z = 333.643 }, rot = { x = 0.000, y = 24.797, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 242003, monster_id = 21010501, pos = { x = 147.603, y = 120.483, z = 330.984 }, rot = { x = 0.000, y = 315.317, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 242004, gadget_id = 70211102, pos = { x = 137.008, y = 119.956, z = 339.598 }, rot = { x = 0.000, y = 65.948, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 242005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 137.008, y = 119.956, z = 339.598 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1242005, name = "ENTER_REGION_242005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_242005", action = "action_EVENT_ENTER_REGION_242005" },
	{ config_id = 1242006, name = "ANY_MONSTER_DIE_242006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_242006", action = "action_EVENT_ANY_MONSTER_DIE_242006" }
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
		gadgets = { 242004 },
		regions = { 242005 },
		triggers = { "ENTER_REGION_242005", "ANY_MONSTER_DIE_242006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 242001, 242002, 242003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_242006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_242005(context, evt)
	if evt.param1 ~= 242005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_242005(context, evt)
	-- 将configid为 242004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 242004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001242, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_242006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_242006(context, evt)
	-- 将configid为 242004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 242004, GadgetState.Default) then
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