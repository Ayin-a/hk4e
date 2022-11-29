-- 基础信息
local base_info = {
	group_id = 155005098
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 98001, monster_id = 20011001, pos = { x = 229.527, y = 275.652, z = 431.756 }, rot = { x = 5.173, y = 109.666, z = 12.778 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 98002, monster_id = 20011001, pos = { x = 226.412, y = 276.381, z = 431.345 }, rot = { x = 5.173, y = 109.666, z = 12.778 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 98003, monster_id = 20011001, pos = { x = 229.980, y = 275.182, z = 434.291 }, rot = { x = 5.173, y = 109.666, z = 12.778 }, level = 36, drop_tag = "史莱姆", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 98004, gadget_id = 70211102, pos = { x = 226.957, y = 275.822, z = 434.644 }, rot = { x = 351.840, y = 164.703, z = 14.907 }, level = 16, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 98005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 226.949, y = 276.553, z = 434.673 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1098005, name = "ENTER_REGION_98005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98005", action = "action_EVENT_ENTER_REGION_98005" },
	{ config_id = 1098006, name = "ANY_MONSTER_DIE_98006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_98006", action = "action_EVENT_ANY_MONSTER_DIE_98006" }
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
		gadgets = { 98004 },
		regions = { 98005 },
		triggers = { "ENTER_REGION_98005", "ANY_MONSTER_DIE_98006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 98001, 98002, 98003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_98006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_98005(context, evt)
	if evt.param1 ~= 98005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98005(context, evt)
	-- 将configid为 98004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005098, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_98006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_98006(context, evt)
	-- 将configid为 98004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98004, GadgetState.Default) then
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