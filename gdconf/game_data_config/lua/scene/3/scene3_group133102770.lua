-- 基础信息
local base_info = {
	group_id = 133102770
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 770001, monster_id = 20011401, pos = { x = 1546.390, y = 258.408, z = 134.999 }, rot = { x = 7.054, y = 271.142, z = 3.690 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 770002, monster_id = 20011401, pos = { x = 1548.574, y = 258.707, z = 132.296 }, rot = { x = 9.367, y = 277.327, z = 356.749 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 770003, monster_id = 20011401, pos = { x = 1548.953, y = 258.938, z = 136.870 }, rot = { x = 10.103, y = 241.984, z = 7.587 }, level = 16, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 770004, gadget_id = 70211102, pos = { x = 1548.246, y = 258.637, z = 134.909 }, rot = { x = 11.327, y = 271.990, z = 4.772 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 770005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1547.191, y = 258.489, z = 134.788 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1770005, name = "ENTER_REGION_770005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_770005", action = "action_EVENT_ENTER_REGION_770005" },
	{ config_id = 1770006, name = "ANY_MONSTER_DIE_770006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_770006", action = "action_EVENT_ANY_MONSTER_DIE_770006" }
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
		gadgets = { 770004 },
		regions = { 770005 },
		triggers = { "ENTER_REGION_770005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 770001, 770002, 770003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_770006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_770005(context, evt)
	if evt.param1 ~= 770005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_770005(context, evt)
	-- 将configid为 770004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 770004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102770, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_770006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_770006(context, evt)
	-- 将configid为 770004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 770004, GadgetState.Default) then
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