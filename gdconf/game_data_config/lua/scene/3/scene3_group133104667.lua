-- 基础信息
local base_info = {
	group_id = 133104667
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 667001, monster_id = 25020201, pos = { x = 449.254, y = 184.524, z = 931.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 667002, monster_id = 25030201, pos = { x = 453.229, y = 184.733, z = 930.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "盗宝团", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 667004, gadget_id = 70211102, pos = { x = 451.664, y = 188.654, z = 937.517 }, rot = { x = 0.000, y = 198.395, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 667005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 451.648, y = 188.333, z = 936.816 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1667005, name = "ENTER_REGION_667005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_667005", action = "action_EVENT_ENTER_REGION_667005" },
	{ config_id = 1667006, name = "ANY_MONSTER_DIE_667006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_667006", action = "action_EVENT_ANY_MONSTER_DIE_667006" }
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
		gadgets = { 667004 },
		regions = { 667005 },
		triggers = { "ENTER_REGION_667005", "ANY_MONSTER_DIE_667006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 667001, 667002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_667006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_667005(context, evt)
	if evt.param1 ~= 667005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_667005(context, evt)
	-- 将configid为 667004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 667004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104667, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_667006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_667006(context, evt)
	-- 将configid为 667004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 667004, GadgetState.Default) then
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