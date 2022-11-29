-- 基础信息
local base_info = {
	group_id = 133102336
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 336001, monster_id = 21011001, pos = { x = 1306.643, y = 200.013, z = 428.088 }, rot = { x = 359.557, y = 182.087, z = 359.314 }, level = 17, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 336004, monster_id = 21011001, pos = { x = 1305.057, y = 200.070, z = 423.023 }, rot = { x = 359.798, y = 200.626, z = 359.208 }, level = 17, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 336005, monster_id = 21011001, pos = { x = 1314.442, y = 200.058, z = 425.453 }, rot = { x = 359.406, y = 168.291, z = 359.439 }, level = 17, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 336002, gadget_id = 70211012, pos = { x = 1302.240, y = 200.128, z = 427.828 }, rot = { x = 0.000, y = 92.222, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1336003, name = "ANY_MONSTER_DIE_336003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_336003", action = "action_EVENT_ANY_MONSTER_DIE_336003" }
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
		-- description = suite_1,
		monsters = { 336001, 336004, 336005 },
		gadgets = { 336002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_336003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_336003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_336003(context, evt)
	-- 将configid为 336002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336002, GadgetState.Default) then
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