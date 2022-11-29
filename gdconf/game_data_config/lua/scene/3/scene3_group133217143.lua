-- 基础信息
local base_info = {
	group_id = 133217143
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 143001, monster_id = 23010401, pos = { x = -4480.566, y = 214.156, z = -3848.366 }, rot = { x = 0.000, y = 59.111, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 14 },
	{ config_id = 143003, monster_id = 23010501, pos = { x = -4484.369, y = 213.469, z = -3844.387 }, rot = { x = 0.000, y = 171.820, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9001, area_id = 14 },
	{ config_id = 143008, monster_id = 23010601, pos = { x = -4472.050, y = 215.366, z = -3854.506 }, rot = { x = 0.000, y = 265.440, z = 0.000 }, level = 30, drop_tag = "先遣队", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 143004, gadget_id = 70211002, pos = { x = -4477.968, y = 214.595, z = -3846.828 }, rot = { x = 9.821, y = 254.700, z = 358.972 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143005, name = "ANY_MONSTER_DIE_143005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_143005", action = "action_EVENT_ANY_MONSTER_DIE_143005" },
	{ config_id = 1143006, name = "MONSTER_BATTLE_143006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_143006" }
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
		monsters = { 143001 },
		gadgets = { 143004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_143005", "MONSTER_BATTLE_143006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 143003, 143008 },
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
function condition_EVENT_ANY_MONSTER_DIE_143005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_143005(context, evt)
	-- 将configid为 143004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_143006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217143, 2)
	
	return 0
end