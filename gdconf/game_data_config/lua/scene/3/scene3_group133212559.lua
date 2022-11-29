-- 基础信息
local base_info = {
	group_id = 133212559
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 559001, monster_id = 24020401, pos = { x = -3750.380, y = 200.559, z = -1838.294 }, rot = { x = 0.000, y = 19.889, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 13 },
	{ config_id = 559004, monster_id = 24020401, pos = { x = -3749.909, y = 201.038, z = -1829.578 }, rot = { x = 350.276, y = 0.000, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 13 },
	{ config_id = 559005, monster_id = 24020201, pos = { x = -3768.135, y = 201.849, z = -1830.875 }, rot = { x = 5.909, y = 0.117, z = 348.086 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 13 },
	{ config_id = 559006, monster_id = 24020201, pos = { x = -3757.736, y = 204.306, z = -1823.522 }, rot = { x = 5.909, y = 0.117, z = 348.086 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 559002, gadget_id = 70211012, pos = { x = -3748.619, y = 205.791, z = -1817.255 }, rot = { x = 5.769, y = 165.469, z = 7.847 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1559003, name = "ANY_MONSTER_DIE_559003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_559003", action = "action_EVENT_ANY_MONSTER_DIE_559003" }
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
		monsters = { 559001, 559004, 559005, 559006 },
		gadgets = { 559002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_559003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_559003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_559003(context, evt)
	-- 将configid为 559002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 559002, GadgetState.Default) then
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