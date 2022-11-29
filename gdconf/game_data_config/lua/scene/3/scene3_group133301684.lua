-- 基础信息
local base_info = {
	group_id = 133301684
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 684001, monster_id = 21010701, pos = { x = -308.198, y = 269.543, z = 3366.540 }, rot = { x = 0.000, y = 48.067, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 22 },
	{ config_id = 684004, monster_id = 26090101, pos = { x = -302.964, y = 270.395, z = 3371.450 }, rot = { x = 0.000, y = 38.096, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 22 },
	{ config_id = 684006, monster_id = 21011001, pos = { x = -307.745, y = 270.313, z = 3363.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 22 },
	{ config_id = 684007, monster_id = 26120301, pos = { x = -313.146, y = 269.970, z = 3362.270 }, rot = { x = 0.000, y = 46.138, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 684008, monster_id = 26090101, pos = { x = -309.054, y = 270.734, z = 3359.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 684002, gadget_id = 70211151, pos = { x = -307.192, y = 270.864, z = 3359.270 }, rot = { x = 11.943, y = 297.959, z = 348.448 }, level = 26, chest_drop_id = 21910050, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1684003, name = "ANY_MONSTER_DIE_684003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_684003", action = "action_EVENT_ANY_MONSTER_DIE_684003" },
	{ config_id = 1684010, name = "MONSTER_BATTLE_684010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_684010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 684005, monster_id = 21011001, pos = { x = -311.616, y = 269.343, z = 3366.537 }, rot = { x = 0.000, y = 42.907, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 22 },
		{ config_id = 684009, monster_id = 26090101, pos = { x = -313.435, y = 269.660, z = 3368.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
	}
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
		monsters = { 684001, 684004, 684006 },
		gadgets = { 684002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_684003", "MONSTER_BATTLE_684010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 684007, 684008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_684003", "MONSTER_BATTLE_684010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_684003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_684003(context, evt)
	-- 将configid为 684002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 684002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_684010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301684, 2)
	
	return 0
end