<?php

namespace Imanghafoori\HeyMan\Plugins\WatchingStrategies\Views;

use Illuminate\Contracts\View\Factory as ViewFactory;

class ViewEventListener
{
    public function startWatching($chainData)
    {
        foreach ($chainData as $value => $callbacks) {
            foreach ($callbacks as $key => $cb) {
                resolve(ViewFactory::class)->creator($value, $cb[0]);
            }
        }
    }
}
