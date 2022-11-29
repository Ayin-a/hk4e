-- 基础信息
local base_info = {
	group_id = 144001032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32004, monster_id = 20011001, pos = { x = 335.827, y = 211.249, z = 199.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 102 },
	{ config_id = 32005, monster_id = 20011101, pos = { x = 334.135, y = 211.244, z = 199.526 }, rot = { x = 0.000, y = 36.511, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 102 },
	{ config_id = 32007, monster_id = 20011001, pos = { x = 332.797, y = 210.809, z = 201.163 }, rot = { x = 0.000, y = 61.313, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32002, gadget_id = 70211002, pos = { x = 331.354, y = 212.734, z = 196.911 }, rot = { x = 5.863, y = 25.618, z = 7.346 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
	{ config_id = 32008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 333.675, y = 211.030, z = 199.971 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1032003, name = "ANY_MONSTER_DIE_32003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32003", action = "action_EVENT_ANY_MONSTER_DIE_32003" },
	{ config_id = 1032008, name = "ENTER_REGION_32008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32008", action = "action_EVENT_ENTER_REGION_32008" }
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
		gadgets = { 32002 },
		regions = { 32008 },
		triggers = { "ANY_MONSTER_DIE_32003", "ENTER_REGION_32008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 32004, 32005, 32007 },
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
function condition_EVENT_ANY_MONSTER_DIE_32003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32003(context, evt)
	-- 将configid为 32002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32008(context, evt)
	if evt.param1 ~= 32008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001032, 2)
	
	-- 将configid为 32002 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32002, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end