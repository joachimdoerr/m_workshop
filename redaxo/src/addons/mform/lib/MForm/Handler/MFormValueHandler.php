<?php
/**
 * @author mail[at]doerr-softwaredevelopment[dot]com Joachim Doerr
 * @package redaxo5
 * @license MIT
 */

namespace MForm\Handler;


use MForm\DTO\MFormItem;
use MForm\Utils\MFormClang;
use rex;
use rex_logger;
use rex_sql;
use rex_sql_exception;

class MFormValueHandler
{
    /**
     * @return array
     * @author Joachim Doerr
     */
    public static function loadRexVars()
    {
        $sliceId = rex_request('slice_id', 'int', false);
        $result = array();

        if ($sliceId != false) {
            $table = rex::getTablePrefix() . 'article_slice';
            $fields = '*';
            $where = 'id="' . $_REQUEST['slice_id'] . '"';

            $query = '
                SELECT ' . $fields . '
                FROM ' . $table . '
                WHERE ' . $where;

            try {
                $sql = rex_sql::factory();
                $sql->setQuery($query);
                $rows = $sql->getRows();
                if ($rows > 0) {
                    for ($i = 1; $i <= 20; $i++) {
                        $result['value'][$i] = $sql->getValue('value' . $i);

                        if ($i <= 10) {
                            $result['filelist'][$i] = $sql->getValue('medialist' . $i);
                            $result['linklist'][$i] = $sql->getValue('linklist' . $i);
                            $result['file'][$i] = $sql->getValue('media' . $i);
                            $result['link'][$i] = $sql->getValue('link' . $i);
                        }

                        $jsonResult = json_decode(htmlspecialchars_decode($result['value'][$i]), true);

                        if (is_array($jsonResult)) {
                            $result['value'][$i] = $jsonResult;
                        }
                    }
                }
            } catch (rex_sql_exception $e) {
                rex_logger::logException($e);
            }
        }
        return $result;
    }

    /**
     * @param MFormItem $item
     * @param array $result
     * @param null|string $value
     * @param null|string $defaultValue
     * @author Joachim Doerr
     */
    public static function decorateItem(MFormItem $item, $result, $value = null, $defaultValue = null)
    {
        if (!is_null($defaultValue)) {
            // set default value
            $item->setDefaultValue(MFormClang::getClangValue($defaultValue));
        }
        if ($value === NULL && is_array($result) === true) {
            // read value by type
            switch ($item->getType()) {
                case 'linklist':
                    $value = $result['linklist'][$item->getVarId()[0]];
                    break;
                case 'imglist':
                case 'medialist':
                    $value = $result['filelist'][$item->getVarId()[0]];
                    break;
                case 'link':
                    $value = $result['link'][$item->getVarId()[0]];
                    break;
                case 'media':
                    $value = $result['file'][$item->getVarId()[0]];
                    break;
                default:
                    if (array_key_exists('value', $result)) {
                        $value = (array_key_exists($item->getVarId()[0], $result['value'])) ? $result['value'][$item->getVarId()[0]] : '';
                        if (is_array($value) && isset($item->getVarId()[1])) {
                            $value = (array_key_exists($item->getVarId()[1], $value)) ? $value[$item->getVarId()[1]] : '';
                        }
                        if (is_array($value) && isset($item->getVarId()[2])) {
                            $value = (array_key_exists($item->getVarId()[2], $value)) ? $value[$item->getVarId()[2]] : '';
                        }
                    }
            }
            $item->setValue($value);
        } else {
            $item->setValue(MFormClang::getClangValue($value));
        }
    }
}
