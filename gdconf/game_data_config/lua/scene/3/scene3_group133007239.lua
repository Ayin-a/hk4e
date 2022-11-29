-- 基础信息
local base_info = {
	group_id = 133007239
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 239001, monster_id = 21010201, pos = { x = 2886.012, y = 209.230, z = -56.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 239004, monster_id = 21010401, pos = { x = 2883.549, y = 212.849, z = -59.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 402, area_id = 4 },
	{ config_id = 239005, monster_id = 21010401, pos = { x = 2889.828, y = 212.909, z = -48.989 }, rot = { x = 0.000, y = 279.978, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 402, area_id = 4 },
	{ config_id = 239006, monster_id = 21020101, pos = { x = 2883.175, y = 208.986, z = -50.100 }, rot = { x = 0.000, y = 316.068, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 239002, gadget_id = 70211012, pos = { x = 2888.500, y = 209.400, z = -55.400 }, rot = { x = 0.000, y = 309.645, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 239007, gadget_id = 70310001, pos = { x = 2882.712, y = 208.502, z = -56.922 }, rot = { x = 0.000, y = 241.393, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 239008, gadget_id = 70310001, pos = { x = 2888.660, y = 209.207, z = -50.513 }, rot = { x = 0.000, y = 134.440, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1239003, name = "ANY_MONSTER_DIE_239003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_239003", action = "action_EVENT_ANY_MONSTER_DIE_239003" }
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
		monsters = { 239001, 239004, 239005, 239006 },
		gadgets = { 239002, 239007, 239008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_239003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_239003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_239003(context, evt)
	-- 将configid为 239002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239002, GadgetState.Default) then
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