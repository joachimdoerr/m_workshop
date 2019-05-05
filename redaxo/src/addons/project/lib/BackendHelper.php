<?php

class BackendHelper
{
    /**
     * @param array $images
     * @param string $label
     * @return string
     * @author Joachim Doerr
     */
    public static function getImagesForBackend($images, $label = 'Folgende Bilder werden eingesetzt')
    {
        $return = '';
        if (rex::isBackend() && is_array($images) && sizeof($images) > 0) {
            $return = '<strong>' . $label . '</strong><hr>';
            foreach ($images as $image)
                if (file_exists(rex_path::media($image)) === true)
                    $return .= '<img src="index.php?rex_media_type=rex_modul_preview&rex_media_file=' . $image . '" height="200">';

            $return .= '<hr>';
        }

        return $return;
    }

    /**
     * @param $image
     * @param string $label
     * @return string
     * @author Joachim Doerr
     */
    public static function getImageForBackend($image, $label = 'Folgendes Bild wird eingesetzt')
    {
        if (rex::isBackend() && !empty($image) && file_exists(rex_path::media($image)) === true)
            return '<strong>' . $label . '</strong><hr><img src="index.php?rex_media_type=rex_modul_preview&rex_media_file=' . $image . '" height="200"><hr>';

        return '';
    }
}