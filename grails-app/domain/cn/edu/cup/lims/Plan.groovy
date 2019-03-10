package cn.edu.cup.lims

class Plan {

    String thing    //thing ID 以及名称
    Date updateDate

    static hasMany = [planItems: PlanItem]

    static constraints = {
        thing()
        updateDate()
    }

    String toString() {
        return "${thing}.计划"
    }
}
