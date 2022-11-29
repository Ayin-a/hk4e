-- 基础信息
local base_info = {
	group_id = 133212313
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 313001, monster_id = 25100201, pos = { x = -3727.092, y = 239.742, z = -2450.195 }, rot = { x = 0.000, y = 109.612, z = 0.000 }, level = 27, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 13 },
	{ config_id = 313004, monster_id = 25080301, pos = { x = -3735.917, y = 241.201, z = -2445.726 }, rot = { x = 0.000, y = 214.891, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 13 },
	{ config_id = 313005, monster_id = 25080101, pos = { x = -3737.433, y = 238.895, z = -2464.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 313002, gadget_id = 70211002, pos = { x = -3738.635, y = 241.872, z = -2448.800 }, rot = { x = 0.000, y = 0.000, z = 335.486 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313003, name = "ANY_MONSTER_DIE_313003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_313003", action = "action_EVENT_ANY_MONSTER_DIE_313003" }
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
		monsters = { 313001, 313004, 313005 },
		gadgets = { 313002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_313003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_313003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_313003(context, evt)
	-- 将configid为 313002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313002, GadgetState.Default) then
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