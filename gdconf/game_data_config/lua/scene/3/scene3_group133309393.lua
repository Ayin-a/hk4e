-- 基础信息
local base_info = {
	group_id = 133309393
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 393001, monster_id = 22040201, pos = { x = -2472.734, y = -14.398, z = 5517.042 }, rot = { x = 0.000, y = 162.030, z = 0.000 }, level = 32, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 393004, monster_id = 22040201, pos = { x = -2475.038, y = -14.398, z = 5514.778 }, rot = { x = 0.000, y = 128.723, z = 0.000 }, level = 32, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 393006, monster_id = 22040201, pos = { x = -2475.281, y = -14.398, z = 5511.158 }, rot = { x = 0.000, y = 75.152, z = 0.000 }, level = 32, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 393002, gadget_id = 70211002, pos = { x = -2471.229, y = -14.398, z = 5511.878 }, rot = { x = 0.000, y = 308.486, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 393005, gadget_id = 70330432, pos = { x = -2470.904, y = -14.398, z = 5514.272 }, rot = { x = 0.000, y = 256.508, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1393003, name = "ANY_MONSTER_DIE_393003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_393003", action = "action_EVENT_ANY_MONSTER_DIE_393003" }
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
		monsters = { 393001, 393004, 393006 },
		gadgets = { 393002, 393005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_393003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_393003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_393003(context, evt)
	-- 将configid为 393002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.Default) then
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