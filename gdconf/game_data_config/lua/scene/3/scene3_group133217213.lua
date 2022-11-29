-- 基础信息
local base_info = {
	group_id = 133217213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 25010301, pos = { x = -4869.129, y = 200.000, z = -3925.176 }, rot = { x = 0.000, y = 34.233, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 14 },
	{ config_id = 213004, monster_id = 25010201, pos = { x = -4869.908, y = 200.000, z = -3930.353 }, rot = { x = 0.000, y = 357.864, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 213005, monster_id = 25010701, pos = { x = -4871.086, y = 200.225, z = -3913.376 }, rot = { x = 0.000, y = 92.183, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 213011, monster_id = 25030301, pos = { x = -4867.193, y = 200.000, z = -3922.903 }, rot = { x = 0.000, y = 219.274, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 14 },
	{ config_id = 213014, monster_id = 25010401, pos = { x = -4877.979, y = 200.070, z = -3924.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 213002, gadget_id = 70211002, pos = { x = -4872.508, y = 200.122, z = -3920.456 }, rot = { x = 353.719, y = 120.124, z = 358.053 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 213006, gadget_id = 70220048, pos = { x = -4867.197, y = 198.965, z = -3929.326 }, rot = { x = 329.538, y = 0.000, z = 25.919 }, level = 30, area_id = 14 },
	{ config_id = 213008, gadget_id = 70220052, pos = { x = -4873.996, y = 199.551, z = -3926.501 }, rot = { x = 0.000, y = 0.000, z = 335.756 }, level = 30, area_id = 14 },
	{ config_id = 213009, gadget_id = 70310006, pos = { x = -4870.372, y = 200.350, z = -3918.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 213012, gadget_id = 70220048, pos = { x = -4869.343, y = 198.942, z = -3927.837 }, rot = { x = 323.374, y = 59.555, z = 355.474 }, level = 30, area_id = 14 },
	{ config_id = 213013, gadget_id = 70220048, pos = { x = -4868.293, y = 199.131, z = -3913.495 }, rot = { x = 333.899, y = 324.628, z = 43.368 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1213003, name = "ANY_MONSTER_DIE_213003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_213003", action = "action_EVENT_ANY_MONSTER_DIE_213003" },
	{ config_id = 1213010, name = "MONSTER_BATTLE_213010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_213010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 213007, gadget_id = 70220051, pos = { x = -4861.524, y = 199.959, z = -3927.613 }, rot = { x = 0.000, y = 0.000, z = 85.893 }, level = 30, area_id = 14 }
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
		monsters = { 213004, 213005, 213011, 213014 },
		gadgets = { 213002, 213006, 213008, 213009, 213012, 213013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_213003", "MONSTER_BATTLE_213010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 213001 },
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
function condition_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 将configid为 213002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 213002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_213010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217213, 2)
	
	return 0
end