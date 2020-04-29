<div class="message-wrapper">
    <ul class="messages">
        @foreach($messages as $message)
            <li class="message clearfix">
                {{--if message from id is equal to auth id then it is sent by logged in user --}}
                <div class="{{ ($message->from == Auth::id()) ? 'sent' : 'received' }} check_avatar">
                    <table class="media-left">
                        <td class = "received1">
                            <img src="{{ $message->avatar }}" alt="" class="media-object">
                        </td>
                        <td style= "width:10px"></td>
                        <td>
                            <p class="fontPS">{{ $message->name }}</p>
                            <p class="fontPL">{{ $message->message }}</p>
                            <p class="date fontPS">{{ date('d M y, h:i a', strtotime($message->created_at)) }}</p>
                        </td>
                        <td class = "sent1">
                            <img src="{{ $message->avatar }}" alt="" class="media-object">
                        </td>
                    </table>
                </div>
            </li>
        @endforeach
    </ul>
</div>

<div class="input-text">
    <input type="text" name="message" class="submit">
</div>
