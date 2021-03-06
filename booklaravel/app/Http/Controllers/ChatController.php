<?php

namespace App\Http\Controllers;

use App\Message;
use App\User;
use App\Group;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Pusher\Pusher;

class ChatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = Auth::user()->id;
        $user = DB::table('users')
            ->select(array('groups.group_id', 'groups.teacher_id', 'groups.teacher_name','groups.classroom', 'users.avatar', 'groups.student_id', DB::raw('COUNT(messages.is_read) as unread')))
            ->join('groups', 'groups.student_id', '=', 'users.id')
            ->join('messages', 'messages.to', '=', 'groups.group_id')
            ->where(['student_id'=> $id])
            ->orWhere(['teacher_id'=> $id])
            ->groupBy('groups.group_id', 'groups.teacher_id', 'groups.teacher_name','groups.classroom', 'users.avatar', 'groups.student_id')
            ->get();

        //check if the same group_id
        $i = 0;
        $users = [];
        $array = [];
        foreach ($user as $key=>$value){
            $array[$i] = $value->group_id;
            if($key >= 1){
                if($value->group_id == $array[$i-1]){
                    $i++;
                } else {
                    $users[] = $value;
                    $i++;
                }
            } else {
                $users[] = $value;
                $i++;
            }
        }

        return view('messages/chat', ['users' => $users]);
    }

    public function getMessage($user_id)
    {
        // Make read all unread message
        Message::where(['from' => $user_id])->update(['is_read' => 1]);

        // Get all message from selected user
        $messages = DB::table('messages')
            ->select('messages.*', 'users.name', 'users.avatar')
            ->join('users', 'messages.from', '=', 'users.id')
            ->where('to', $user_id)
            ->get();

        return view('messages.index', ['messages' => $messages]);
    }

    public function sendMessage(Request $request)
    {
        $from = Auth::id();
        $to = $request->receiver_id;
        $message = $request->message;

        $data = new Message();
        $data->from = $from;
        $data->to = $to;
        $data->message = $message;
        $data->is_read = 0; // message will be unread when sending message
        $data->save();

        // pusher
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true
        );

        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );

        $data = ['from' => $from, 'to' => $to]; // sending from and to user id when pressed enter
        $pusher->trigger('my-channel', 'my-event', $data);
    }
}
