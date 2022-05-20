class_name BattlerStatus

var values = {
    "HP": 0,
    "MHP": 0,
    "MP": 0,
    "MMP": 0,
    "Experience": 0,
    "LVL": 0,

    "PATK": 0,
    "PDEF": 0,

    "MATK": 0,
    "MDEF": 0,
}


func _init(_values):
    for k in _values:
        values[k] = _values[k]
    
func AddFromAnother(anotherBattlerStatus):
    for k in anotherBattlerStatus.values:
        values[k] += anotherBattlerStatus.values[k]

func ClampStatus(value, lower_bound, upper_bound):
    var result = value
    if value < lower_bound:
        result = lower_bound
    elif value > upper_bound:
        result = upper_bound
    return result
