--[[======================================
||	filename:       Activity_VintagePresent
||	owner:          juntao.chen
||	description:    找礼物玩法
||	LogName:        Activity_VintagePresent
||	Protection:     [Protection]
=======================================]]
--[[需求配置
--key为configid,值为礼物id
local present_list = {
    [xxx] = 1,

}
]]
local chest_gadget_id = 70800272
local temp_Tirgger = {
	{event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", action = "action_EVENT_GADGET_STATE_CHANGE"},
	{event = EventType.EVENT_GROUP_LOAD, source = "", action = "action_EVENT_GROUP_LOAD"},
}
function action_EVENT_GROUP_LOAD(context,evt)   
    ScriptLib.PrintContextLog(context,"## Activity_VintagePresent action_EVENT_GROUP_LOAD:")
    return 0
end
function action_EVENT_GADGET_STATE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_VintagePresent action_EVENT_GADGET_STATE_CHANGE:")
    local _gadgetid = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) 
    if evt.param1 == 201 and _gadgetid  == chest_gadget_id then
        for k,v in pairs(present_list) do 
            if k == evt.param2 then
                ScriptLib.PrintContextLog(context,"## Activity_VintagePresent action_EVENT_GADGET_STATE_CHANGE:v="..v)
                local _ret = ScriptLib.VintageFinishGroupByPresentId(context,v)
                if _ret ~= 0 then 
                    ScriptLib.SetGadgetStateByConfigId(context, evt.param2, 0)
                end
                break
            end
        end
    end
    return 0
end

--初始化
function Initialize()
	--加触发器
    if temp_Tirgger ~= nil then 
        for k,v in pairs(temp_Tirgger) do
            v.name = v.action
            v.config_id = 40000000 + k
            v.trigger_count = 0
            v.condition = ""
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables ~= nil then 
        for k,v in pairs(temp_Variables) do
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()