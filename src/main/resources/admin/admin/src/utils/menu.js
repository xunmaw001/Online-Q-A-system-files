const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"教师","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"问题发布","menuJump":"列表","tableName":"wentifabu"}],"menu":"问题发布管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"疑难解答","menuJump":"列表","tableName":"yinanjieda"}],"menu":"疑难解答管理"}],"frontMenu":[],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"问题发布","menuJump":"列表","tableName":"wentifabu"}],"menu":"问题发布管理"},{"child":[{"buttons":["查看"],"menu":"疑难解答","menuJump":"列表","tableName":"yinanjieda"}],"menu":"疑难解答管理"},{"child":[{"buttons":["查看"],"menu":"试卷列表","tableName":"shijuanliebiao"},{"buttons":["查看"],"menu":"考试记录","tableName":"kaoshijilu"},{"buttons":["查看"],"menu":"错题本","tableName":"cuotiben"}],"menu":"考试管理"}],"frontMenu":[],"roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"疑难解答","menuJump":"列表","tableName":"yinanjieda"}],"menu":"疑难解答管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷管理","tableName":"exampaper"}],"menu":"试卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试题管理","tableName":"shitiguanli"}],"menu":"试题管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷列表","tableName":"shijuanliebiao"},{"buttons":["新增","查看","修改","删除"],"menu":"考试记录","tableName":"kaoshijilu"},{"buttons":["新增","查看","修改","删除"],"menu":"错题本","tableName":"cuotiben"}],"menu":"考试管理"}],"frontMenu":[],"roleName":"教师","tableName":"jiaoshi"}]
    }
}
export default menu;
