<?php

namespace Botble\Base\Events;

use Illuminate\Queue\SerializesModels;

class RenderingSiteMapEvent extends Event
{
    use SerializesModels;

    /**
     * Get the channels the event should be broadcast on.
     *
     * @return array
     * @author DGL Custom
     */
    public function broadcastOn()
    {
        return [];
    }
}
