<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\NotaryOffice
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\NotaryOfficeComment[] $notaryOfficeComments
 * @property-read int|null $notary_office_comments_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice query()
 * @mixin \Eloquent
 */
class NotaryOffice extends Model
{
    //
    protected $table = 'jyfb_notary_office';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    public function notaryOfficeComments()
    {
        return $this->hasMany(NotaryOfficeComment::class, 'office_id');
    }

    public static function getStatusName(int $status):string
    {
        switch ($status)
        {
            case self::INVALID:
                return '禁用';
            case self::NORMAL:
                return '正常';
            default:
                return '正常';
        }
    }
}
