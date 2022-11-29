-- 基础信息
local base_info = {
	group_id = 133315139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139001, monster_id = 26090101, pos = { x = 89.083, y = 135.280, z = 2993.621 }, rot = { x = 0.000, y = 73.949, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 20 },
	{ config_id = 139002, monster_id = 26090101, pos = { x = 88.361, y = 135.280, z = 2998.670 }, rot = { x = 0.000, y = 73.949, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 20 },
	{ config_id = 139003, monster_id = 26090101, pos = { x = 92.794, y = 135.280, z = 3001.885 }, rot = { x = 0.000, y = 73.949, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 20 },
	{ config_id = 139006, monster_id = 26090101, pos = { x = 89.311, y = 135.280, z = 3009.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 139007, monster_id = 26090101, pos = { x = 88.668, y = 135.280, z = 3005.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 139009, gadget_id = 70211002, pos = { x = 94.822, y = 133.456, z = 2995.691 }, rot = { x = 1.630, y = 296.444, z = 357.755 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1139005, name = "MONSTER_BATTLE_139005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_139005", action = "action_EVENT_MONSTER_BATTLE_139005" },
	{ config_id = 1139008, name = "ANY_MONSTER_DIE_139008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_139008", action = "action_EVENT_ANY_MONSTER_DIE_139008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 139004, gadget_id = 70310198, pos = { x = 85.845, y = 135.396, z = 3031.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
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
		monsters = { 139001, 139002, 139003 },
		gadgets = { 139009 },
		regions = { },
		triggers = { "MONSTER_BATTLE_139005", "ANY_MONSTER_DIE_139008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 139006, 139007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_139005(context, evt)
	if 139001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_139005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315139, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_139008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_139008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 139009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end