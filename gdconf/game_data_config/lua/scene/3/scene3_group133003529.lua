-- 基础信息
local base_info = {
	group_id = 133003529
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529001, monster_id = 20011201, pos = { x = 2689.965, y = 262.872, z = -1351.031 }, rot = { x = 0.000, y = 343.060, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 529007, monster_id = 20011301, pos = { x = 2685.883, y = 263.431, z = -1352.088 }, rot = { x = 0.000, y = 92.995, z = 0.000 }, level = 13, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 529008, monster_id = 20011201, pos = { x = 2689.137, y = 263.223, z = -1354.231 }, rot = { x = 0.000, y = 343.060, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 529004, gadget_id = 70211102, pos = { x = 2687.892, y = 263.245, z = -1352.959 }, rot = { x = 0.000, y = 67.484, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 529005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2687.997, y = 263.826, z = -1352.818 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1529005, name = "ENTER_REGION_529005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_529005", action = "action_EVENT_ENTER_REGION_529005" },
	{ config_id = 1529006, name = "ANY_MONSTER_DIE_529006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_529006", action = "action_EVENT_ANY_MONSTER_DIE_529006" }
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
		gadgets = { 529004 },
		regions = { 529005 },
		triggers = { "ENTER_REGION_529005", "ANY_MONSTER_DIE_529006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 529001, 529007, 529008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_529006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_529005(context, evt)
	if evt.param1 ~= 529005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_529005(context, evt)
	-- 将configid为 529004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 529004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003529, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_529006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_529006(context, evt)
	-- 将configid为 529004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 529004, GadgetState.Default) then
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