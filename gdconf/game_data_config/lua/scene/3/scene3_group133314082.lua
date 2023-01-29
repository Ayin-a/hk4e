-- 基础信息
local base_info = {
	group_id = 133314082
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82001, monster_id = 24040201, pos = { x = -817.026, y = -137.688, z = 4926.954 }, rot = { x = 0.000, y = 116.646, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 },
	{ config_id = 82002, monster_id = 24040101, pos = { x = -815.915, y = -137.357, z = 4919.938 }, rot = { x = 0.000, y = 31.598, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82004, gadget_id = 70211102, pos = { x = -816.679, y = -137.515, z = 4923.956 }, rot = { x = 3.891, y = 76.708, z = 4.330 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 82005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -815.987, y = -137.554, z = 4923.837 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1082005, name = "ENTER_REGION_82005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82005", action = "action_EVENT_ENTER_REGION_82005" },
	{ config_id = 1082006, name = "ANY_MONSTER_DIE_82006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82006", action = "action_EVENT_ANY_MONSTER_DIE_82006" }
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
		monsters = { 82001, 82002 },
		gadgets = { 82004 },
		regions = { 82005 },
		triggers = { "ENTER_REGION_82005", "ANY_MONSTER_DIE_82006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_82005(context, evt)
	if evt.param1 ~= 82005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82005(context, evt)
	-- 将configid为 82004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 通知groupid为133314082中,configid为：82001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 82001, 133314082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133314082中,configid为：82002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 82002, 133314082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82006(context, evt)
	-- 将configid为 82004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82004, GadgetState.Default) then
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