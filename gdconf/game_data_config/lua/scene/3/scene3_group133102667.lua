-- 基础信息
local base_info = {
	group_id = 133102667
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 667001, monster_id = 20010401, pos = { x = 1788.391, y = 214.108, z = 721.603 }, rot = { x = 0.000, y = 248.844, z = 0.000 }, level = 18, drop_tag = "大史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 667004, monster_id = 20010401, pos = { x = 1784.693, y = 214.108, z = 723.154 }, rot = { x = 0.000, y = 149.421, z = 0.000 }, level = 18, drop_tag = "大史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 667006, monster_id = 20010301, pos = { x = 1787.815, y = 214.108, z = 723.389 }, rot = { x = 0.000, y = 15.126, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 667007, monster_id = 20010301, pos = { x = 1787.029, y = 214.108, z = 723.679 }, rot = { x = 0.000, y = 19.054, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 667008, monster_id = 20010301, pos = { x = 1786.203, y = 214.108, z = 723.939 }, rot = { x = 0.452, y = 14.967, z = 355.171 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 667002, gadget_id = 70211012, pos = { x = 1786.403, y = 216.320, z = 721.942 }, rot = { x = 0.000, y = 19.147, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 667009, gadget_id = 70220019, pos = { x = 1786.360, y = 209.805, z = 722.040 }, rot = { x = 0.000, y = 19.740, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 667005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1786.414, y = 214.108, z = 721.932 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1667003, name = "ANY_MONSTER_DIE_667003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_667003", action = "action_EVENT_ANY_MONSTER_DIE_667003" },
	{ config_id = 1667005, name = "ENTER_REGION_667005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_667005", action = "action_EVENT_ENTER_REGION_667005" }
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
		monsters = { 667001, 667004 },
		gadgets = { 667002, 667009 },
		regions = { 667005 },
		triggers = { "ANY_MONSTER_DIE_667003", "ENTER_REGION_667005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_667003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_667003(context, evt)
	-- 将configid为 667002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 667002, GadgetState.Default) then
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
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 667006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 667007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 667008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end