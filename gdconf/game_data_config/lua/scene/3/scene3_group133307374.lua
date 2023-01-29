-- 基础信息
local base_info = {
	group_id = 133307374
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 374001, monster_id = 24040201, pos = { x = -1703.766, y = 10.250, z = 5712.882 }, rot = { x = 0.000, y = 106.777, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 374002, gadget_id = 70330432, pos = { x = -1702.402, y = 10.498, z = 5717.002 }, rot = { x = 0.002, y = 186.266, z = 20.762 }, level = 32, area_id = 32 },
	{ config_id = 374003, gadget_id = 70330432, pos = { x = -1690.981, y = 9.624, z = 5712.525 }, rot = { x = 331.061, y = 270.145, z = 2.190 }, level = 32, area_id = 32 },
	{ config_id = 374004, gadget_id = 70211102, pos = { x = -1694.771, y = 10.301, z = 5714.066 }, rot = { x = 0.000, y = 192.099, z = 3.443 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 374005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1694.720, y = 10.738, z = 5713.582 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1374005, name = "ENTER_REGION_374005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_374005", action = "action_EVENT_ENTER_REGION_374005" },
	{ config_id = 1374006, name = "ANY_MONSTER_DIE_374006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_374006", action = "action_EVENT_ANY_MONSTER_DIE_374006" }
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
		gadgets = { 374002, 374003, 374004 },
		regions = { 374005 },
		triggers = { "ENTER_REGION_374005", "ANY_MONSTER_DIE_374006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 374001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_374006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_374005(context, evt)
	if evt.param1 ~= 374005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_374005(context, evt)
	-- 将configid为 374004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 374004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307374, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_374006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_374006(context, evt)
	-- 将configid为 374004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 374004, GadgetState.Default) then
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