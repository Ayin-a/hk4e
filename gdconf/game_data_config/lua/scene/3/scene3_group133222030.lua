-- 基础信息
local base_info = {
	group_id = 133222030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30005, monster_id = 25080101, pos = { x = -4625.863, y = 200.704, z = -4621.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1004, area_id = 14 },
	{ config_id = 30006, monster_id = 25080201, pos = { x = -4622.466, y = 200.912, z = -4614.714 }, rot = { x = 0.000, y = 139.550, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1006, area_id = 14 },
	{ config_id = 30007, monster_id = 25080201, pos = { x = -4620.373, y = 201.184, z = -4620.346 }, rot = { x = 0.000, y = 331.455, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1006, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30002, gadget_id = 70211002, pos = { x = -4616.748, y = 203.457, z = -4612.930 }, rot = { x = 12.712, y = 242.055, z = 7.264 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 30009, gadget_id = 70300104, pos = { x = -4625.997, y = 200.577, z = -4622.386 }, rot = { x = 8.613, y = 201.023, z = 2.348 }, level = 30, area_id = 14 },
	{ config_id = 30010, gadget_id = 70310006, pos = { x = -4625.935, y = 200.822, z = -4618.643 }, rot = { x = 6.213, y = 271.701, z = 1.075 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030003, name = "ANY_MONSTER_DIE_30003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30003", action = "action_EVENT_ANY_MONSTER_DIE_30003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 30001, monster_id = 25100201, pos = { x = -4624.441, y = 200.438, z = -4612.517 }, rot = { x = 0.000, y = 234.127, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1001, area_id = 14 },
		{ config_id = 30004, monster_id = 25100101, pos = { x = -4619.931, y = 200.567, z = -4616.237 }, rot = { x = 0.000, y = 214.184, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1002, area_id = 14 }
	},
	triggers = {
		{ config_id = 1030008, name = "MONSTER_BATTLE_30008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_30008", trigger_count = 0 }
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
		monsters = { 30005, 30006, 30007 },
		gadgets = { 30002, 30009, 30010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_30003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_30003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30003(context, evt)
	-- 将configid为 30002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30002, GadgetState.Default) then
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