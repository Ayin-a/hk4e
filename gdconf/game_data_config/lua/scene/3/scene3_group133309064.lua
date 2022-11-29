-- 基础信息
local base_info = {
	group_id = 133309064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64001, monster_id = 26120401, pos = { x = -2687.568, y = -87.888, z = 5347.127 }, rot = { x = 0.000, y = 185.962, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 64002, monster_id = 26120401, pos = { x = -2687.604, y = -87.591, z = 5338.748 }, rot = { x = 0.000, y = 359.889, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 64003, monster_id = 26120401, pos = { x = -2691.855, y = -87.896, z = 5343.001 }, rot = { x = 0.000, y = 89.653, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 64004, gadget_id = 70211112, pos = { x = -2687.629, y = -88.013, z = 5342.828 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 64005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2687.526, y = -88.026, z = 5342.970 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1064005, name = "ENTER_REGION_64005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64005", action = "action_EVENT_ENTER_REGION_64005" },
	{ config_id = 1064006, name = "ANY_MONSTER_DIE_64006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64006", action = "action_EVENT_ANY_MONSTER_DIE_64006" }
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
		gadgets = { 64004 },
		regions = { 64005 },
		triggers = { "ENTER_REGION_64005", "ANY_MONSTER_DIE_64006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 64001, 64002, 64003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_64006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_64005(context, evt)
	if evt.param1 ~= 64005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64005(context, evt)
	-- 将configid为 64004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309064, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_64006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_64006(context, evt)
	-- 将configid为 64004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64004, GadgetState.Default) then
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