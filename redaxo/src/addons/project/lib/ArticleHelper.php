<?php

class ArticleHelper
{
    const SEO = 'yrewrite';

    /**
     * @var rex_article
     */
    private $article;

    /**
     * @var rex_category[]
     */
    private $categories;

    /**
     * @var rex_article
     */
    private $startArticle;

    /**
     * @var rex_yrewrite_seo
     */
    private $seo;

    /**
     * ArticleHelper constructor.
     * @author Joachim Doerr
     */
    public function __construct()
    {
        $this->article = rex_article::getCurrent(rex_clang::getCurrentId());
        $this->categories = rex_category::getRootCategories(true, rex_clang::getCurrentId());
        $this->startArticle = rex_article::getSiteStartArticle();
        if (rex_addon::get(self::SEO)->isAvailable()) {
            $this->seo = new rex_yrewrite_seo($this->article->getId(), rex_clang::getCurrentId());
        }
    }

    /**
     * @param null $key
     * @return array|int
     * @author Joachim Doerr
     */
    public function getPath($key = null)
    {
        $path = explode('|', $this->article->getValue('path') . $this->article->getId() . '|');
        // $path = array_filter($path);

        if (is_null($key) or !array_key_exists($key, $path)) {
            return $path;
        }

        return $path[$key];
    }

    /**
     * @param null $metaKey
     * @param null $default
     * @param bool|true $startArticle
     * @param string $separator
     * @return bool|null|string
     * @author Joachim Doerr
     */
    public function getMetaDescent($metaKey = NULL, $default = NULL, $startArticle = true, $separator = '|')
    {
        $meta = '';
        if (isset ($metaKey)) {
            if ($this->article->hasValue('art_' . $metaKey)) {
                $meta = $this->article->getValue('art_' . $metaKey);
                if ($meta == $separator . $separator) {
                    $meta = false;
                }
            }
            if (!$meta) {
                foreach (array_reverse($this->getPath()) as $path) {
                    if ($path && !$meta && $this->article->hasValue('cat_' . $metaKey) === true) {
                        $category = rex_category::get($path);
                        $meta = $category->getValue('cat_' . $metaKey);

                        if ($meta == $separator . $separator) {
                            $meta = false;
                        }
                    }
                }
            }
            if ($startArticle === true && !$meta) {
                if ($this->startArticle->getValue('art_' . $metaKey) != '') {
                    $meta = $this->startArticle->getValue('art_' . $metaKey);
                    if ($meta == $separator . $separator) {
                        $meta = false;
                    }
                }
                if (!$meta) {
                    $meta = $this->startArticle->getValue('cat_' . $metaKey);
                    if ($meta == $separator . $separator) {
                        $meta = false;
                    }
                }
            }
            if (!$meta && isset ($default)) {
                $meta = $default;
            }
            if (!$meta && is_array($default)) {
                $meta = explode(',', $default);
            }
        }
        return $meta;
    }

    /**
     * @return string
     * @author Joachim Doerr
     */
    public function getBaseUrl()
    {
        return 'http' . (array_key_exists('HTTPS', $_SERVER) && $_SERVER ['HTTPS'] == 'on' ? 's' : '') . '://' . $_SERVER ['HTTP_HOST'] . '/';
    }

    /**
     * @return string
     * @author Joachim Doerr
     */
    public function getSiteName()
    {
        return rex::getServerName();
    }

    /**
     * @return bool
     * @author Joachim Doerr
     */
    public function isSiteStartArticle()
    {
        return $this->article->isSiteStartArticle();
    }

    /**
     * @return string
     * @author Joachim Doerr
     */
    public function isStartArticle()
    {
        return $this->article->isStartArticle();
    }

    /**
     * @return bool
     * @author Joachim Doerr
     */
    public function isOnline()
    {
        return $this->article->isOnline();
    }

    /**
     * @return rex_category[]
     * @author Joachim Doerr
     */
    public function getCategories()
    {
        return $this->categories;
    }

    /**
     * @return rex_article
     * @author Joachim Doerr
     */
    public function getArticle()
    {
        return $this->article;
    }

    /**
     * @return rex_article
     * @author Joachim Doerr
     */
    public function getStartArticle()
    {
        return $this->startArticle;
    }

    /**
     * @return rex_yrewrite_seo
     */
    public function getSeo()
    {
        return $this->seo;
    }

    /**
     * @param $string
     * @return mixed
     * @author Joachim Doerr
     */
    public static function createhash($string) {
        $string = str_replace(array('ä','ü','ö','ß','Ä','Ü','Ö'),array('ae','ue','oe','ss','Ae','Ue','Oe'),$string);
        $string = str_replace(array("&",'__'),array('','_'),preg_replace('/[^a-z0-9&]/i',"_",$string));
        return $string;
    }
}