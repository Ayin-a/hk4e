-- 基础信息
local base_info = {
	group_id = 155005155
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 21010901, pos = { x = 670.179, y = 259.387, z = 527.335 }, rot = { x = 0.000, y = 29.095, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 200 },
	{ config_id = 155005, monster_id = 22010101, pos = { x = 663.943, y = 259.528, z = 526.711 }, rot = { x = 0.000, y = 149.594, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 200 },
	{ config_id = 155007, monster_id = 21010201, pos = { x = 668.884, y = 259.375, z = 523.581 }, rot = { x = 0.000, y = 248.108, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 155008, monster_id = 21010201, pos = { x = 665.033, y = 259.339, z = 521.591 }, rot = { x = 0.000, y = 47.211, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155002, gadget_id = 70211002, pos = { x = 671.330, y = 259.288, z = 523.259 }, rot = { x = 0.000, y = 230.879, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 155004, gadget_id = 70300089, pos = { x = 666.565, y = 259.350, z = 522.646 }, rot = { x = 0.000, y = 25.592, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 155009, gadget_id = 70300086, pos = { x = 673.426, y = 258.758, z = 526.880 }, rot = { x = 0.000, y = 51.403, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155003, name = "ANY_MONSTER_DIE_155003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155003", action = "action_EVENT_ANY_MONSTER_DIE_155003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 155006, monster_id = 21030601, pos = { x = 668.311, y = 259.348, z = 522.328 }, rot = { x = 0.000, y = 280.387, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 }
	},
	gadgets = {
		{ config_id = 155010, gadget_id = 70220026, pos = { x = 669.864, y = 259.247, z = 517.531 }, rot = { x = 0.000, y = 4.248, z = 0.000 }, level = 36, area_id = 200 }
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
		monsters = { 155001, 155005, 155007, 155008 },
		gadgets = { 155002, 155004, 155009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_155003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155003(context, evt)
	-- 将configid为 155002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155002, GadgetState.Default) then
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