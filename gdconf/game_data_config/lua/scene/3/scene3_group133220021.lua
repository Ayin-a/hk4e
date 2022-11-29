-- 基础信息
local base_info = {
	group_id = 133220021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 20011001, pos = { x = -2807.728, y = 208.389, z = -4186.124 }, rot = { x = 0.000, y = 302.488, z = 350.285 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 21002, monster_id = 20011001, pos = { x = -2805.513, y = 207.883, z = -4185.600 }, rot = { x = 0.000, y = 302.488, z = 350.285 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 21003, monster_id = 20011001, pos = { x = -2807.050, y = 207.964, z = -4189.082 }, rot = { x = 0.000, y = 302.488, z = 350.285 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21004, gadget_id = 70211102, pos = { x = -2805.064, y = 207.617, z = -4188.130 }, rot = { x = 0.000, y = 302.488, z = 350.285 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 21005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2805.217, y = 208.566, z = -4187.982 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1021005, name = "ENTER_REGION_21005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21005", action = "action_EVENT_ENTER_REGION_21005" },
	{ config_id = 1021006, name = "ANY_MONSTER_DIE_21006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21006", action = "action_EVENT_ANY_MONSTER_DIE_21006" }
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
		gadgets = { 21004 },
		regions = { 21005 },
		triggers = { "ENTER_REGION_21005", "ANY_MONSTER_DIE_21006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 21001, 21002, 21003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_21005(context, evt)
	if evt.param1 ~= 21005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21005(context, evt)
	-- 将configid为 21004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220021, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21006(context, evt)
	-- 将configid为 21004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21004, GadgetState.Default) then
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