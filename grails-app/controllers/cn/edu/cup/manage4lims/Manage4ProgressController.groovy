package cn.edu.cup.manage4lims

import cn.edu.cup.os4lims.Operation4ProgressController

class Manage4ProgressController extends Operation4ProgressController {

    def index() {
        def title = params.title;
        def jsRoutine = params.jsRotine
        model:
        [title: title, jsRoutine: jsRoutine]
    }
}
