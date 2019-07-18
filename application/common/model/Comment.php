<?php
namespace app\common\model;

use think\Model;

class Comment extends Model
{
    //默认主键
    protected $pk = 'id';

    //默认数据表
    protected $table = 'zh_user_comments';

    //开启自动时间戳
    protected $autoWriteTimestamp = true;
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';
    protected $dateFormat = 'Y年m月d日';

    //自动完成设置
    protected $auto = [];
    // 仅新增时设置
    protected $insert = ['create_time','status'=>1];
    //仅更新时设置
    protected $update = ['update_time'];



}