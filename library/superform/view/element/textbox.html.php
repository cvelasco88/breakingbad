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
?>
<input id="<?php echo htmlspecialchars($this['id']) ?>" name="<?php echo htmlspecialchars($this['name']) ?>" type="text"<?php if (isset($this['class'])) echo ' class="' . htmlspecialchars($this['class']) . '"'?>  value="<?php if (isset($this['value'])) echo htmlspecialchars($this['value']) ?>"<?php if (isset($this['size'])) echo 'size="' . ((int) $this['size']) . '"' ?><?php if ($this['maxlength'] > 0) echo 'maxlength="' . ((int) $this['maxlength']) . '"' ?> />
<script type="text/javascript">
<?php include __DIR__ . '/textbox.js.src.php' ?>
</script>