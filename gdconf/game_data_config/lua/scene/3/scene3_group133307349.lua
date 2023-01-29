-- 基础信息
local base_info = {
	group_id = 133307349
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349001, monster_id = 24040101, pos = { x = -1658.098, y = 26.296, z = 5605.615 }, rot = { x = 0.000, y = 336.697, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 32 },
	{ config_id = 349004, monster_id = 24040201, pos = { x = -1665.812, y = 26.498, z = 5609.335 }, rot = { x = 0.000, y = 46.509, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 349002, gadget_id = 70211002, pos = { x = -1661.760, y = 26.286, z = 5608.831 }, rot = { x = 0.000, y = 13.680, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1349003, name = "ANY_MONSTER_DIE_349003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_349003", action = "action_EVENT_ANY_MONSTER_DIE_349003" }
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
		monsters = { 349001, 349004 },
		gadgets = { 349002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_349003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_349003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_349003(context, evt)
	-- 将configid为 349002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 349002, GadgetState.Default) then
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