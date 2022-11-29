-- 基础信息
local base_info = {
	group_id = 133106072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 25030201, pos = { x = -837.975, y = 159.021, z = 1372.857 }, rot = { x = 0.000, y = 327.593, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 72002, monster_id = 25010301, pos = { x = -840.088, y = 158.845, z = 1373.362 }, rot = { x = 0.000, y = 256.249, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 8 },
	{ config_id = 72003, monster_id = 25020201, pos = { x = -837.325, y = 159.555, z = 1379.291 }, rot = { x = 0.000, y = 223.052, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 72007, monster_id = 25010201, pos = { x = -834.310, y = 159.461, z = 1374.257 }, rot = { x = 0.000, y = 288.985, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72004, gadget_id = 70211012, pos = { x = -835.919, y = 159.483, z = 1377.826 }, rot = { x = 5.860, y = 202.283, z = 352.810 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 72005, gadget_id = 70310006, pos = { x = -839.028, y = 158.983, z = 1374.157 }, rot = { x = 354.795, y = 93.083, z = 357.044 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1072006, name = "ANY_MONSTER_DIE_72006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72006", action = "action_EVENT_ANY_MONSTER_DIE_72006" },
	{ config_id = 1072008, name = "MONSTER_BATTLE_72008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_72008", action = "action_EVENT_MONSTER_BATTLE_72008" }
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
		monsters = { 72001 },
		gadgets = { 72004, 72005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72006", "MONSTER_BATTLE_72008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 72002, 72003, 72007 },
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
function condition_EVENT_ANY_MONSTER_DIE_72006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72006(context, evt)
	-- 将configid为 72004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72004, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_72008(context, evt)
	if 72001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_72008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106072, 2)
	
	return 0
end