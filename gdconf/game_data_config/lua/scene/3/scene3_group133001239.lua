-- 基础信息
local base_info = {
	group_id = 133001239
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 239001, monster_id = 20011201, pos = { x = 1482.540, y = 262.770, z = -1357.655 }, rot = { x = 0.000, y = 47.230, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 239002, monster_id = 20011201, pos = { x = 1482.578, y = 263.579, z = -1354.138 }, rot = { x = 0.000, y = 63.939, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 239003, monster_id = 20011201, pos = { x = 1481.091, y = 264.789, z = -1352.083 }, rot = { x = 0.000, y = 94.827, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 239004, gadget_id = 70211102, pos = { x = 1480.607, y = 263.644, z = -1355.788 }, rot = { x = 347.765, y = 85.332, z = 13.788 }, level = 6, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 239005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1481.114, y = 264.218, z = -1355.026 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1239005, name = "ENTER_REGION_239005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_239005", action = "action_EVENT_ENTER_REGION_239005" },
	{ config_id = 1239006, name = "ANY_MONSTER_DIE_239006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_239006", action = "action_EVENT_ANY_MONSTER_DIE_239006" }
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
		gadgets = { 239004 },
		regions = { 239005 },
		triggers = { "ENTER_REGION_239005", "ANY_MONSTER_DIE_239006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 239001, 239002, 239003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_239006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_239005(context, evt)
	if evt.param1 ~= 239005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_239005(context, evt)
	-- 将configid为 239004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001239, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_239006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_239006(context, evt)
	-- 将configid为 239004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239004, GadgetState.Default) then
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