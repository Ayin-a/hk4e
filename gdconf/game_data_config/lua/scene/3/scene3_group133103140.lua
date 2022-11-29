-- 基础信息
local base_info = {
	group_id = 133103140
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140002, monster_id = 25020201, pos = { x = 954.006, y = 272.145, z = 1542.778 }, rot = { x = 0.000, y = 48.440, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 2, area_id = 6 },
	{ config_id = 140003, monster_id = 25070101, pos = { x = 952.486, y = 272.853, z = 1536.630 }, rot = { x = 0.000, y = 242.559, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140004, gadget_id = 70211112, pos = { x = 957.051, y = 272.452, z = 1539.219 }, rot = { x = 0.000, y = 307.659, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 140005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 952.666, y = 272.526, z = 1540.018 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1140005, name = "ENTER_REGION_140005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_140005", action = "action_EVENT_ENTER_REGION_140005" },
	{ config_id = 1140006, name = "ANY_MONSTER_DIE_140006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140006", action = "action_EVENT_ANY_MONSTER_DIE_140006" }
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
		gadgets = { 140004 },
		regions = { 140005 },
		triggers = { "ENTER_REGION_140005", "ANY_MONSTER_DIE_140006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 140002, 140003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_140006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_140005(context, evt)
	if evt.param1 ~= 140005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_140005(context, evt)
	-- 将configid为 140004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103140, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_140006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140006(context, evt)
	-- 将configid为 140004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140004, GadgetState.Default) then
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