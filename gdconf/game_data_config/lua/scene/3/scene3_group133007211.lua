-- 基础信息
local base_info = {
	group_id = 133007211
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 211001, monster_id = 21010401, pos = { x = 2041.669, y = 209.114, z = -63.287 }, rot = { x = 0.000, y = 102.911, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 },
	{ config_id = 211004, monster_id = 21010401, pos = { x = 2046.229, y = 208.379, z = -66.494 }, rot = { x = 0.000, y = 200.052, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 211005, monster_id = 21010201, pos = { x = 2048.542, y = 208.459, z = -63.921 }, rot = { x = 0.000, y = 242.184, z = 0.000 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 211002, gadget_id = 70211012, pos = { x = 2048.399, y = 208.275, z = -66.899 }, rot = { x = 356.585, y = 304.690, z = 4.374 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 211006, gadget_id = 70310009, pos = { x = 2045.790, y = 208.503, z = -63.570 }, rot = { x = 0.000, y = 332.488, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1211003, name = "ANY_MONSTER_DIE_211003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_211003", action = "action_EVENT_ANY_MONSTER_DIE_211003" }
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
		monsters = { 211001, 211004, 211005 },
		gadgets = { 211002, 211006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_211003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_211003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_211003(context, evt)
	-- 将configid为 211002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211002, GadgetState.Default) then
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