@extends('front.layouts.app')

@section('custom_css')
    <style>
        .demo-card-event.mdl-card {
            width: 256px;
            height: 256px;
            background: #3E4EB8;
        }
        .demo-card-event > .mdl-card__actions {
            border-color: rgba(255, 255, 255, 0.2);
        }
        .demo-card-event > .mdl-card__title {
            align-items: flex-start;
        }
        .demo-card-event > .mdl-card__title > h4 {
            margin-top: 0;
        }
        .demo-card-event > .mdl-card__actions {
            display: flex;
            box-sizing:border-box;
            align-items: center;
        }
        .demo-card-event > .mdl-card__actions > .material-icons {
            padding-right: 10px;
        }
        .demo-card-event > .mdl-card__title,
        .demo-card-event > .mdl-card__actions,
        .demo-card-event > .mdl-card__actions > .mdl-button {
            color: #fff;
        }
    </style>
@endsection


@section('content')
    <main class="mdl-layout__content">
        <div class="heading-title">
            <div class="title-word">专辑</div>
        </div>
        <div class="mdl-grid">
            @forelse($collections as $collection)
                <div class="mdl-cell mdl-cell--3-col">
                <div class="post-module">
                    <!-- Thumbnail-->
                    <div class="thumbnail">
                        {{--<div class="date">
                            <div class="day">27</div>
                            <div class="month">Mar</div>
                        </div>--}}<img src="{{$collection->cover_img}}"/>
                    </div>
                    <!-- Post Content-->
                    <div class="post-content">

                        <a href="{{route('collection.post',['col_id'=>$collection->id,'post_id'=>$collection->getFirstPost()?$collection->getFirstPost()->id:null])}}">
                       {{-- <div class="category">Laravel</div>--}}
                        <h3 class="title">{{$collection->name}}</h3>
                        <h2 class="sub_title">{{$collection->sub_name}}</h2>
                        <p class="description">{{$collection->desc}}</p>
                            <div class="post-meta"><span class="timestamp"><i class="icon md-mood" aria-hidden="true"></i> By Woody</span><span class="comments"> <i class="icon md-calendar-note" aria-hidden="true"> </i><a href="#"> {{$collection->created_at->diffForHumans()}}</a></span></div>
                         </a>
                    </div>
                </div>
                </div>
                @empty
            @endforelse

        </div>

    </main>

@endsection

@section('custom_js')

@endsection
