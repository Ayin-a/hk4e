-- 基础信息
local base_info = {
	group_id = 133307365
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 365001, monster_id = 25210103, pos = { x = -1364.547, y = 6.115, z = 5778.671 }, rot = { x = 0.000, y = 149.960, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 365002, monster_id = 25210203, pos = { x = -1374.347, y = 6.522, z = 5781.473 }, rot = { x = 0.000, y = 115.946, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 365003, monster_id = 25210303, pos = { x = -1356.909, y = 6.184, z = 5776.388 }, rot = { x = 0.000, y = 243.039, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 365004, gadget_id = 70211102, pos = { x = -1361.673, y = 6.112, z = 5776.000 }, rot = { x = 0.000, y = 192.107, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 365005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1361.650, y = 6.600, z = 5775.521 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1365005, name = "ENTER_REGION_365005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_365005", action = "action_EVENT_ENTER_REGION_365005" },
	{ config_id = 1365006, name = "ANY_MONSTER_DIE_365006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_365006", action = "action_EVENT_ANY_MONSTER_DIE_365006" }
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
		gadgets = { 365004 },
		regions = { 365005 },
		triggers = { "ENTER_REGION_365005", "ANY_MONSTER_DIE_365006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 365001, 365002, 365003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_365006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_365005(context, evt)
	if evt.param1 ~= 365005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_365005(context, evt)
	-- 将configid为 365004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 365004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307365, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_365006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_365006(context, evt)
	-- 将configid为 365004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 365004, GadgetState.Default) then
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