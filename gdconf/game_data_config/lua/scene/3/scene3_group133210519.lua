-- 基础信息
local base_info = {
	group_id = 133210519
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 519001, monster_id = 20060201, pos = { x = -3782.188, y = 110.910, z = -786.970 }, rot = { x = 4.443, y = 198.128, z = 1.289 }, level = 32, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 },
	{ config_id = 519005, monster_id = 20060201, pos = { x = -3781.258, y = 110.061, z = -793.089 }, rot = { x = 1.076, y = 320.829, z = 359.826 }, level = 30, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 519002, gadget_id = 70211002, pos = { x = -3783.247, y = 110.353, z = -790.062 }, rot = { x = 3.132, y = 244.478, z = 5.180 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1519003, name = "ANY_MONSTER_DIE_519003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_519003", action = "action_EVENT_ANY_MONSTER_DIE_519003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 519004, gadget_id = 70300107, pos = { x = -3781.441, y = 109.903, z = -794.770 }, rot = { x = 355.794, y = 36.181, z = 355.650 }, level = 30, area_id = 17 },
		{ config_id = 519006, gadget_id = 70300085, pos = { x = -3816.709, y = 113.793, z = -829.878 }, rot = { x = 0.000, y = 78.921, z = 0.000 }, level = 30, area_id = 17 }
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
		monsters = { 519001, 519005 },
		gadgets = { 519002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_519003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_519003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_519003(context, evt)
	-- 将configid为 519002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 519002, GadgetState.Default) then
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