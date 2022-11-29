-- 基础信息
local base_info = {
	group_id = 133008508
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 508001, monster_id = 21010901, pos = { x = 1064.717, y = 429.892, z = -883.910 }, rot = { x = 0.000, y = 265.985, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", climate_area_id = 1, area_id = 10 },
	{ config_id = 508002, monster_id = 21011301, pos = { x = 1063.150, y = 435.395, z = -872.473 }, rot = { x = 0.000, y = 214.669, z = 0.000 }, level = 30, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
	{ config_id = 508003, monster_id = 21020601, pos = { x = 1053.740, y = 430.929, z = -877.337 }, rot = { x = 0.000, y = 198.298, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 508004, gadget_id = 70211112, pos = { x = 1053.682, y = 430.288, z = -885.397 }, rot = { x = 0.000, y = 176.351, z = 0.000 }, level = 26, drop_tag = "雪山解谜中级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 508005, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1053.003, y = 430.477, z = -884.106 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1508005, name = "ENTER_REGION_508005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_508005", action = "action_EVENT_ENTER_REGION_508005" },
	{ config_id = 1508006, name = "ANY_MONSTER_DIE_508006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_508006", action = "action_EVENT_ANY_MONSTER_DIE_508006" }
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
		gadgets = { 508004 },
		regions = { 508005 },
		triggers = { "ENTER_REGION_508005", "ANY_MONSTER_DIE_508006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 508001, 508002, 508003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_508006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_508005(context, evt)
	if evt.param1 ~= 508005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_508005(context, evt)
	-- 将configid为 508004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 508004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008508, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_508006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_508006(context, evt)
	-- 将configid为 508004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 508004, GadgetState.Default) then
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