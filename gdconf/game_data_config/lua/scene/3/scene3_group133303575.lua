-- 基础信息
local base_info = {
	group_id = 133303575
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 575001, monster_id = 26120201, pos = { x = -1393.161, y = 128.017, z = 3382.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 23 },
	{ config_id = 575004, monster_id = 26090501, pos = { x = -1396.000, y = 128.107, z = 3392.546 }, rot = { x = 0.000, y = 129.301, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 575005, monster_id = 26090501, pos = { x = -1387.358, y = 127.062, z = 3387.951 }, rot = { x = 0.000, y = 239.860, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 575002, gadget_id = 70211002, pos = { x = -1392.037, y = 127.566, z = 3388.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1575003, name = "ANY_MONSTER_DIE_575003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_575003", action = "action_EVENT_ANY_MONSTER_DIE_575003" }
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
		monsters = { 575001, 575004, 575005 },
		gadgets = { 575002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_575003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_575003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_575003(context, evt)
	-- 将configid为 575002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575002, GadgetState.Default) then
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