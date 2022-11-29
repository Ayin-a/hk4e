-- 基础信息
local base_info = {
	group_id = 133213266
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266001, monster_id = 22010101, pos = { x = -3853.519, y = 229.458, z = -2981.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "深渊法师", disableWander = true, area_id = 12 },
	{ config_id = 266002, monster_id = 22010401, pos = { x = -3852.252, y = 229.704, z = -2976.967 }, rot = { x = 0.000, y = 170.711, z = 0.000 }, level = 28, drop_tag = "深渊法师", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 266004, gadget_id = 70211102, pos = { x = -3854.831, y = 229.888, z = -2979.400 }, rot = { x = 15.810, y = 66.031, z = 353.006 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 266005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3854.831, y = 229.888, z = -2979.400 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1266005, name = "ENTER_REGION_266005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_266005", action = "action_EVENT_ENTER_REGION_266005" },
	{ config_id = 1266006, name = "ANY_MONSTER_DIE_266006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_266006", action = "action_EVENT_ANY_MONSTER_DIE_266006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 266003, monster_id = 26060201, pos = { x = -3851.784, y = 228.902, z = -2979.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "雷萤", area_id = 12 },
		{ config_id = 266007, monster_id = 26060101, pos = { x = -3848.039, y = 231.378, z = -2979.682 }, rot = { x = 0.000, y = 49.311, z = 0.000 }, level = 27, drop_tag = "雷萤", area_id = 12 },
		{ config_id = 266008, monster_id = 26060101, pos = { x = -3847.608, y = 227.547, z = -2981.741 }, rot = { x = 0.000, y = 49.311, z = 0.000 }, level = 27, drop_tag = "雷萤", area_id = 12 },
		{ config_id = 266009, monster_id = 26060101, pos = { x = -3853.412, y = 229.433, z = -2979.833 }, rot = { x = 0.000, y = 49.311, z = 0.000 }, level = 27, drop_tag = "雷萤", area_id = 12 }
	}
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
		gadgets = { 266004 },
		regions = { 266005 },
		triggers = { "ENTER_REGION_266005", "ANY_MONSTER_DIE_266006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 266001, 266002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_266006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_266005(context, evt)
	if evt.param1 ~= 266005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_266005(context, evt)
	-- 将configid为 266004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 266004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213266, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_266006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_266006(context, evt)
	-- 将configid为 266004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 266004, GadgetState.Default) then
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