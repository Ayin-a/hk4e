-- 基础信息
local base_info = {
	group_id = 133213282
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 282001, monster_id = 23010601, pos = { x = -3921.745, y = 205.862, z = -3032.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "先遣队", area_id = 12 },
	{ config_id = 282002, monster_id = 23010301, pos = { x = -3914.136, y = 204.449, z = -3032.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "先遣队", area_id = 12 },
	{ config_id = 282003, monster_id = 23010501, pos = { x = -3917.285, y = 204.682, z = -3029.212 }, rot = { x = 0.000, y = 73.148, z = 0.000 }, level = 28, drop_tag = "先遣队", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 282004, gadget_id = 70211102, pos = { x = -3909.069, y = 205.225, z = -3024.678 }, rot = { x = 18.102, y = 204.551, z = 359.269 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 282005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3909.460, y = 205.389, z = -3024.926 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1282005, name = "ENTER_REGION_282005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_282005", action = "action_EVENT_ENTER_REGION_282005" },
	{ config_id = 1282006, name = "ANY_MONSTER_DIE_282006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_282006", action = "action_EVENT_ANY_MONSTER_DIE_282006" }
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
		gadgets = { 282004 },
		regions = { 282005 },
		triggers = { "ENTER_REGION_282005", "ANY_MONSTER_DIE_282006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 282001, 282002, 282003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_282006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_282005(context, evt)
	if evt.param1 ~= 282005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_282005(context, evt)
	-- 将configid为 282004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 282004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213282, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_282006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_282006(context, evt)
	-- 将configid为 282004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 282004, GadgetState.Default) then
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