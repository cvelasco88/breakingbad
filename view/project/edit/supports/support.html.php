<?php
/*
 *  Copyright (C) 2012 Platoniq y Fundación Fuentes Abiertas (see README for details)
 *	This file is part of Goteo.
 *
 *  Goteo is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Affero General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Goteo is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Affero General Public License for more details.
 *
 *  You should have received a copy of the GNU Affero General Public License
 *  along with Goteo.  If not, see <http://www.gnu.org/licenses/agpl.txt>.
 *
 */

use Goteo\Library\Text;

$support = $this['data']['support'] ?>

<div class="support <?php echo $support->type ?>">
    
    
    <div class="title"><strong><?php echo htmlspecialchars($support->support) ?></strong></div>
    
    <div class="description"><?php echo htmlspecialchars($support->description) ?></div>
    
    <input type="submit" class="edit" name="support-<?php echo $support->id ?>-edit" value="<?php echo Text::get('regular-edit') ?>" />
    <input type="submit" class="remove weak" name="support-<?php echo $support->id ?>-remove" value="<?php echo Text::get('form-remove-button') ?>" />
</div>

    

    