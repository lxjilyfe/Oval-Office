/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}