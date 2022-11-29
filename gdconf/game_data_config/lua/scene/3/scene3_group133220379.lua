-- 基础信息
local base_info = {
	group_id = 133220379
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379001, monster_id = 20010801, pos = { x = -2965.825, y = 204.836, z = -4067.208 }, rot = { x = 0.000, y = 53.483, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 379002, monster_id = 20010801, pos = { x = -2962.394, y = 205.046, z = -4070.463 }, rot = { x = 0.000, y = 53.483, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 379003, monster_id = 20010801, pos = { x = -2963.638, y = 204.912, z = -4068.806 }, rot = { x = 0.000, y = 53.483, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 379004, gadget_id = 70211102, pos = { x = -2966.375, y = 205.686, z = -4070.757 }, rot = { x = 16.122, y = 52.227, z = 3.342 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 379005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2963.988, y = 206.021, z = -4068.698 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1379005, name = "ENTER_REGION_379005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_379005", action = "action_EVENT_ENTER_REGION_379005" },
	{ config_id = 1379006, name = "ANY_MONSTER_DIE_379006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_379006", action = "action_EVENT_ANY_MONSTER_DIE_379006" }
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
		gadgets = { 379004 },
		regions = { 379005 },
		triggers = { "ENTER_REGION_379005", "ANY_MONSTER_DIE_379006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 379001, 379002, 379003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_379006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_379005(context, evt)
	if evt.param1 ~= 379005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_379005(context, evt)
	-- 将configid为 379004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220379, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_379006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_379006(context, evt)
	-- 将configid为 379004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379004, GadgetState.Default) then
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