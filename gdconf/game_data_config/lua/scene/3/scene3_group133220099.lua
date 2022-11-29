-- 基础信息
local base_info = {
	group_id = 133220099
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 26010301, pos = { x = -2453.615, y = 199.887, z = -4646.738 }, rot = { x = 0.000, y = 270.598, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 11 },
	{ config_id = 99002, monster_id = 26010301, pos = { x = -2451.682, y = 199.885, z = -4643.320 }, rot = { x = 0.000, y = 270.598, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 99004, gadget_id = 70211102, pos = { x = -2452.583, y = 200.040, z = -4645.366 }, rot = { x = 0.291, y = 302.520, z = 359.532 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 99005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2452.589, y = 201.023, z = -4645.106 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1099005, name = "ENTER_REGION_99005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_99005", action = "action_EVENT_ENTER_REGION_99005" },
	{ config_id = 1099006, name = "ANY_MONSTER_DIE_99006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99006", action = "action_EVENT_ANY_MONSTER_DIE_99006" }
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
		gadgets = { 99004 },
		regions = { 99005 },
		triggers = { "ENTER_REGION_99005", "ANY_MONSTER_DIE_99006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 99001, 99002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_99005(context, evt)
	if evt.param1 ~= 99005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_99005(context, evt)
	-- 将configid为 99004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220099, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99006(context, evt)
	-- 将configid为 99004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99004, GadgetState.Default) then
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