class_name BattlerStatus

var HP
var MHP

var MP
var MMP

var Experience
var LVL

func _init(_MHP, _MMP):
    MHP = _MHP
    MMP = _MMP
    

func AddFromAnother(anotherBattlerStatus):
    if anotherBattlerStatus.MHP > 0:
        MHP += anotherBattlerStatus.MHP

    if anotherBattlerStatus.MMP > 0:
        MMP += anotherBattlerStatus.MMP

    HP = ClampStatus(HP + anotherBattlerStatus.HP, 0, MHP)
    MP = ClampStatus(MP + anotherBattlerStatus.MP, 0, MMP)

    Experience += anotherBattlerStatus.Experience

func ClampStatus(value, lower_bound, upper_bound):
    var result = value
    if value < lower_bound:
        result = lower_bound
    elif value > upper_bound:
        result = upper_bound
    return result
