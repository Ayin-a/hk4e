-- 基础信息
local base_info = {
	group_id = 133220616
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 616001, monster_id = 25100101, pos = { x = -1846.521, y = 205.740, z = -4218.017 }, rot = { x = 0.000, y = 14.421, z = 0.000 }, level = 27, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 11 },
	{ config_id = 616004, monster_id = 25080201, pos = { x = -1852.199, y = 207.729, z = -4206.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 11 },
	{ config_id = 616005, monster_id = 25080201, pos = { x = -1853.967, y = 206.116, z = -4218.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 616006, monster_id = 25080201, pos = { x = -1844.514, y = 205.219, z = -4221.684 }, rot = { x = 0.000, y = 291.134, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1003, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 616002, gadget_id = 70211002, pos = { x = -1840.981, y = 209.256, z = -4222.592 }, rot = { x = 0.000, y = 288.223, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1616003, name = "ANY_MONSTER_DIE_616003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_616003", action = "action_EVENT_ANY_MONSTER_DIE_616003" }
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
		monsters = { 616001, 616004, 616005, 616006 },
		gadgets = { 616002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_616003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 找儿子用空suite,
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
function condition_EVENT_ANY_MONSTER_DIE_616003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_616003(context, evt)
	-- 将configid为 616002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 616002, GadgetState.Default) then
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