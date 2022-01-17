<?php

namespace App\Containers\PinSection\PinItem\UI\WEB\Requests;

use Apiato\Core\Abstracts\Models\UserModel as User;
use App\Containers\PinSection\PinItem\Entities\PinItemEntity;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Ship\Parents\Requests\Request;

class UpdatePinItemRequest extends Request
{
    /**
     * Define which Roles and/or Permissions has access to this request.
     */
    protected array $access = [
        'permissions' => '',
        'roles'       => '',
    ];

    /**
     * Id's that needs decoding before applying the validation rules.
     */
    protected array $decode = [
        //'id',
    ];

    /**
     * Defining the URL parameters (e.g, `/user/{id}`) allows applying
     * validation rules on them and allows accessing them like request data.
     */
    protected array $urlParameters = [
        'id',
    ];

    /**
     * Get the validation rules that apply to the request.
     */
    public function rules(): array
    {
        return [
            'id' => 'required|integer',
            'board_id' => 'integer|min:1',
            'pintype_id' => 'required|integer|min:1',
            'stacks' => 'required|array|min:1',
            'title' => 'required|min:3',
            'essence' => 'required|min:10|max:10000',
            'pin_tags' => 'required|min:2',
            'target_link' => 'sometimes|nullable|url|max:255',
            'seo_description' => '',
            'content' => '',
            'publication_status' => 'required'

        ];
    }

    public function messages()
    {
        return [
            'id.required' => 'Необходим идентификатор',
            'board_id.integer' => 'Код пинлиста должен быть целым',
            'board_id.min' => 'Указать пинлист',
            'pintype_id.required' => 'Указать тип пина',
            'stacks.required' => 'Указать технологию',
            'title.required' => 'Указать название',
            'essence.required' => 'Указать Короткий пин',
            'pin_tags.required' => 'Указать теги',
            'target_link.url' => 'Некорректная целевая ссылка',
            'publication_status.required' => 'Укажите статус публикации'
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return $this->check([
            'hasAccess'
        ]);
    }

    protected function prepareForValidation()
    {
        $this->merge([
            'essence' => pin_item_html_prepare($this->input('essence'), PinItemEntity::ALLOW_TAGS),
            'content' => pin_item_html_prepare($this->input('content'), PinItemEntity::ALLOW_TAGS),
        ]);
    }


    /**
    public function isOwner(User $user = null) : bool
    {
        $user = $user ?: $this->user();

        $pinItem = PinItem::where('id', $this->id)
                          ->where('user_id', $user->id)
                          ->first();
        if (!isset($pinItem)) {
            return false;
        }

        return true;
    }
    */

}
