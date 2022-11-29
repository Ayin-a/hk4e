-- 基础信息
local base_info = {
	group_id = 133217080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 23010601, pos = { x = -4431.741, y = 177.230, z = -3816.250 }, rot = { x = 0.968, y = 29.822, z = 1.013 }, level = 30, drop_tag = "先遣队", pose_id = 9002, area_id = 14 },
	{ config_id = 80005, monster_id = 23010201, pos = { x = -4404.606, y = 185.726, z = -3843.845 }, rot = { x = 13.286, y = 275.014, z = 2.251 }, level = 30, drop_tag = "先遣队", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80002, gadget_id = 70211002, pos = { x = -4431.499, y = 180.158, z = -3831.563 }, rot = { x = 354.752, y = 92.609, z = 9.622 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080003, name = "ANY_MONSTER_DIE_80003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80003", action = "action_EVENT_ANY_MONSTER_DIE_80003" },
	{ config_id = 1080007, name = "MONSTER_BATTLE_80007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_80007", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 80006, gadget_id = 70310009, pos = { x = -4436.163, y = 178.402, z = -3823.854 }, rot = { x = 9.781, y = 330.115, z = 0.788 }, level = 30, area_id = 14 }
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
		monsters = { 80001, 80005 },
		gadgets = { 80002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80003", "MONSTER_BATTLE_80007" },
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
function condition_EVENT_ANY_MONSTER_DIE_80003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80003(context, evt)
	-- 将configid为 80002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_80007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217080, 2)
	
	return 0
end