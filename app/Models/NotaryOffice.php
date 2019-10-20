<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\NotaryOffice
 *
 * @property-read int|null $notary_office_comments_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice query()
 * @mixin \Eloquent
 */
class NotaryOffice extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_notary_office';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status): string
    {
        return self::STATUSES[$status];
    }
}
