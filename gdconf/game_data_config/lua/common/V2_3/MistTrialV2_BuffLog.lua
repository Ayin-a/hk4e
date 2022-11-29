--- ServerUploadTool Save to [/root/env/data/lua/common/V2_3]  ---

--[[
	2.3迷城战线复刻
]]
--[[
--以下buff球会计入Mist_trial的Buff_obtain日志
local buff_gadgetId = {
	"Buff_Attack",
	"Buff_Heal",
	"Buff_Speed"
}

local extraTriggers = {
  --日志用Trigger
  { config_id = 8000010, name = "Buff_GadgetDie", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_Buff_GadgetDie",trigger_count = 0}
}


function LF_Initialize_Group(triggers, suites)
	table.insert(triggers, extraTriggers[1])
	for i=1,#suites do
		table.insert(suites[i].triggers,extraTriggers[1].name)
	end
	--gallery流水号
	--table.insert(variables,{ name = "gallery_trans", value = 0})
	return 0
end

function action_Buff_GadgetDie(context, evt)
	--在gadgetDie里试图GetGadgetIdByEntityId是徒劳的
	--local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
	local gadget_id = LF_GetGadgetIDByConfigID(context, evt.param1)

	if gadget_id == 0 then 
		return 0
	end
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Buff_GadgetDie gadgetID@"..gadget_id)
	--70350245	试玩地城 攻击球
	--70350246	试玩地城 治疗球
	--70350247	试玩地城 移速球
	if gadget_id == 70350245 then 
		ScriptLib.ChangeGroupTempValue(context, "Buff_Attack", 1, {})
	elseif gadget_id == 70350246 then 
		ScriptLib.ChangeGroupTempValue(context, "Buff_Heal", 1, {})
	elseif gadget_id == 70350247 then 
		ScriptLib.ChangeGroupTempValue(context, "Buff_Speed", 1, {})
	end
	return 0
end

function LF_GetGadgetIDByConfigID(context, config_id)
	local gadget_id = 0
	for k,v in pairs(gadgets) do 
		if v.config_id == config_id then 
			gadget_id = v.gadget_id
			return gadget_id
		end
	end
	return 0
end

--重置计数 gallery开启时调用
function ResetGroupTempVar(context, prev_context)
	for k,v in pairs(buff_gadgetId) do
		ScriptLib.SetGroupTempValue(context, v,0,{})
	end
	return 0
end

--上报运营日志数据 需求单s1286673 
function UpLoadActionLog(context,prev_context, gallery)

	local log = {
		["Buff_Attack"] = 0,
		["Buff_Heal"] = 0,
		["Buff_Speed"] = 0,
	}

	for k, v in pairs(log) do
		log[k] =  ScriptLib.GetGroupTempValue(context, k ,{})
	end
	
	--local gallery_trans = ScriptLib.GetGalleryTransaction(context, gallery)
	--local gallery_trans = ScriptLib.GetGroupVariableValue(context, "gallery_trans")
	ScriptLib.MarkGroupLuaAction(context, "Mist_trial", "", log)

	ScriptLib.PrintContextLog(context, "[MistTrialV2] UpLoadActionLog: "..log["Buff_Attack"].." |"..log["Buff_Heal"].." |"..log["Buff_Speed"])
	return 0
end

--LF_Initialize_Group(triggers, suites)
]]