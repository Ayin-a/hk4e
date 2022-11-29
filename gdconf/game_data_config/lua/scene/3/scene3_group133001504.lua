-- 基础信息
local base_info = {
	group_id = 133001504
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 504001, monster_id = 20010801, pos = { x = 1153.067, y = 298.381, z = -1568.207 }, rot = { x = 0.000, y = 28.221, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 504002, monster_id = 20010801, pos = { x = 1153.538, y = 298.263, z = -1570.501 }, rot = { x = 0.000, y = 28.221, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 504003, monster_id = 20010801, pos = { x = 1150.144, y = 298.858, z = -1570.269 }, rot = { x = 0.000, y = 28.221, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 504004, gadget_id = 70211102, pos = { x = 1152.303, y = 298.517, z = -1570.115 }, rot = { x = 356.485, y = 0.327, z = 349.380 }, level = 11, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 504005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1152.406, y = 298.506, z = -1569.974 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1504005, name = "ENTER_REGION_504005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_504005", action = "action_EVENT_ENTER_REGION_504005" },
	{ config_id = 1504006, name = "ANY_MONSTER_DIE_504006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_504006", action = "action_EVENT_ANY_MONSTER_DIE_504006" }
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
		gadgets = { 504004 },
		regions = { 504005 },
		triggers = { "ENTER_REGION_504005", "ANY_MONSTER_DIE_504006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 504001, 504002, 504003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_504006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_504005(context, evt)
	if evt.param1 ~= 504005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_504005(context, evt)
	-- 将configid为 504004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 504004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001504, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_504006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_504006(context, evt)
	-- 将configid为 504004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 504004, GadgetState.Default) then
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