-- 基础信息
local base_info = {
	group_id = 144001181
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 21010201, pos = { x = 218.326, y = 202.204, z = 599.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 102 },
	{ config_id = 181004, monster_id = 21010201, pos = { x = 218.415, y = 202.174, z = 603.023 }, rot = { x = 0.000, y = 184.300, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 102 },
	{ config_id = 181005, monster_id = 21030301, pos = { x = 221.568, y = 202.201, z = 600.828 }, rot = { x = 0.000, y = 268.850, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 102 },
	{ config_id = 181011, monster_id = 21010401, pos = { x = 229.864, y = 203.852, z = 587.131 }, rot = { x = 0.000, y = 174.123, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 402, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 181002, gadget_id = 70211002, pos = { x = 213.841, y = 202.212, z = 600.094 }, rot = { x = 0.000, y = 89.680, z = 0.000 }, level = 16, chest_drop_id = 1002000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 181006, gadget_id = 70220026, pos = { x = 218.341, y = 202.146, z = 604.631 }, rot = { x = 0.000, y = 343.482, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 181007, gadget_id = 70220026, pos = { x = 222.572, y = 202.202, z = 597.536 }, rot = { x = 0.000, y = 20.597, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 181008, gadget_id = 70310001, pos = { x = 212.518, y = 202.212, z = 601.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 181009, gadget_id = 70310019, pos = { x = 211.950, y = 202.264, z = 598.501 }, rot = { x = 0.000, y = 57.600, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 181010, gadget_id = 70950092, pos = { x = 230.303, y = 200.000, z = 587.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 181012, gadget_id = 70220013, pos = { x = 216.805, y = 202.144, z = 605.833 }, rot = { x = 0.000, y = 321.524, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 181013, gadget_id = 70300086, pos = { x = 210.776, y = 202.264, z = 598.482 }, rot = { x = 1.804, y = 0.000, z = 5.413 }, level = 1, area_id = 102 }
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
		monsters = { 181001, 181004, 181005, 181011 },
		gadgets = { 181002, 181006, 181007, 181008, 181009, 181010, 181012, 181013 },
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