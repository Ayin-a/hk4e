-- 基础信息
local base_info = {
	group_id = 133301146
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 146001, monster_id = 24020201, pos = { x = -278.571, y = 106.930, z = 3952.027 }, rot = { x = 0.000, y = 178.036, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 146004, monster_id = 24020401, pos = { x = -282.274, y = 107.085, z = 3948.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 146005, monster_id = 24020201, pos = { x = -270.662, y = 104.096, z = 3940.288 }, rot = { x = 0.000, y = 295.725, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146002, gadget_id = 70211012, pos = { x = -275.723, y = 105.590, z = 3943.542 }, rot = { x = 5.685, y = 117.080, z = 15.657 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146003, name = "ANY_MONSTER_DIE_146003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_146003", action = "action_EVENT_ANY_MONSTER_DIE_146003" }
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
		monsters = { 146001, 146004, 146005 },
		gadgets = { 146002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_146003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_146003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146003(context, evt)
	-- 将configid为 146002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146002, GadgetState.Default) then
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