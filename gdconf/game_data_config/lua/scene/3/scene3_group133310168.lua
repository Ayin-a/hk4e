-- 基础信息
local base_info = {
	group_id = 133310168
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 168001, monster_id = 25210302, pos = { x = -2632.446, y = 144.982, z = 4941.881 }, rot = { x = 0.000, y = 238.360, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 27 },
	{ config_id = 168004, monster_id = 25210303, pos = { x = -2633.667, y = 145.110, z = 4944.088 }, rot = { x = 0.000, y = 222.626, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 27 },
	{ config_id = 168006, monster_id = 25410101, pos = { x = -2636.808, y = 145.881, z = 4942.097 }, rot = { x = 0.000, y = 148.208, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 168002, gadget_id = 70211012, pos = { x = -2638.397, y = 146.718, z = 4938.543 }, rot = { x = 21.711, y = 28.723, z = 350.827 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168003, name = "ANY_MONSTER_DIE_168003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168003", action = "action_EVENT_ANY_MONSTER_DIE_168003" }
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
		monsters = { 168001, 168004, 168006 },
		gadgets = { 168002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_168003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168003(context, evt)
	-- 将configid为 168002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168002, GadgetState.Default) then
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