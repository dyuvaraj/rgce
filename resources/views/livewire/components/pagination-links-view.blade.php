<div>
@if ($paginator->hasPages())
<nav aria-label="...">
  <ul class="pagination">
    @if ($paginator->onFirstPage())
        <li class="page-item disabled">
            <a class="page-link" href="{{ $paginator->previousPageUrl() }}">Previous</a>
        </li>
    @else
        <li class="page-item">
            <a class="page-link" href="{{ $paginator->previousPageUrl() }}">Previous</a>
        </li>
    @endif
    
    @for ($page = 1; $page <= round($paginator->total()/$paginator->perPage()); $page++)
        @if ($paginator->currentPage() == $page)
            <li class="page-item active" aria-current="page">
                <a class="page-link" href="{{ url(Request::path()) }}?page={{$page}}">{{ $page }}</a>
            </li>
        @else
            <li class="page-item"><a class="page-link" href="{{ url(Request::path()) }}?page={{$page}}">{{ $page }}</a></li>
        @endif        
    @endfor

    @if ($paginator->hasMorePages())        
        <li rel="next" class="page-item" wire:click="nextPage">
            <a class="page-link" href="{{$paginator->nextPageUrl()}}">Next</a>
        </li> 
    @else
        <li class="page-item disabled">
            <a class="page-link" href="#">Next</a>
        </li> 
    @endif
    
  </ul>
</nav>
@endif
</div>