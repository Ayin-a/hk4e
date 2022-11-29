-- 基础信息
local base_info = {
	group_id = 133302181
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 28061101, pos = { x = -153.813, y = 218.987, z = 2475.590 }, rot = { x = 0.000, y = 296.910, z = 0.000 }, level = 27, drop_tag = "驮兽先遣队", pose_id = 3, area_id = 24 },
	{ config_id = 181004, monster_id = 23010501, pos = { x = -153.295, y = 219.639, z = 2486.865 }, rot = { x = 0.000, y = 242.945, z = 0.000 }, level = 27, drop_tag = "先遣队", pose_id = 9011, area_id = 24 },
	{ config_id = 181005, monster_id = 23010601, pos = { x = -158.855, y = 219.182, z = 2474.090 }, rot = { x = 0.000, y = 48.481, z = 0.000 }, level = 27, drop_tag = "先遣队", pose_id = 9012, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 181002, gadget_id = 70211002, pos = { x = -163.764, y = 219.219, z = 2472.234 }, rot = { x = 0.000, y = 13.257, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 181006, gadget_id = 70310006, pos = { x = -158.126, y = 219.517, z = 2489.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1181003, name = "ANY_MONSTER_DIE_181003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_181003", action = "action_EVENT_ANY_MONSTER_DIE_181003" }
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
		monsters = { 181001, 181004, 181005 },
		gadgets = { 181002, 181006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_181003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_181003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_181003(context, evt)
	-- 将configid为 181002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181002, GadgetState.Default) then
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