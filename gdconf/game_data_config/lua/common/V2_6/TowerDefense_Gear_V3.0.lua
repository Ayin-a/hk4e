--[[======================================

||	filename: TowerDefence_Gear_V3.0

||	owner: chao.cui

||	description: 机关逻辑

||	LogName: TD_V3

||	Protection: ???

=======================================]]

--[[

	-- Trigger变量
	local defs = {
		group_id = 245002002,
		fundation_id = 70350145,
		challange_group_id = 245002001,
		-- gear_config_id = -1,
	}

	-- DEFS_MISCS
	-- 预设塔配置表（底座和塔的对应关系）
	local towerPrebuild = 
	{
		foundationConfigId = towerGearId, --需要查询Excel
	}

--]]

local Global = 
{
	-- 塔的标记槽位数。同时存在的塔不会超过这个数字
	slotNum = 20,
	
	-- 所有类型塔信息表
	allTowerType = 
	{
		-- 二期机关
		[70350281] = {price = 500}, --水塔
		[70350282] = {price = 500}, --火塔
		[70350283] = {price = 500}, --冰塔
		[70350284] = {price = 500}, --风塔
		[70350285] = {price = 500}, --雷塔
		[70350286] = {price = 500}, --物理塔
		[70350298] = {price = 100}, --诡雷
		[70350294] = {price = 250}, --回收机关
		[70350303] = {price = 250}, --塔增幅器
		[70350299] = {price = 100}, --禁锢机关
		[70350305] = {price = 250}, --斥力机关

		-- 三期机关
		[70350397] = {}, --V3 物理塔
		[70350412] = {}, --V3 地雷
		[70350413] = {}, --V3 水塔
		[70350414] = {}, --V3 火塔
		[70350415] = {}, --V3 冰塔
		[70350416] = {}, --V3 风塔
		[70350417] = {}, --V3 雷塔
		[70350418] = {}, --V3 禁锢机关
		[70350419] = {}, --V3 斥力机关
		[70350428] = {}, --V3 塔增幅器
	},
}

-- 打印日志
function PrintLog(context, content)
	local log = "## [TowerDefence_Gear_V3.0] TD_V3: "..content
	ScriptLib.PrintContextLog(context, log)
end

-- 判断创生物件是否是塔
function condition_TOWER_CREATE(context, evt)
	local towerGadgetId = evt.param2
	if Global.allTowerType[towerGadgetId] ~= nil then 
		PrintLog(context, "TowerGadgetId "..evt.param2.." Created.")
		return true
	end
	return false
end

-- 造塔事件
function action_TOWER_CREATE(context, evt)
	local towerGadgetId = evt.param2
	LF_AddTowerNum(context, towerGadgetId, 1)

	-- 存储该塔
	for i = 1, Global.slotNum do
		if ScriptLib.GetGroupVariableValue(context, "Slot"..i) == 0 then 
			ScriptLib.SetGroupVariableValue(context, "Slot"..i, evt.param1)
			break
		end
	end

	return 0
end

-- 判断是否拆的是塔
function condition_TOWER_DESTROY(context, evt)
	local configId = evt.param1

	-- 清除该塔的记录
	for i = 1, Global.slotNum do
		if ScriptLib.GetGroupVariableValue(context, "Slot"..i) == configId then 
			ScriptLib.SetGroupVariableValue(context, "Slot"..i, 0)
			return true
		end
	end

	return false

end

-- 拆塔事件
function action_TOWER_DESTROY(context, evt)

	LF_AddTowerNum(context, 0, -1)

	return 0
end

function action_EVENT_GROUP_LOAD(context, evt)
	PrintLog(context, "Gear Group Load Begin 1544")
	
	LF_Initialize_Fundations(context)
	LF_Initialize_Towers(context)

	return 0
end

--
function action_CheckSpecialGameplayLevel4(context, evt)
	PrintLog(context, "延时检查")

	-- 地脉异常L4检查
	ScriptLib.ExecuteGroupLua(context, defs.challange_group_id, "LF_SpecialGameplayLevel4", {0})
	return 0
end

-- 增加X塔X个
-- @param1 towerGadgetId 塔的GadgetId (这个参数没用了)
-- @param2 num 塔数变化值
function LF_AddTowerNum(context, towerGadgetId, num)

	-- 总塔计数
	local towers = ScriptLib.GetGroupVariableValueByGroup(context, "towers", 0)
	towers = towers + num
	ScriptLib.SetGroupVariableValueByGroup(context, "towers", towers, 0)

	PrintLog(context, "塔总数为: "..towers)

	-- 延时检查地脉异常
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "delay", 1)

	-- 地脉异常L4检查
	--ScriptLib.ExecuteGroupLua(context, defs.challange_group_id, "LF_SpecialGameplayLevel4", {0})

end

-- 初始化底座
function LF_Initialize_Fundations(context, prev_context, param1, param2, param3)

	-- config_id_2_point_table = {config_id: point_id}
	local fundationTable = {}
    -- local uidList = ScriptLib.GetSceneUidList(context)
    for i = 1, math.min(#gadgets, #points) do
        if gadgets[i].gadget_id == defs.fundation_id then
            fundationTable[gadgets[i].config_id] = points[i].config_id
        end
    end
    ScriptLib.CreateFoundations(context, fundationTable, defs.challange_group_id, 999)
    return 0
end

-- 初始化预设塔
function LF_Initialize_Towers(context, prev_context, param1, param2, param3)
	PrintLog(context, "Init Towers!")

	if towerPrebuild == nil then 
		PrintLog(context, "towerPrebuild为nil")
	else
		--PrintLog(context, "towerPrebuild表长度"..#towerPrebuild)
	end

	local prebuildTable = towerPrebuild or {}

	PrintLog(context, "预设塔列表长度"..#prebuildTable)

	if 0 ~= ScriptLib.ForceSetIrodoriFoundationTowers(context, prebuildTable, defs.challange_group_id, 999) then 
		PrintLog(context, "设置预设塔失败！")
	else 
		PrintLog(context, "设置预设塔成功！")
	end
	return 0
end

-- SLC 地雷塔爆炸返还点数
function SLC_AddBuildingPointsWhenMineExploded(context)

	PrintLog(context, "进入爆炸SLC判断")

	ScriptLib.ExecuteGroupLua(context, defs.challange_group_id, "LF_AddBuildingPoints", {20})

	return 0
end

-- 怪物毁灭光环
function SLC_DestroyTower(context)

	local entityId = context.source_entity_id
	PrintLog(context, "destory entityId: "..entityId)

	ScriptLib.DestroyIrodoriChessTower(context, entityId, defs.challange_group_id, 999)

	return 0
end

-- 初始化Group
function LF_Initialize_Group(triggers, suites)

	local extraTriggers = 
	{
		{ config_id = 40000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0},
		{ config_id = 40000012, name = "TOWER_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_TOWER_CREATE", action = "action_TOWER_CREATE", trigger_count = 0 },
		{ config_id = 40000013, name = "TOWER_DESTROY", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_TOWER_DESTROY", action = "action_TOWER_DESTROY", trigger_count = 0 },

		{ config_id = 40000014, name = "TIMER_DELAY", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_CheckSpecialGameplayLevel4", trigger_count = 0 },

	}

	for i = 1, #extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers, extraTriggers[i].name)
	end

	-- 塔的总数
	table.insert(variables, {config_id=50000001,name = "towers", value = 0})

	-- 标记塔槽位
	for i = 1, Global.slotNum do 
		table.insert(variables, {config_id=51000000+i,name = "Slot"..i, value = 0})
	end

end

-------------------------------------
LF_Initialize_Group(triggers, suites)
