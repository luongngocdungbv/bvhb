<?php

namespace Botble\ACL\Listeners;

use Auth;
use Botble\ACL\Events\RoleAssignmentEvent;
use Botble\ACL\Repositories\Interfaces\UserInterface;

class RoleAssignmentListener
{
    /**
     * @var UserInterface
     */
    protected $userRepository;

    /**
     * RoleAssignmentListener constructor.
     * @author DGL Custom
     * @param UserInterface $userRepository
     */
    public function __construct(UserInterface $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    /**
     * Handle the event.
     *
     * @param  RoleAssignmentEvent $event
     * @return void
     * @author DGL Custom
     * @throws \Exception
     */
    public function handle(RoleAssignmentEvent $event)
    {
        info('Role ' . $event->role->name . ' assigned to user ' . $event->user->getFullName());
        $permissions = $event->role->permissions;
        if ($event->user->super_user) {
            $permissions['superuser'] = true;
        } else {
            $permissions['superuser'] = false;
        }
        if ($event->user->manage_supers) {
            $permissions['manage_supers'] = true;
        } else {
            $permissions['manage_supers'] = false;
        }

        $this->userRepository->update([
            'id' => $event->user->id,
        ], [
            'permissions' => json_encode($permissions),
        ]);

        cache()->forget(md5('cache-dashboard-menu-' . Auth::user()->getKey()));
    }
}
