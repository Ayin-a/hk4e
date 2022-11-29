-- 基础信息
local base_info = {
	group_id = 133213003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 25080101, pos = { x = -3299.234, y = 209.435, z = -3563.199 }, rot = { x = 0.000, y = 185.633, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 3004, monster_id = 25080201, pos = { x = -3308.895, y = 207.514, z = -3565.871 }, rot = { x = 0.000, y = 62.349, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1001, area_id = 12 },
	{ config_id = 3005, monster_id = 25080301, pos = { x = -3301.766, y = 209.057, z = -3564.251 }, rot = { x = 0.000, y = 146.954, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3002, gadget_id = 70211002, pos = { x = -3304.915, y = 208.414, z = -3566.166 }, rot = { x = 352.851, y = 0.129, z = 10.524 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 3006, gadget_id = 70310004, pos = { x = -3300.194, y = 209.183, z = -3565.789 }, rot = { x = 348.518, y = 359.129, z = 13.435 }, level = 27, area_id = 12 },
	{ config_id = 3007, gadget_id = 70300105, pos = { x = -3310.136, y = 207.274, z = -3565.270 }, rot = { x = 355.995, y = 332.597, z = 30.003 }, level = 27, area_id = 12 },
	{ config_id = 3008, gadget_id = 70300094, pos = { x = -3310.105, y = 207.632, z = -3563.418 }, rot = { x = 23.141, y = 249.881, z = 4.020 }, level = 27, area_id = 12 },
	{ config_id = 3009, gadget_id = 70210101, pos = { x = -3310.275, y = 208.395, z = -3563.388 }, rot = { x = 359.877, y = 70.569, z = 344.242 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 3010, gadget_id = 70220048, pos = { x = -3306.508, y = 208.992, z = -3558.625 }, rot = { x = 351.983, y = 57.955, z = 355.597 }, level = 27, area_id = 12 },
	{ config_id = 3011, gadget_id = 70220048, pos = { x = -3308.904, y = 208.380, z = -3560.607 }, rot = { x = 352.019, y = 359.688, z = 4.467 }, level = 27, area_id = 12 },
	{ config_id = 3012, gadget_id = 70220050, pos = { x = -3307.066, y = 208.701, z = -3560.526 }, rot = { x = 352.019, y = 359.688, z = 4.467 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "ANY_MONSTER_DIE_3003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3003", action = "action_EVENT_ANY_MONSTER_DIE_3003" },
	{ config_id = 1003013, name = "MONSTER_BATTLE_3013", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_3013" }
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
		monsters = { 3004, 3005 },
		gadgets = { 3002, 3006, 3007, 3008, 3009, 3010, 3011, 3012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3003", "MONSTER_BATTLE_3013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001 },
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
function condition_EVENT_ANY_MONSTER_DIE_3003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3003(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_3013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213003, 2)
	
	return 0
end