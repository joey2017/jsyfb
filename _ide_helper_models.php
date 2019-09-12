<?php

// @formatter:off
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * App\Models\Specialist
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist query()
 */
	class Specialist extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\SpecialistAdvice
 *
 * @property-read \App\Models\Specialist $specialist
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice query()
 */
	class SpecialistAdvice extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ExclusiveLegalAdvice
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ExclusiveLegalAdvice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ExclusiveLegalAdvice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ExclusiveLegalAdvice query()
 */
	class ExclusiveLegalAdvice extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ArticleComment
 *
 * @property-read \App\Models\Article $article
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment query()
 */
	class ArticleComment extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\QuestionCategory
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\QuestionCategory[] $children
 * @property-read int|null $children_count
 * @property-read \App\Models\QuestionCategory $parent
 * @property-read \App\Models\Question $question
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory query()
 */
	class QuestionCategory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CouponGrant
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant query()
 */
	class CouponGrant extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Collect
 *
 * @property-read \App\Models\Article $hotArticle
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collect newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collect newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collect query()
 */
	class Collect extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Attention
 *
 * @property-read \App\Models\Specialist $specialist
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention query()
 */
	class Attention extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Question
 *
 * @property-read \App\Models\QuestionCategory $questionCategory
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question query()
 */
	class Question extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Banner
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Banner newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Banner newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Banner query()
 */
	class Banner extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Laywer
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer query()
 */
	class Laywer extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\LegalBook
 *
 * @property-read \App\Models\LegalBookCategory $legalBookCategory
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook query()
 */
	class LegalBook extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\BusinessCategory
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory query()
 */
	class BusinessCategory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\BalanceLog
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog query()
 */
	class BalanceLog extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\LaywerOffice
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LaywerOffice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LaywerOffice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LaywerOffice query()
 */
	class LaywerOffice extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\User
 *
 * @property-read mixed $mobile
 * @property-read \App\Models\Notice $notice
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @property-write mixed $username
 * @property-read \App\Models\User $user
 * @property-read \App\Models\UserSign $userSign
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User query()
 */
	class User extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\AnswerList
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList query()
 */
	class AnswerList extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Member
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Member newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Member newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Member query()
 */
	class Member extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ArticleLike
 *
 * @property-read \App\Models\Article $hotArticle
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike query()
 */
	class ArticleLike extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\NotaryOfficeComment
 *
 * @property-read \App\Models\NotaryOffice $notaryOffice
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment query()
 */
	class NotaryOfficeComment extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\AnswerRecord
 *
 * @property-read \App\Models\AnswerList $answerList
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord query()
 */
	class AnswerRecord extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Balance
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance query()
 */
	class Balance extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ExpertAdvice
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ExpertAdvice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ExpertAdvice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ExpertAdvice query()
 */
	class ExpertAdvice extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Reservation
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation query()
 */
	class Reservation extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Ingots
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots query()
 */
	class Ingots extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\NotaryOffice
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\NotaryOfficeComment[] $notaryOfficeComments
 * @property-read int|null $notary_office_comments_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice query()
 */
	class NotaryOffice extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\BrowseHistory
 *
 * @property-read \App\Models\Article $hotArticle
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory query()
 */
	class BrowseHistory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Column
 *
 * @property-read \App\Models\LegalBookCategory $legalBookCategory
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Column newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Column newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Column query()
 */
	class Column extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Notice
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice query()
 */
	class Notice extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Article
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\ArticleComment[] $articleComments
 * @property-read int|null $article_comments_count
 * @property-read \App\Models\Specialist $specialist
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article query()
 */
	class Article extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Coupon
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon query()
 */
	class Coupon extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Message
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Message newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Message newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Message query()
 */
	class Message extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\WechatAttention
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention query()
 */
	class WechatAttention extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\IngotsLog
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog query()
 */
	class IngotsLog extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\UserSign
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign query()
 */
	class UserSign extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\LegalBookCategory
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\LegalBookCategory[] $children
 * @property-read int|null $children_count
 * @property-read \App\Models\LegalBook $legalBook
 * @property-read \App\Models\LegalBookCategory $parent
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory query()
 */
	class LegalBookCategory extends \Eloquent {}
}

