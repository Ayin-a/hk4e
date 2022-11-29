-- 基础信息
local base_info = {
	group_id = 133217105
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105001, monster_id = 23010201, pos = { x = -4332.480, y = 201.329, z = -3945.442 }, rot = { x = 4.760, y = 256.480, z = 0.692 }, level = 30, drop_tag = "先遣队", area_id = 14 },
	{ config_id = 105004, monster_id = 23010501, pos = { x = -4336.804, y = 201.647, z = -3944.458 }, rot = { x = 0.000, y = 137.567, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 105002, gadget_id = 70211002, pos = { x = -4343.533, y = 203.512, z = -3938.152 }, rot = { x = 2.000, y = 171.616, z = 355.005 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 105007, gadget_id = 70210101, pos = { x = -4331.506, y = 202.752, z = -3941.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 105008, gadget_id = 70210101, pos = { x = -4336.030, y = 202.829, z = -3936.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 105009, gadget_id = 70210101, pos = { x = -4326.190, y = 202.739, z = -3941.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1105003, name = "ANY_MONSTER_DIE_105003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105003", action = "action_EVENT_ANY_MONSTER_DIE_105003" },
	{ config_id = 1105010, name = "MONSTER_BATTLE_105010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_105010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 105005, monster_id = 23010401, pos = { x = -4120.360, y = 200.000, z = -4101.105 }, rot = { x = 357.151, y = 17.081, z = 355.703 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1105006, name = "MONSTER_BATTLE_105006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_105006", action = "action_EVENT_MONSTER_BATTLE_105006" }
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
		monsters = { 105004 },
		gadgets = { 105002, 105007, 105008, 105009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_105003", "MONSTER_BATTLE_105010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 105001 },
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
function condition_EVENT_ANY_MONSTER_DIE_105003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_105003(context, evt)
	-- 将configid为 105002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_105010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217105, 2)
	
	return 0
end