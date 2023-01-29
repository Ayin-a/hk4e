-- 基础信息
local base_info = {
	group_id = 133307256
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256001, monster_id = 25410401, pos = { x = -1129.425, y = -43.285, z = 5516.953 }, rot = { x = 0.000, y = 318.836, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 256004, monster_id = 26090201, pos = { x = -1128.623, y = -43.328, z = 5518.823 }, rot = { x = 0.000, y = 175.853, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 32 },
	{ config_id = 256005, monster_id = 26090201, pos = { x = -1131.262, y = -43.610, z = 5517.539 }, rot = { x = 0.000, y = 142.606, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 256002, gadget_id = 70211012, pos = { x = -1128.308, y = -40.510, z = 5515.394 }, rot = { x = 11.321, y = 354.944, z = 16.572 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 256006, gadget_id = 70330395, pos = { x = -1126.978, y = -35.243, z = 5511.923 }, rot = { x = 2.611, y = 240.988, z = 8.523 }, level = 32, state = GadgetState.GearStart, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256003, name = "ANY_MONSTER_DIE_256003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_256003", action = "action_EVENT_ANY_MONSTER_DIE_256003" }
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
		monsters = { 256001, 256004, 256005 },
		gadgets = { 256002, 256006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_256003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_256003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_256003(context, evt)
	-- 将configid为 256002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.Default) then
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