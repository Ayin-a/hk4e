-- 基础信息
local base_info = {
	group_id = 133307337
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 337001, monster_id = 26100301, pos = { x = -1883.686, y = 48.077, z = 5530.566 }, rot = { x = 0.000, y = 142.394, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 337004, monster_id = 28060301, pos = { x = -1881.088, y = 48.272, z = 5504.420 }, rot = { x = 0.000, y = 50.283, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 337005, monster_id = 28060301, pos = { x = -1873.865, y = 48.272, z = 5530.889 }, rot = { x = 0.000, y = 172.824, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 靠近才锁
	{ config_id = 337002, gadget_id = 70211112, pos = { x = -1872.436, y = 29.603, z = 5527.314 }, rot = { x = 349.105, y = 189.388, z = 354.420 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 337006, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1872.482, y = 29.729, z = 5526.868 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1337003, name = "ANY_MONSTER_DIE_337003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_337003", action = "action_EVENT_ANY_MONSTER_DIE_337003" },
	{ config_id = 1337006, name = "ENTER_REGION_337006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_337006", action = "action_EVENT_ENTER_REGION_337006" }
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
		monsters = { 337001, 337004, 337005 },
		gadgets = { 337002 },
		regions = { 337006 },
		triggers = { "ANY_MONSTER_DIE_337003", "ENTER_REGION_337006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置指定gadget的state
function TLA_set_gadget_state_by_configid(context, evt, config_id, state)
	-- 将configid为 config_id 的物件更改为状态 state
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, config_id, state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_337003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_337003(context, evt)
	-- 将configid为 337002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_337006(context, evt)
	if evt.param1 ~= 337006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_337006(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 337002, GadgetState.ChestLocked)
	
	ScriptLib.SetMonsterBattleByGroup(context, 337001, 133307337)
	
	ScriptLib.SetMonsterBattleByGroup(context, 337004, 133307337)
	
	ScriptLib.SetMonsterBattleByGroup(context, 337005, 133307337)
	
	return 0
end