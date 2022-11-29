-- 基础信息
local base_info = {
	group_id = 133102379
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379001, monster_id = 22010201, pos = { x = 1500.713, y = 203.966, z = 173.753 }, rot = { x = 24.214, y = 338.209, z = 12.392 }, level = 16, drop_tag = "深渊法师", disableWander = true, area_id = 5 },
	{ config_id = 379002, monster_id = 20010801, pos = { x = 1501.809, y = 204.036, z = 175.774 }, rot = { x = 16.272, y = 337.874, z = 16.219 }, level = 16, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 379003, monster_id = 20010801, pos = { x = 1498.208, y = 203.000, z = 174.183 }, rot = { x = 19.355, y = 337.294, z = 10.257 }, level = 16, drop_tag = "史莱姆", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 379004, gadget_id = 70211012, pos = { x = 1501.788, y = 205.021, z = 170.819 }, rot = { x = 18.219, y = 321.793, z = 2.133 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 379006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1501.737, y = 204.975, z = 171.386 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1379005, name = "ANY_MONSTER_DIE_379005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_379005", action = "action_EVENT_ANY_MONSTER_DIE_379005" },
	{ config_id = 1379006, name = "ENTER_REGION_379006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_379006", action = "action_EVENT_ENTER_REGION_379006" }
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
		gadgets = { 379004 },
		regions = { 379006 },
		triggers = { "ANY_MONSTER_DIE_379005", "ENTER_REGION_379006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 379001, 379002, 379003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_379005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_379005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_379005(context, evt)
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

-- 触发条件
function condition_EVENT_ENTER_REGION_379006(context, evt)
	if evt.param1 ~= 379006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_379006(context, evt)
	-- 将configid为 379004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102379, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end