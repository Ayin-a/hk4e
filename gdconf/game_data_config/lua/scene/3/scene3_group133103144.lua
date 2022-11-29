-- 基础信息
local base_info = {
	group_id = 133103144
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144007, monster_id = 25010601, pos = { x = 920.501, y = 260.144, z = 1610.909 }, rot = { x = 0.000, y = 43.597, z = 0.000 }, level = 24, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 144008, monster_id = 25020201, pos = { x = 924.063, y = 259.482, z = 1610.978 }, rot = { x = 0.000, y = 316.989, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, area_id = 6 },
	{ config_id = 144009, monster_id = 25060101, pos = { x = 924.109, y = 259.393, z = 1614.286 }, rot = { x = 0.000, y = 176.168, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144004, gadget_id = 70211112, pos = { x = 920.683, y = 259.725, z = 1612.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 144010, gadget_id = 70310006, pos = { x = 922.348, y = 259.581, z = 1612.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 144005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 920.786, y = 259.708, z = 1612.858 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1144005, name = "ENTER_REGION_144005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_144005", action = "action_EVENT_ENTER_REGION_144005" },
	{ config_id = 1144006, name = "ANY_MONSTER_DIE_144006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144006", action = "action_EVENT_ANY_MONSTER_DIE_144006" }
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
		gadgets = { 144004, 144010 },
		regions = { 144005 },
		triggers = { "ENTER_REGION_144005", "ANY_MONSTER_DIE_144006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 144007, 144008, 144009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_144005(context, evt)
	if evt.param1 ~= 144005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_144005(context, evt)
	-- 将configid为 144004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103144, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144006(context, evt)
	-- 将configid为 144004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144004, GadgetState.Default) then
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